# Setup Guide for Raspberry Pi Zero W 2 from Nightlies.
(!) Note this does not work due to issues reported on https://github.com/cagnulein/qdomyos-zwift/issues/3361 


## 1. Get the Hardware
- Raspberry Pi Zero W 2
- 32GB microSD card

## 2. Install the OS
- Use Raspberry Pi Imager to install **32-bit Bookworm Lite (no desktop)**.
- During imaging:
  - Set hostname to `bike`
  - Set username to `bike`
  - Add your SSH key for secure access.

## 3. Download the Binary
- Get the file from the nightly build as per the GitHub comment:  
  [https://github.com/cagnulein/qdomyos-zwift/issues/3361#issuecomment-2781392388](https://github.com/cagnulein/qdomyos-zwift/issues/3361#issuecomment-2781392388)

## 4. Transfer to the Pi

```bash
scp Downloads/raspberry-pi-binary.zip bike@192.168.1.51:
```

## 5. Login to the Pi
```
ssh bike@192.168.1.51
```

### 6. Become root
```
sudo su -
```

### 7. Run the following to install required packages:

```
apt update && apt upgrade -y && apt install --no-install-recommends -y \
    libqt5bluetooth5 \
    libqt5widgets5 \
    libqt5positioning5 \
    libqt5xml5 \
    libqt5charts5 \
    qt5-assistant \
    libqt5networkauth5 \
    libqt5websockets5 \
    qml-module-* \
    libqt5texttospeech5 \
    libqt5location5-plugins \
    libqt5multimediawidgets5 \
    libqt5multimedia5-plugins \
    libqt5multimedia5 \
    qml-module-qtquick-controls2 \
    libqt5location5 \
    bluez \
    dbus \
    tigervnc-standalone-server \
    tigervnc-tools \
    libgl1-mesa-dri \
    xfonts-base \
    x11-xserver-utils \
    tigervnc-common \
    net-tools && rm -rf /var/lib/apt/lists/*
```

```
sudo apt install libqt5charts5 libqt5bluetooth5 libqt5multimedia5 libqt5websockets5 libqt5texttospeech5 libqt5xml5 libqt5positioning5 qml-module-qtcharts libqt5networkauth5


```


### 8. Extract the binary you downloaded from the nightly

```
unzip raspberry-pi-binary.zip
```

### 9. Run it
```
./qdomyos-zwift-32bit -no-gui -heart-service

```

### 10 follow other instructions to set up as a service
 See https://github.com/cagnulein/qdomyos-zwift/blob/master/docs/10_Installation.md#automate-qdomyos-zwift-at-startup
