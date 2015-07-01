#!/bin/bash

# Does the user want the latest version
if [ -z "$EDGE" ]; then
  echo "Bleeding edge not requested"
else
  apt-get install -qy git
  rm -rf /opt/mylar
  git clone https://github.com/evilhero/mylar.git -b development /opt/mylar/
  chown -R nobody:users /opt/mylar/
fi
