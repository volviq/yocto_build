#!/bin/bash
git clone git://git.yoctoproject.org/poky

cd poky

git checkout scarthgap
git pull

echo 'INHERIT += "rm_work"' >> build/conf/local.conf
source oe-init-build-env

bitbake core-image-full-cmdline
echo "Done"

du -hs * | sort -h
df -h
