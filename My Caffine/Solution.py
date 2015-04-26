from requests import Request, Session
import subprocess

HEADERS={"Content-Type":"application/coffee-pot-command", "cookie":"PHPSESSID=oc5pnc39qghan8gb8ve96uhs10"}
session = Session()
SERVER="http://coffee.camsctf.com/"

# Brew dat coffee
req = Request('BREW',  SERVER, headers=HEADERS, data="23")
prep_request = session.prepare_request(req)
output = session.send(prep_request)
print output.text

# After this we get the cipher
req=Request('WHEN',  SERVER, headers=HEADERS)
prep_request = session.prepare_request(req)
output = session.send(prep_request)
print output.text

# Refresh and get the key
req = Request('PROPFIND',  SERVER, headers=HEADERS)
prep_request = session.prepare_request(req)
output = session.send(prep_request)
print output.text
