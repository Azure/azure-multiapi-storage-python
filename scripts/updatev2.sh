#!/bin/bash

# This scripts pull the latest Azure Storage SDK and update this multiapi package accordingly.

workdir=$(cd $(dirname $0); pwd)
cd $workdir

if [ ! -d venv ]; then
    python -m virtualenv venv
    . venv/bin/activate
    pip install azure-storage-file-datalake azure-storage-blob azure-storage-file-share azure-storage-queue
fi

ver='12_0'

src_root=$(cd venv/lib/$(ls venv/lib); pwd)/site-packages/azure/storage
tgt=../azure/multiapi/storagev2/v$ver
mkdir -p $tgt

for service in blob fileshare filedatalake queue; do
    src=$src_root/$service
    cp -R $src $tgt

    for f in `find $tgt/$service -name '*.py'`; do
        echo Updating $f
        # remove BOM
        sed -i '1s/^\xEF\xBB\xBF//' $f

        if [ "$service" = "filedatalake" ]; then
            # make relative reference to azure.storage.blob
            path=$(realpath --relative-to=$f $tgt/$service)
            dots=$(echo ${path//".."/"."} | tr -d /)
            sed -i 's/from azure.storage.blob import/from '$dots'.blob import/g' $f
            sed -i 's/from azure.storage.blob./from '$dots'.blob./g' $f
        fi
    done

done