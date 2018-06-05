# Operational Performance

This script will parse a CSV file format collected from the Vendor Central - Operational Performance report metrics.

## File format

No specific naming convention required but the script expects the CSV to contain the columns:

``NO CARTON CONTENT LABEL", "NO CARTON CONTENT LABEL Amount", "PO ON-TIME ACCURACY", "PO ON-TIME ACCURACY Amount", "ASN ACCURACY", "ASN ACCURACY Amount", "Brand", "Portal", "Region", "Date Updated"``

in any order, the script will then re-arrange the CSV into this order above, to modify you will need to change the columns in the script to match your expected output.


## Output

Parsed files will be in the chosen directory ``C:\path\to\csv\folder`` and will maintain the same name with a ``-2`` appended to the end of the file name.
