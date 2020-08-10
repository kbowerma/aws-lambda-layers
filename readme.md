# Instructions for creating Lambda layer to support supplemental libraries

1. create a requirements.txt which may or may not include version numbers
2. edit get_layer_packages.sh and set the python version in line 12
3. you may need to make this script executable with `chmod a+x get_layer_packages.sh`
4. run the script `./get_layer_packages.sh` which will download the corresponding python image and run pip against your requirements.txt and output to the **python** directory.
5. zip up the python dir `zip -r myPython37-x.zip python`
6. Upload this zip file into a new layer.

## Manifests

### myPython36-pandas-pytz-numpy.

Package    |     Version
--------------- |-------
numpy          | 1.19.1
pandas          |1.1.0
python-dateutil |2.8.1
pytz            |2020.1
six            | 1.15.0

### myPython37-pandas-pytz-numpy.zip
Package     |    Version
--------------- | -------
numpy          | 1.19.1
pandas          |1.1.0
python-dateutil |2.8.1
pytz            |2020.1
six             |1.15.0

## Reference:

1. Michelle Lee, _Alloy_, 6/9/2020 [Deploying AWS Lambda Layers with Pandas for Data Science](https://blog.alloy.co/deploying-aws-lambda-layers-with-pandas-for-data-science-38fe37a44a81)
2. Phil Massie, _Towards Data Science_ 11/19/2019 [serverless ML](https://towardsdatascience.com/serverless-ml-3184c9c45f93)
3. Roberto Sannazzaro, _Medium_ 4/21/20 [Use Pandas in AWS Lambda: The Ultimate Guide](https://medium.com/@robsanna/use-pandas-in-aws-lambda-the-ultimate-guide-ffc1f5a6cd4e)
