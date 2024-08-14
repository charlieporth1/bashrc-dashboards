# bashrc-dashboards

## Summary
Bash RC file add-ons for dashboard screens for server racks and such.
Best used with any 5 inch raspberry pi display with HDMI
Display Used [5 Inch HDMI Touch Screen Display](https://www.amazon.com/Touchscreen-Raspberry-Compatible-Raspbian-RetroPie/dp/B091FYFNV8/ref=sr_1_13?dib=eyJ2IjoiMSJ9.VkxTnEipszQPqFT773lF7lXBpwpk66O0iVZP7S0Sis74gPdv7T7JD_5q1WE-_fXws_jE78B5BQIVssaqjFz8iTnopADxRx9JzDZGgbZ-l5FHIWEBofz26T25V9HnX3PWMToFNrp6c3qxBpp1usB4aaytpWyNe1A2Aae9luItzNLiK6_DOmWAtfBrDD6gaIF2YlXiWX7_wzS_wNj4Mqc_rNwJo7q-hI3KvYXPsqg9q3k.OacPaJoHjZaP74MIZzVdPHlipfH3XfUYfGCIA2g-o3k&dib_tag=se&keywords=5%2Binch%2Braspberry%2Bpi%2Bdisplay&qid=1723652831&sr=8-13&th=1)


## Install

### Notes
You may need sudo in front of these cmds
sudo was not included because of some distros do no include it

<br/>
<br/>

Step #1
```
apt install -y mingetty
```
Step #2

```
mkdir -p /etc/systemd/system/getty@tty1.service.d

```
Step #3
````
echo '''
[Service]
ExecStart=
ExecStart=-/sbin/mingetty --autologin root --noclear tty1
''' | tee /etc/systemd/system/getty@tty1.service.d/override.conf
```
Step #4
```
echo <any script in this dir> | tee -a ~/.bashrc
```
Finaily
```
reboot
```
