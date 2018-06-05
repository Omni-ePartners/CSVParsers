# Purchase Order Sales to Amazon

This script will parse a CSV file format collected from the Vendor Central - Purchase Orders on the following filter:

``ship window end : previous month`` i.e.  if you are currently in June it will pull all purchase orders between ``5/1-5/31``

## File format

The naming convention required will be ``BrandName_Region_PurchaseOrders.csv`` or ``BrandName_Region_PurchaseOrders-History.csv`` the script will parse the brand name and region from the file name you specify and place that in new columns called ``BRAND`` and ``Region`` and also generate ``Portal, Date Updated, Currency Type`` to append to the end of the CSV headers.

## Output

Output Format:

``PO, Vendor, Ordered On, Ship to location, Ship window start, Ship window end, Total Cases, Total Cost, BRAND, Portal, Region, Date Updated, Currency Type ``

Parsed files will be in the chosen directory ``C:\path\to\csv\folder`` and will maintain the same name with a ``-2`` appended to the end of the file name.
