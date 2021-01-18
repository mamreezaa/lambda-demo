# Lambda layers demo

## Description
This project created to demonstrate the usage of layers and common modules

## Tools we use
- SAM
- Python 3.7
- Pytest
- [GS layers project](https://bitbucket.org/goldenscent/lambda-layers/src/master/)

## Useful commands
| Commands or sh   |      Description      |
|----------|:-------------:|
| export PYTHONPATH=./src:$PYTHONPATH |  Let python interpreter know the src module |
| python -m pytest | Run unite test |
| ./invoke.sh  |    Invoke function locally   |
| ./dev-deploy.sh | Deploy the function to de aws account |
| pip freeze > dev-requirements.txt | Freeze all dev modules to a file|