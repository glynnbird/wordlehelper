#!/bin/bash

# work out which combination of platform/arch we're running on
echo "Operating system"
PLATFORM=`echo "console.log(process.platform)" | node`
echo $PLATFORM
echo "Arch"
ARCH=`echo "console.log(process.arch)" | node`
echo $ARCH

# build frontend
echo "Building frontend 🏢"
cd frontend
#rm package-lock.json
npm ci
npm run generate
mv dist ../
cd ..

