"""
    Script to test serial devices
"""

from pylibftdi import Device, Driver, INTERFACE_B

#print Driver().list_devices()
with Device(mode='t',interface_select=INTERFACE_B) as dev:
    dev.baudrate = 115200

    # Send a read command to the board
    dev.write('R 0 4\r\n')

    result = ""
    while 1:
        # This is a non-blocking read (!!!)
        result += dev.read(1)
        print(repr(result))