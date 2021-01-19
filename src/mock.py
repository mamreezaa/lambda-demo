from typing import (
    Dict,
    Any
)
import emoji
import goldenscentpy.mysql.connection as gsmysqlcon
import goldenscentpy.config as gsconfig

gs_connection_object = gsmysqlcon.Connection()
gs_connection_object.get_connection('DEV')
sql='select * from customer_entity where entity_id = 1'
cursor = gs_connection_object.execute('DEV', sql, dict_cursor=True)

config = gsconfig.Config()
erp_params = config.get_erp_params('DEV')

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
    ],
    'email' : cursor.fetchall()[0]['email'],
    'erp_params' : erp_params
}