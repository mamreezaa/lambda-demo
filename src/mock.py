from typing import (
    Dict,
    Any
)
import emoji

response: Dict[str, Any] = {
    'name' : 'mam',
    'profession' : 'Software Engineer',
    'company' : 'Golden Scent',
    'age' : 30,
    'love' : [
        emoji.emojize(':rabbit:'),
        emoji.emojize(':elephant:'),
        emoji.emojize(':dog:'),
        emoji.emojize(':rooster:')
    ]
}