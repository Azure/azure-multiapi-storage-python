### Packaging
Create the package by running:
```
python setup.py bdist_wheel
```

### Publishing
You are now ready to publish the package to PyPI.

There are many ways to publish but here is a template using Twine.
```bash
echo "[distutils]
index-servers =
    cli-pypi

[cli-pypi]
repository: <PYPI_REPO_URL>
username: <PYPI_REPO_USERNAME>
password: <PYPI_REPO_PASSWORD>
" > ~/.pypirc

pip install twine
# Uploads the packages in dist/ to the server referred to by cli-pypi.
twine upload -r cli-pypi dist/*
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

