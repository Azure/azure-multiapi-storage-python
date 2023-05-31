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
1.2.0
++++++
* blob: Support v2022-11-02(12.16.0) and remove v2021-06-08

1.1.0
++++++
* fileshare: Support v2022-11-02(12.12.0b1) and remove v2021-06-08

1.0.0
++++++
* storageV1:
    - Keep only v2018-11-09, v2017-11-09, v2017-04-17, v2015-04-05
* blob:
    - Keep only v2021-08-06, v2021-06-08, v2019-07-07
* fileshare:
    - Keep only v2021-06-08, v2019-07-07
* filedatalake:
    - Keep only v2021-08-06, v2019-07-07
* queue:
    - Keep only v2018-03-28, Add v2019-07-07

0.10.0
++++++
* blob:
    - Support v2021-08-06(12.14.0b1)
* fileshare:
    - Features support and bug fix for v2021-06-08(12.10.0b1)
* filedatalake:
    - Support v2021-08-06(12.9.0b1)
* queue:
    - Support v2021-02-12(12.5.0b1)

0.9.0
+++++
* blob:
    - Support v2021-06-08(12.12.0)
* fileshare:
    - Support v2021-06-08(12.8.0)
* filedatalake:
    - Support v2021-06-08(12.7.0)
* queue: Feature for 2018-03-28(12.3.0)

0.8.0
+++++
* blob:
    - Support v2021-04-10(12.10.0)
* fileshare:
    - Support v2021-04-10(12.7.0)
* filedatalake:
    - Support v2020-10-02(12.6.0)
* queue: Minor fix for 2018-03-28(12.2.0)

0.7.0
+++++
* blob:
    - Support v2020-06-12(12.8.1)
    - Support v2020-10-02(12.9.0)
* fileshare:
    - Minor fix for 2020-04-08(12.5.0)
    - Support v2020-10-02(12.6.0)
* filedatalake:
    - Minor fix for 2020-02-10(12.3.1)
    - Support v2020-06-12(12.5.0)
* queue: Minor fix for 2018-03-28(12.1.6)

0.6.2
+++++
* Fix import issue for filedatalake

0.6.1
+++++
* Support undelete filesystem
* Fix minor issues in filedatalake

0.6.0
+++++
* blob(12.7.1): Support v2020-04-08
* fileshare(12.4.1): Support v2020-04-08
* filedatalake(12.2.2): Minor fix for 2020-02-10
* queue(12.1.5): Minor fix for 2018-03-28

0.5.2
+++++
* Fix minor issue in filedatalake

0.5.1
+++++
* Fix import issue for filedatalake

0.5.0
+++++
* Add new api support for azure-multiapi-storagev2:
    - blob
        - v2020-02-10
    - filedatalake
        - v2020-02-10
    - fileshare
        - v2020-02-10

0.4.1
+++++
* Add tags support for blob
* Add new api support for azure-multiapi-storagev2:
    - filedatalake
        - v2019-12-12
    - fileshare
        - v2019-12-12

0.4.0
+++++
* Add v2019-12-12 for azure.multiapi.storagev2.blob

0.3.7
+++++
* Fix syntax warning in python 3.8

0.3.6
+++++
* Fix package problem to include packages under the azure namespace

0.3.5
+++++
* Fix package problem: update prg_resources to pkgutil

0.3.4
+++++
* Remove __init__.py under azure

0.3.2
+++++
* Fix package issue

0.3.1
+++++
* Fix package issue

0.3.0
+++++
* Add support for storage data plane track2 SDK with new package azure-multiapi-storagev2:
    - blob
        - v2019-02-02
        - v2019-07-07
    - filedatalake
        - v2018-11-09
    - fileshare
        - v2019-02-02
        - v2019-07-07
    - queue
	- v2018-03-28

0.2.4
+++++
* Add new API version support:
    - 2018-11-09

0.2.3
+++++
* Add new API version support:
    - 2017-11-09 (from 1.2.0rc1 of azure-storage)

0.2.2
+++++
* Upgrade:
    - 2018-03-28 (from 1.3.0 to 1.3.1)

0.2.1
+++++
* Upgrade:
    - 2018-03-28 (from 1.1.0 to 1.3.0)

0.1.8
+++++
* Upgrade:
    - 2017-07-29 (from 0.37.1 to 1.1.0)

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
