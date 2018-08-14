::Examples with arithmetic and comparisons using Set /a and If
@Echo off
SetLocal
Set /a DaysNotWeek="365-(52*7)"
Echo The number of days not in a whole week is: %DaysNotWeek%
Set /a eleven=11
Set /a comp="~eleven"
Echo The two's complement negation of %eleven% is %comp%
:: note that set /a doesn't require the %% around envars if within ""
Echo What is (13^<^<4)/14^+99^?
:: Note the escape chars ^
Set /a "(13<<4)/14+99"
:: The above command is silent in a batch file, but provides an answer in terminal
Set /a ans="(13<<4)/14+99"
Echo %ans%

Rem now let's do some conditional stuff
set /a somenum=17
set /a isodd="somenum%%2"
:: here I'm taking the modulus of somenum and 2
:: in batch files, for some reason you need to use two % signs; in cmd, you only need one
if %isodd% EQU 1 (echo %somenum% is odd) else (echo %somenum% is even)
echo %somenum% and %isodd%

set /a somenum=920
set /a isodd="somenum%%2"
if %isodd% EQU 1 (echo %somenum% is odd) else (echo %somenum% is even)
echo %somenum% and %isodd%

EndLocal