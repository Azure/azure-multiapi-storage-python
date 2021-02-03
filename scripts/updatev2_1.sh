#!/bin/bash

# This scripts pull the latest Azure Storage SDK and update this multiapi package accordingly.

workdir=$(cd $(dirname $0); pwd)
cd $workdir

if [ ! -d venv ]; then
    python -m virtualenv venv
    . venv/bin/activate
    pip install azure-storage-file-datalake azure-storage-blob azure-storage-file-share azure-storage-queue -U
fi



src_root=$(cd venv/lib/$(ls venv/lib); pwd)/site-packages/azure/storage


for service in blob fileshare filedatalake queue; do
    ver=$(find venv -name 'version.py' | grep $service | xargs grep 'VERSION')
    ver=${ver#VERSION = \"}
    if [ -z "$ver" ]; then
        ver=$(find venv -name '_configuration.py' | grep $service | xargs grep 'version' | head -n 1)
        ver=${ver#*self.version = \"}
    fi
    ver=${ver%\"*}
    ver=${ver//-/_}

    tgt=../azure/multiapi/storagev2/$service/v$ver

    mkdir -p $tgt
    src=$src_root/$service
    cp -avr $src/. $tgt

    for f in `find $tgt -name '*.py'`; do
        echo Updating $f
        # remove BOM
        sed -i '1s/^\xEF\xBB\xBF//' $f

        if [ "$service" = "filedatalake" ]; then
            echo "filedatalake"
            default="2019_07_07"
            if [[ "$ver" > "$default" ]]; then
                default=$ver
            fi

            sed -i "s/from azure.storage.blob import/from azure.multiapi.storagev2.blob.v$default import/g" $f
            sed -i "s/from azure.storage.blob./from azure.multiapi.storagev2.blob.v$default./g" $f
        fi

        namespace=azure.storage.$service
        sed -i "s/from $namespace./from ./g" $f
    done

done
