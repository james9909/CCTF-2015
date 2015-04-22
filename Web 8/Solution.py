encrypted=[1,10,10,18,21,22,9,75,1,10,9,92,64,30,10,81,14,37,4,36,31,33,49,30,23,80,83,62,24,59,89,84,14,58,4,64,20,81,23,2,8,75,28,82,50,22,5,69,14,9,30,62,40,73,29,16,92,23,93,16,31,71,77,90]

def what_keys(request):
    request_nums = []
    keys = []
    for ch in request:
        request_nums.append(ord(ch))
    i = 0
    while i < 12:
        key = encrypted[i] ^ request_nums[i]
        keys.append(chr(key))
        i += 1
    print keys

what_keys("data.reply")
