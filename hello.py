
def wsgi_application(environ, start_response):
# бизнес-логика
    status = '200 OK'
    headers = [
        ('Content-Type', 'text/plain')
    ]
    resp = environ['QUERY_STRING'].split('&')
    resp = list(map(lambda x : bytes(x+'\n', 'utf-8'), resp))
    start_response(status, headers )
    return resp
