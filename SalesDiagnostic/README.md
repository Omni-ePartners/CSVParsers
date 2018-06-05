# Sales Diagnostic

This script will parse a CSV file format collected from the ARA portal on the following filter:

// TODO: figure out filter

## File format

The naming convention required will be ``BrandName_SalesDiagnostic.csv`` the script will parse the brand name from the file name you specify and
place that in a new column called ``Brand`` appended to the end of the CSV headers and remove the first row placed there by ARA portal.


## Output

File Format:

``ASIN, Product Title, Shipped COGS, Shipped COGS - %, Shipped COGS - Prior Period, Shipped COGS - Last Year, Shipped Units, Shipped Units - % of Total, Shipped Units - Prior Period, Shipped Units - Prior Period, Shipped Units - Last Year, Customer Returns, Free Replacements, Brand ``

Parsed files will be in the chosen directory ``C:\path\to\csv\folder`` and will maintain the same name with a ``-1-2`` appended to the end of the file name.
