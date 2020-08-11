#!/bin/bash

#From: https://medium.com/@robsanna/use-pandas-in-aws-lambda-the-ultimate-guide-ffc1f5a6cd4e



export PKG_DIR="python"
export OUTPUTZIPFILE="myPython37-pandas-pytz-numpy.bson.zip"

rm -rf ${PKG_DIR} && mkdir -p ${PKG_DIR}

docker run --rm -v $(pwd):/foo -w /foo lambci/lambda:build-python3.7 \
    pip3 install -r requirements.txt -t ${PKG_DIR}

cp requirements.txt ${PKG_DIR}

echo '... zip the package: zip -r "zipfilename.zip python '

zip -r ${OUTPUTZIPFILE} ${PKG_DIR}

pip list --path ./${PKG_DIR}

