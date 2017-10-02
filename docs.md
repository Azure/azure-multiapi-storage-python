### Packaging
Create the package (both source and whl) by running:
```
python setup.py sdist
python setup.py bdist_wheel
```

### Publishing

Modify the version number in `setup.py` and modify changelog in README.rst then create a pull request for the changes.

#### Release with Travis CI

Once the changes have been merged to master, create a tag on GitHub for that commit.
Follow the format of other releases in the release notes you create on GitHub.

A Travis CI build will be kicked-off that will publish to PyPI.

#### Release manually 

Once the changes have been merged to master, continue with the rest of the release.

```
git clone https://github.com/Azure/azure-multiapi-storage-python
cd azure-multiapi-storage-python
python setup.py sdist bdist_wheel
```

```
pip install twine
```

```
export TWINE_REPOSITORY_URL=https://upload.pypi.org/legacy/
export TWINE_USERNAME=A_USERNAME
export TWINE_PASSWORD=A_SECRET
twine upload dist/*
```

### Installing

Once wheel is created:
```
pip install <path-to-wheel>
```

### Handling changes to Storage SDK
When there are changes made in https://github.com/Azure/azure-storage-python, they should be added here also.

If the change is for a new API version, create the vYYYY_MM_DD directory and copy the code.  
Finally, replace the absolute imports to `azure.storage` to be relative.

If there is a change but the API version does not change, find the appropriate API version directory, delete the old code and replace.  
Finally, replace the absolute imports to `azure.storage` to be relative.

