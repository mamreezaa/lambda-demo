from mock import response

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