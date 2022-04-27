image_version=`cat version.yml`
echo ${image_version}
# set travis env to get docker image version
travis env set IMAGE_VERSION ${image_version}
