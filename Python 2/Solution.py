from PIL import Image
import hashlib

finalString = ""
# We want to loop through each picture
for i in range(10):
    # RGB values
    r = 0
    g = 0
    b = 0
    # All the photos are in the PIL folder
    currImage = "PIL/pixels" + str(i) + ".png"
    print "Looking through " + currImage
    im = Image.open(currImage, 'r')
    pix = im.load()
    # 300 x 300 pictures
    # loop through pixels 0-299
    for x in range(300):
        for y in range(300):
            pixels = pix[x,y] # Get the RGB Value of the a pixel of an image
            # Add all rgb values
            r += pixels[0]
            g += pixels[1]
            b += pixels[2]
    # Take the md5 hash of each RGB string
    rHash = hashlib.md5(str(r)).hexdigest()
    gHash = hashlib.md5(str(g)).hexdigest()
    bHash = hashlib.md5(str(b)).hexdigest()

    # Concatenate into one string
    finalHash = rHash + gHash + bHash

    # Take the md5 hash of finalHash and concatenate it to a final string
    finalHash = hashlib.md5(finalHash).hexdigest()
    finalString += finalHash

# Take the md5 hash of the final string
print hashlib.md5(finalString).hexdigest()
