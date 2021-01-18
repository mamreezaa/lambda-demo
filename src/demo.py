from mock import response
import ptvsd

ptvsd.enable_attach(address=('0.0.0.0', 5890), redirect_output=True)
ptvsd.wait_for_attach()

def handler(event, context):
    try:
        return {
            "statusCode": 200,
            "headers": {
                'Content-Type': 'application/json'
            },
            "body": response,
            "isBase64Encoded": False
        }
    except Exception as error:
        print(error)