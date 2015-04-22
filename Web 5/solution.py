import urllib2

spoofs = {
        'User-agent' : 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',
        'Referer' : 'https://www.nsa.gov/'
}
req = urllib2.Request("http://web.camsctf.com/5/", headers=spoofs)
r = urllib2.urlopen(req)
print r.read(4096)

