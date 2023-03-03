#!/bin/bash

set -e
set -x

mkdir -p /dos/drive_{c,d,e,f,g,y}
cp -r /usr/share/dosemu/drive_z/bin /dos/drive_y/DOS
mkdir /dos/drive_y/SCRIPTS
mkdir -p  /root/.config/dosbox-x
cp /usr/share/dosbox-x/dosbox-x.reference.conf /root/.config/dosbox-x/dosbox-x-2022.12.26.conf
DOSBOXCONF="`dosbox-x -printconf`"
mv "$DOSBOXCONF" /dos/dosbox-x.conf
for ASDF in c d e f g h y; do 
  echo "mount $ASDF /dos/drive_$ASDF" >> /dos/dosbox-x.conf
done
echo 'path %PATH%;Y:\DOS;Y:\SCRIPTS' >> /dos/dosbox-x.conf

# Fix an issue with the VNC console
sed -i 's/usescancodes=true/usescancodes=false/' /dos/dosbox-x.conf

# Convenience aliases
cd /usr/local/bin
#ln -s /usr/bin/vim.tiny vim
#ln -s /usr/bin/vim.tiny vi
