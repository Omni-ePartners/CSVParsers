Get-ChildItem -Path 'C:\path\to\csv\folder' -Filter '*.csv' | ForEach-Object {
  $date = (Get-Date).ToString().split(' ', 2)[0]
  $brandName = $_.BaseName.split('_', 3)[0]
  $region = $_.BaseName.split('_', 3)[1]
  if($region -match "US") {
    $currency = "USD"
  } else {
    $currency = "CAD"
  }
  $csvImport = @(Import-Csv $_)
  if($csvImport.Length -gt 0)
  {
    Import-Csv $_ | Select-Object *,@{Name='BRAND';Expression={"$brandName"}},@{Name='Portal';Expression={"Vendor Central"}},@{Name='Region';Expression={"$region"}},@{Name='Date Updated';Expression={"$date"}},@{Name='Currency Type';Expression={"$currency"}}  | Export-Csv "C:\path\to\csv\folder\$($_.BaseName)-2.csv" -Encoding UTF8 -NoTypeInformation
  }
}
