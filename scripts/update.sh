#!/bin/bash

# This scripts pull the latest Azure Storage SDK and update this multiapi package accordingly.

workdir=$(cd $(dirname $0); pwd)
cd $workdir

if [ ! -d venv ]; then
    python -m virtualenv venv
    . venv/bin/activate
    pip install azure-storage-blob azure-storage-file azure-storage-queue azure-storage-common
fi

ver=$(find venv -name '_constants.py' | grep blob | xargs grep 'X_MS_VERSION')
ver=${ver#X_MS_VERSION = \'}
ver=${ver%\'}
ver=${ver//-/_}

src_root=$(cd venv/lib/$(ls venv/lib); pwd)/site-packages/azure/storage
tgt=../azure/multiapi/storage/v$ver
mkdir -p $tgt

for service in blob file queue common; do
    src=$src_root/$service
    cp -R $src $tgt
    for f in `find $tgt/$service -name '*.py'`; do
        echo Updating $f
        # remove BOM
        sed -i '1s/^\xEF\xBB\xBF//' $f

        if [ "$service" != "common" ]; then
            # make relative reference to azure.storage.common
            sed -i 's/from azure.storage.common./from ..common./g' $f
        else
            # make relative reference to azure.storage.common
            sed -i 's/from azure.storage.common./from ./g' $f
            sed -i 's/from azure.storage./from ./g' $f
        fi
    done
done
