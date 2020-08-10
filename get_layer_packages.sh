#!/bin/bash

#From: https://medium.com/@robsanna/use-pandas-in-aws-lambda-the-ultimate-guide-ffc1f5a6cd4e



export PKG_DIR="python"
export OUTPUTZIPFILE="myPython37-pandas-pytz-numpyzip"

rm -rf ${PKG_DIR} && mkdir -p ${PKG_DIR}

docker run --rm -v $(pwd):/foo -w /foo lambci/lambda:build-python3.7 \
    pip3 install -r requirements.txt -t ${PKG_DIR}

echo '... zip the package: zip -r "myPython36-pandas-pytz-numpy.zip python '

zip -r $OUTPUTZIPFILE $PKG_DIR

