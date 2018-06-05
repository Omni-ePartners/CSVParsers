Get-ChildItem -Path 'C:\path\to\csv\folder' -Filter '*.csv' | ForEach-Object {
    Get-Content $_ | Select -Skip 1 | Out-File "$($_.Directory)\$($_.BaseName)-1.csv" -Encoding UTF8
}
Get-ChildItem -Path 'C:\path\to\csv\folder' -Filter '*-1.csv' | ForEach-Object {
  $brandName = $_.BaseName.split('_', 2)[0]
  Import-Csv $_ | Select-Object *,@{Name='Brand Name';Expression={"$brandName"}}  | Export-Csv "$($_.Directory)\$($_.BaseName)-2.csv" -Encoding UTF8 -NoTypeInformation
}
