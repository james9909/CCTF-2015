#!/usr/bin/env python3

primes = open('primes.txt').readlines()
primes = [int(x) for x in primes]
print(primes)

from fractions import gcd

def egcd(a, b):
    if a == 0:
        return (b, 0, 1)
    else:
        g, y, x = egcd(b % a, a)
        return (g, x - (b // a) * y, y)

def modinv(a, m):
    g, x, y = egcd(a, m)
    if g != 1:
        raise Exception('modular inverse does not exist')
    else:
        return x % m

dec = open('bruted.txt', 'w')

import codecs
decode_hex = codecs.getdecoder("hex_codec")

N = primes[0] * primes[1]
tot = (primes[0]-1)*(primes[1]-1)
for i in range(tot):
    if gcd(i, tot) == 1:
        d = modinv(i, tot)
        msg = pow(ciphertext,d,N)
        hexified = hex(msg).strip('0x')
        if len(hexified) % 2 == 1:
            hexified = '0' + hexified
        dec.write("%s: %s\n" % (i, decode_hex(hexified)[0]))
