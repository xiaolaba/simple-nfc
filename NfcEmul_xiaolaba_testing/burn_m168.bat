:: by xiaolaba

@echo off
set path=


set mcu=atmega168p

set main=main
set module_1=nfcemulator
set out=Simple_nfc_AVR_%mcu%
set ac=C:\WinAVR-20100110

::set F_CPU=13560000UL

path %ac%\bin;%ac%\utils\bin;%path%;

avrdude -c usbtiny -p %mcu% -U flash:w:%out%.hex":a
pause
:end