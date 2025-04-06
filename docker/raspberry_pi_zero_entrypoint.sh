# Get the hardware
# raspberry pi zero w 2 with 32gb sd

# Install the OS, 32 bit bookworm lite (no desktop)
# Use the Imager to also set up a hostname (bike) and user (bike) with your ssh key.

# Get file from nightly as per https://github.com/cagnulein/qdomyos-zwift/issues/3361#issuecomment-2781392388

# Get it to the bike 
``scp ..\..\Downloads\raspberry-pi-binary.zip bike@192.168.1.51:``

# On the bike get the run-time dependencies
``
bike@bike:$
sudo su -
```

root@bike:
```
# apt update && apt upgrade -y     && apt install --no-install-recommends -y         libqt5bluetooth5         libqt5widgets5
         libqt5positioning5         libqt5xml5         libqt5charts5         qt5-assistant         libqt5networkauth5         libqt5websockets5
  qml-module*         libqt5texttospeech5         libqt5location5-plugins         libqt5multimediawidgets5         libqt5multimedia5-plugins         l
ibqt5multimedia5         qml-module-qtquick-controls2         libqt5location5         bluez         dbus         tigervnc-standalone-server         ti
gervnc-tools         libgl1-mesa-dri         xfonts-base         x11-xserver-utils         tigervnc-common         net-tools     && rm -rf /var/lib/ap
t/lists/*
```
