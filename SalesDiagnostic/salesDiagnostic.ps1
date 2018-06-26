Get-ChildItem -Path 'C:\path\to\csv' -Filter '*.csv' | ForEach-Object {
    Get-Content $_ | Select -Skip 1 | Out-File "$($_.Directory)\$($_.BaseName)_1.csv" -Encoding UTF8
}
Get-ChildItem -Path 'C:\path\to\csv' -Filter '*_1.csv' | ForEach-Object {
  $brandName = $_.BaseName.split('_', 5)[0]
  $region = $_.BaseName.split('_', 5)[3]
  $date = (Get-Date).ToString().split(' ', 2)[0]
    if($region -match "US") {
    $currency = "USD"
  } else {
    $currency = "CAD"
  }
  Import-Csv $_ | Select-Object *,@{Name='Brand Name';Expression={"$brandName"}},@{Name='Region';Expression={"$region"}},@{Name='Date_Updated';Expression={"$date"}},@{Name='Currency_Type';Expression={"$currency"}}  | Export-Csv "$($_.Directory)\$($_.BaseName)_2.csv" -Encoding UTF8 -NoTypeInformation
}

Get-ChildItem -Path 'C:\path\to\csv' -Filter *_1_2.csv | Select-Object -ExpandProperty FullName | Import-Csv | Export-Csv Sales_Diagnostic_Merged.csv -NoTypeInformation -Append -Encoding UTF8