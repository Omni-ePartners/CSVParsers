Get-ChildItem -Path 'C:\path\to\csv\folder' -Filter '*.csv' | ForEach-Object {
  $brandName = $_.BaseName.split('_', 3)[0]

  Import-Csv $_ | Select-Object @{Name='Brand';Expression={"$brandName"}}, "ASIN","Submitted Cases", "Accepted Cases", "Received Cases" | 
  Export-Csv "$($_.Directory)\$($_.BaseName)-2.csv" -Encoding UTF8 -NoTypeInformation
}
