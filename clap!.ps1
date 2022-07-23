<#
   clap!

   Remove spaces between Chinese characters. Change punctuations after Chinese characters.

   Take input from clipboard and return result to clipboard

#>

$t = Get-Clipboard ;

$t = $t -replace ' ,', "，"
$t = $t -replace '(\p{IsCJKUnifiedIdeographs}) ,', '$1，'
$t = $t -replace '\( (\p{IsCJKUnifiedIdeographs})', '($1'
$t = $t -replace '(\p{IsCJKUnifiedIdeographs}) ', '$1'
$t = $t -replace 'Ｉ', 'I'
$t = $t -replace 'Ｖ', 'V'
$t = $t -replace 'Ⅵ', 'VI'
$t = $t -replace '[ ]*/[ ]*', '/'
$t = $t -replace '([0-9]+)[ ]*圯[ ]*([0-9]*)/', '$1/$2/'
#$t = $t -replace '([0-9]*)[ ]*/[ ]*([ABCDE][0-9]+)/[ ]*([IV ]+)[ ]*/[ ]*GPAL[ ]*/[ ]*([0-9]+)', '$1/$2/GPAL/$3'
$t = $t -replace 'n,0', 'n.º'
$t = $t -replace 'Sr•', 'Srª' 
# done
Set-Clipboard $t