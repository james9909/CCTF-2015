// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.multidex;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;

final class ZipUtil
{
    static class CentralDirectory
    {

        long a;
        long b;

        CentralDirectory()
        {
        }
    }


    ZipUtil()
    {
    }

    static long a(File file)
    {
        RandomAccessFile randomaccessfile = new RandomAccessFile(file, "r");
        long l = a(randomaccessfile, a(randomaccessfile));
        randomaccessfile.close();
        return l;
        Exception exception;
        exception;
        randomaccessfile.close();
        throw exception;
    }

    static long a(RandomAccessFile randomaccessfile, CentralDirectory centraldirectory)
    {
        CRC32 crc32 = new CRC32();
        long l = centraldirectory.b;
        randomaccessfile.seek(centraldirectory.a);
        int i = (int)Math.min(16384L, l);
        byte abyte0[] = new byte[16384];
        int j = randomaccessfile.read(abyte0, 0, i);
        do
        {
label0:
            {
                if (j != -1)
                {
                    crc32.update(abyte0, 0, j);
                    l -= j;
                    if (l != 0L)
                    {
                        break label0;
                    }
                }
                return crc32.getValue();
            }
            j = randomaccessfile.read(abyte0, 0, (int)Math.min(16384L, l));
        } while (true);
    }

    static CentralDirectory a(RandomAccessFile randomaccessfile)
    {
        long l = 0L;
        long l1 = randomaccessfile.length() - 22L;
        if (l1 < l)
        {
            throw new ZipException((new StringBuilder()).append("File too short to be a zip file: ").append(randomaccessfile.length()).toString());
        }
        long l2 = l1 - 0x10000L;
        int i;
        long l3;
        if (l2 >= l)
        {
            l = l2;
        }
        i = Integer.reverseBytes(0x6054b50);
        l3 = l1;
        do
        {
            randomaccessfile.seek(l3);
            if (randomaccessfile.readInt() == i)
            {
                randomaccessfile.skipBytes(2);
                randomaccessfile.skipBytes(2);
                randomaccessfile.skipBytes(2);
                randomaccessfile.skipBytes(2);
                CentralDirectory centraldirectory = new CentralDirectory();
                centraldirectory.b = 0xffffffffL & (long)Integer.reverseBytes(randomaccessfile.readInt());
                centraldirectory.a = 0xffffffffL & (long)Integer.reverseBytes(randomaccessfile.readInt());
                return centraldirectory;
            }
            l3--;
        } while (l3 >= l);
        throw new ZipException("End Of Central Directory signature not found");
    }
}
