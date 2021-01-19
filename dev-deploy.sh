#!/bin/bash
if [ -d "./src/ptvsd" ]
then
    rm -rf src/ptvsd*
fi
if [ -d "./src/__pycache__" ]
then
    rm -rf src/__pycache__*
fi
sam deploy --config-file=samconfig.dev.toml \
--profile=sam-dev-deployer \
--config-env=dev \
--no-confirm-changeset \
--no-fail-on-empty-changeset \
--parameter-overrides PythonDepPack1=arn:aws:lambda:eu-west-1:${AWS_ACCOUNT_ID}:layer:python37-dependency-pack-1-gs-layer:20 \
GoldenScentPyLayer=arn:aws:lambda:eu-west-1:${AWS_ACCOUNT_ID}:layer:golden-scent-python-package-layer:42 \
LambdaExeRole=arn:aws:iam::${AWS_ACCOUNT_ID}:role/lambda-exe \
DefaultEnv=DEV \
--debug
