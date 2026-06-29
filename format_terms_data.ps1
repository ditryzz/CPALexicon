$path = 'terms-data.js'
$text = Get-Content -Raw -LiteralPath $path
$text = $text.Replace('`r`n', [Environment]::NewLine)
$text = $text.Replace('}, { category', '},' + [Environment]::NewLine + [Environment]::NewLine + '  { category')
$text = $text.Replace(', term:', ',' + [Environment]::NewLine + '    term:')
$text = $text.Replace(', definition:', ',' + [Environment]::NewLine + '    definition:')
Set-Content -LiteralPath $path -Value $text -Encoding UTF8
