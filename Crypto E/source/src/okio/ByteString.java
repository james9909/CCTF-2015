// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

// Referenced classes of package okio:
//            Util, Base64

public final class ByteString
    implements Serializable
{

    public static final ByteString a = a(new byte[0]);
    private static final char c[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };
    final byte b[];
    private transient int d;
    private transient String e;

    ByteString(byte abyte0[])
    {
        b = abyte0;
    }

    public static ByteString a(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("s == null");
        } else
        {
            ByteString bytestring = new ByteString(s.getBytes(Util.a));
            bytestring.e = s;
            return bytestring;
        }
    }

    public static transient ByteString a(byte abyte0[])
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("data == null");
        } else
        {
            return new ByteString((byte[])abyte0.clone());
        }
    }

    public static ByteString b(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("base64 == null");
        }
        byte abyte0[] = Base64.a(s);
        if (abyte0 != null)
        {
            return new ByteString(abyte0);
        } else
        {
            return null;
        }
    }

    public byte a(int i)
    {
        return b[i];
    }

    public String a()
    {
        String s = e;
        if (s != null)
        {
            return s;
        } else
        {
            String s1 = new String(b, Util.a);
            e = s1;
            return s1;
        }
    }

    public String b()
    {
        return Base64.a(b);
    }

    public String c()
    {
        int i = 0;
        char ac[] = new char[2 * b.length];
        byte abyte0[] = b;
        int j = abyte0.length;
        int k = 0;
        for (; i < j; i++)
        {
            byte byte0 = abyte0[i];
            int l = k + 1;
            ac[k] = c[0xf & byte0 >> 4];
            k = l + 1;
            ac[l] = c[byte0 & 0xf];
        }

        return new String(ac);
    }

    public ByteString d()
    {
label0:
        {
            int i = 0;
            byte byte0;
            do
            {
                if (i >= b.length)
                {
                    break label0;
                }
                byte0 = b[i];
                if (byte0 >= 65 && byte0 <= 90)
                {
                    break;
                }
                i++;
            } while (true);
            byte abyte0[] = (byte[])b.clone();
            int j = i + 1;
            abyte0[i] = (byte)(byte0 + 32);
            int k = j;
            while (k < abyte0.length) 
            {
                byte byte1 = abyte0[k];
                if (byte1 >= 65 && byte1 <= 90)
                {
                    abyte0[k] = (byte)(byte1 + 32);
                }
                k++;
            }
            this = new ByteString(abyte0);
        }
        return this;
    }

    public int e()
    {
        return b.length;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof ByteString) && Arrays.equals(((ByteString)obj).b, b);
    }

    public byte[] f()
    {
        return (byte[])b.clone();
    }

    public int hashCode()
    {
        int i = d;
        if (i != 0)
        {
            return i;
        } else
        {
            int j = Arrays.hashCode(b);
            d = j;
            return j;
        }
    }

    public String toString()
    {
        if (b.length == 0)
        {
            return "ByteString[size=0]";
        }
        if (b.length <= 16)
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = Integer.valueOf(b.length);
            aobj1[1] = c();
            return String.format("ByteString[size=%s data=%s]", aobj1);
        }
        String s;
        try
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(b.length);
            aobj[1] = a(MessageDigest.getInstance("MD5").digest(b)).c();
            s = String.format("ByteString[size=%s md5=%s]", aobj);
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new AssertionError();
        }
        return s;
    }

}
