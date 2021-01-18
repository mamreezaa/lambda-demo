# Lambda layers demo

## Description
This project created to demonstrate the usage of layers and common modules

## Tools we use
- SAM
- Python 3.7
- Pytest
- [GS layers project](https://bitbucket.org/goldenscent/lambda-layers/src/master/)

## Debug
- Add debug configuration in `.vscode/launch.json`
```json
{
    "version": "0.2.0",
    "configurations": [
        {
           "name": "Debug demo function",
           "type": "python",
           "request": "attach",
           "port": 5890,
           "host": "localhost",
           "pathMappings": [
               {
                   "localRoot": "${workspaceFolder}/src",
                   "remoteRoot": "/var/task"
               }
           ]
       }
   ]
 }
```
- install ptvsd `pip install ptvsd --system -t ./src`
- add these line on top of function file
```python
import ptvsd
ptvsd.enable_attach(address=('0.0.0.0', 5890), redirect_output=True)
ptvsd.wait_for_attach()
```
- run `./invoke.sh`
- start debug (F5)

## Useful commands
| Commands or sh   |      Description      |
|----------|:-------------:|
| export PYTHONPATH=./src:$PYTHONPATH |  Let python interpreter know the src module |
| python -m pytest | Run unite test |
| ./invoke.sh  |    Invoke function locally   |
| ./dev-deploy.sh | Deploy the function to de aws account |
| pip freeze > dev-requirements.txt | Freeze all dev modules to a file|