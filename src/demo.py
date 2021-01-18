from mock import response

def handler(_, __):
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