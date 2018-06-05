Get-ChildItem -Path 'C:\path\to\csv\folder' -Filter '*.csv' | ForEach-Object {
  
  Import-Csv $_ | Select-Object "NO CARTON CONTENT LABEL", "NO CARTON CONTENT LABEL Amount", "PO ON-TIME ACCURACY", "PO ON-TIME ACCURACY Amount", "ASN ACCURACY", "ASN ACCURACY Amount", "Brand", "Portal", "Region", "Date Updated" | 
  Export-Csv "$($_.Directory)\$($_.BaseName)-2.csv" -Encoding UTF8 -NoTypeInformation
}
