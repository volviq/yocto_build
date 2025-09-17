git clone git://git.yoctoproject.org/poky

cd poky

git checkout scarthgap
git pull

source oe-init-build-env

bitbake core-image-full-cmdline
echo "Done"
