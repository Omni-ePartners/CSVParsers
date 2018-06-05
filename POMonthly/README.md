# Purchase Orders Monthly

This script will parse a CSV file format collected from the Vendor Central - Purchase Orders on the following filter:

``ordered on : previous month`` i.e.  if you are currently in June it will pull all purchase orders between ``5/1-5/31``

## File format

The naming convention required will be ``BrandName_PurchaseOrders.csv`` the script will parse the brand name from the file name you specify and
place that in a new column called ``brand`` and remove all columns from the CSV except the format as below:

``Brand, ASIN, Submitted Cases, Accepted Cases, Received Cases``


## Output

Parsed files will be in the chosen directory ``C:\path\to\csv\folder`` and will maintain the same name with a ``-2`` appended to the end of the file name.
