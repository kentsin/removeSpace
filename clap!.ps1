<#
   clap!

   Remove spaces between Chinese characters. Change punctuations after Chinese characters.

   Take input from clipboard and return result to clipboard

#>

$t = Get-Clipboard ;

# Because of no \p{Han} in regex
#$t = $t -replace " ,", ",s"
$t = $t -replace "=", "__"
#$t = $t -replace "([a-z]),", "$1@_@"
#$t = $t -replace ",", "，"
#$t = $t -replace "@_@", ","
$t = $t -replace "([a-z]) ", "$1="
$t = $t -replace " ", ""
$t = $t -replace "=", "  "
$t = $t -replace "__", "="

# replace every thing that have 
# done
Set-Clipboard $t