Microsoft Azure Storage Client Library for Python - with Multi API version Support
==================================================================================

Handles multi-API versions of Azure Storage Data Plane originally from https://github.com/Azure/azure-storage-python.

**NOTE:**

- This is not an official Azure Storage SDK.

- It is used by https://github.com/Azure/azure-cli to support multiple API versions.

- The official Azure Storage SDK is at https://github.com/Azure/azure-storage-python.

- The official Azure CosmosDB Table SDK is at https://github.com/Azure/azure-cosmosdb-python/tree/master/azure-cosmosdb-table.

- **Please file issues at the appropriate repository above.**

Change Log
----------

0.1.7
+++++
* Upgrade:
    - 2017-04-17 (from 0.37.0 to 0.37.1)

0.1.6
+++++
* Integrate the latest Python Storage SDK as well as the CosmosDB table SDK

0.1.5
+++++
* Mark futures as optional using environment markers so pip will evaluate the dependencies late and not install futures on Python 3.

0.1.4
+++++
* Fix for sdist (source distribution) not including azure/__init__.py.

0.1.3
+++++
* Upgrade:
    - 2017-04-17 (from 0.35.1 to 0.35.2)

0.1.2
+++++
* Add new API version support:
    - 2017-04-17 (from 0.35.1 of azure-storage)

0.1.1
+++++
* Upgrade:
    - 2016-05-31 (from 0.34.3 of azure-storage)

0.1.0
+++++
* Initial release.  
* Supported API versions:  
    - 2016-05-31 (from 0.34.0 of azure-storage)
    - 2015-04-05 (from 0.30.0 of azure-storage)


Contribute Code
---------------

This project has adopted the `Microsoft Open Source Code of Conduct <https://opensource.microsoft.com/codeofconduct/>`__.

For more information see the `Code of Conduct FAQ <https://opensource.microsoft.com/codeofconduct/faq/>`__ or contact `opencode@microsoft.com <mailto:opencode@microsoft.com>`__ with any additional questions or comments.

If you would like to become an active contributor to this project please
follow the instructions provided in `Contribution License Agreement <https://cla.microsoft.com/>`__
