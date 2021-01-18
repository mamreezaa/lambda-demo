from src.demo import handler

def test_demo():
    responce = handler(None, None)
    assert responce.get('statusCode') == 200