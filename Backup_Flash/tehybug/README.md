
# Admin Panel
http://192.168.1.1/admin.html

- used to change the API key and other values defaulted in the Main image 

# Esp-01  Flash On MacOS

- get flash size
 - esptool.py --port /dev/tty.usbserial-1420 flash_id

- Take a backup
 - esptool.py -b 115200 --port /dev/tty.usbserial-1420 read_flash 0x000000 0x100000 flash_1M.bin

- Erase Flash 
    - esptool.py --chip auto -b 115200 --port /dev/tty.usbserial-1420 erase_flash

- Program
  - esptool.py --port /dev/tty.usbserial-1420 --baud 115200 write_flash -fm dio --flash_size=detect 0x00000 flash_1M.bin
