# Product Catalog

This script will parse a CSV file format collected from the ARA - Product Catalog on the following filter:

``Distributor View: Manufacturing, Brand: Selected Brand``

## File format

The naming convention required will be ``BrandName_ProductCatalog.csv`` the script will parse the brand name from the file name you specify and
place that in a new column called ``Brand Name`` appended to the end of the CSV headers and remove the first row placed there by ARA portal.


## Output

File Format:

``ASIN, Product Title, Parent ASIN, ISBN-13, EAN, UPC, Release Date, List Price, Binding, Author / Artist, SITB enabled?, Apparel Size, Apparel Size Width, Product Group,  Replenishment Code, Replenishment Category, Model / Style Number, Color, Color Count, Brand Code, Brand, Publisher, Brand Name ``

Parsed files will be in the chosen directory ``C:\path\to\csv\folder`` and will maintain the same name with a ``-2`` appended to the end of the file name.
