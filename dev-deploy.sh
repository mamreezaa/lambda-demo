#!/bin/bash
sam deploy --config-file=samconfig.dev.toml \
--profile=sam-dev-deployer \
--config-env=dev \
--no-confirm-changeset \
--no-fail-on-empty-changeset \
--parameter-overrides PythonDepPack1=arn:aws:lambda:eu-west-1:266132046887:layer:python37-dependency-pack-1-gs-layer:20 \
GoldenScentPyLayer=arn:aws:lambda:eu-west-1:266132046887:layer:golden-scent-python-package-layer:42 \
LambdaExeRole=arn:aws:iam::266132046887:role/lambda-exe \
DefaultEnv=DEV \
--debug
