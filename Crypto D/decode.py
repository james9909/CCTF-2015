primes = open('primes.txt').readlines()
primes = [int(x) for x in primes]
ciphertext = int(open('crypto_d', 'r').read().encode('hex'), 16)

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

N = primes[0] * primes[1]
tot = (primes[0]-1)*(primes[1]-1)
i = 0x10001 # 65537

if gcd(i, tot) == 1:
    d = modinv(i, tot)
    msg = pow(ciphertext,d,N)
    hexified = hex(msg)[2:-1]
    hexified = '0' + hexified
    print hexified.decode('hex')
