#!/bin/bash
if [ ! -d "./src/ptvsd" ]
then
    echo 'Installing ptvsd module ...'
    pip install ptvsd --system -t ./src
fi
sam local invoke -e event.json "Demo" -d 5890 \
--env-vars=env.json \
--profile=sam-dev-deployer \
--region=eu-west-1 \
--config-file=samconfig.dev.toml \
--config-env=dev \
--parameter-overrides PythonDepPack1=arn:aws:lambda:eu-west-1:${AWS_ACCOUNT_ID}:layer:python37-dependency-pack-1-gs-layer:20 \
GoldenScentPyLayer=arn:aws:lambda:eu-west-1:${AWS_ACCOUNT_ID}:layer:golden-scent-python-package-layer:42 \
LambdaExeRole=arn:aws:iam::${AWS_ACCOUNT_ID}:role/lambda-exe \
DefaultEnv=DEV \
--debug