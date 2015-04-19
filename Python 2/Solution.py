from PIL import Image
import hashlib

finalString = ""
for i in range(0, 10):
    r = 0
    g = 0
    b = 0
    # All the photos are in the PIL folder
    currImage = "PIL/pixels" + str(i) + ".png"
    print currImage
    im = Image.open(currImage, 'r')
    pix = im.load()
    # 300 x 300 pictures
    for x in range(0, 300):
        for y in range(0, 300):
            pixels = pix[x,y] # Get the RGB Value of the a pixel of an image
            # Add all rgb values
            r += pixels[0]
            g += pixels[1]
            b += pixels[2]
    # Take the md5 hash of each string
    rHash = hashlib.md5(str(r)).hexdigest()
    gHash = hashlib.md5(str(g)).hexdigest()
    bHash = hashlib.md5(str(b)).hexdigest()
    # Concatenate into one string
    finalHash = rHash + gHash + bHash

    # Take the md5 hash of finalHash and concatenate it to a final string
    finalHash = hashlib.md5(finalHash).hexdigest()
    finalString += finalHash

# Take the md5 hash of that final string
print hashlib.md5(finalString).hexdigest()
