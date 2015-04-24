// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.util;

import java.io.Serializable;
import org.apache.http.protocol.HTTP;

// Referenced classes of package org.apache.http.util:
//            Args, ByteArrayBuffer

public final class CharArrayBuffer
    implements Serializable
{

    private static final long serialVersionUID = 0xa9d55e649986df41L;
    private char buffer[];
    private int len;

    public CharArrayBuffer(int i)
    {
        Args.notNegative(i, "Buffer capacity");
        buffer = new char[i];
    }

    private void expand(int i)
    {
        char ac[] = new char[Math.max(buffer.length << 1, i)];
        System.arraycopy(buffer, 0, ac, 0, len);
        buffer = ac;
    }

    public void append(char c)
    {
        int i = 1 + len;
        if (i > buffer.length)
        {
            expand(i);
        }
        buffer[len] = c;
        len = i;
    }

    public void append(Object obj)
    {
        append(String.valueOf(obj));
    }

    public void append(String s)
    {
        int i;
        int j;
        if (s == null)
        {
            s = "null";
        }
        i = s.length();
        j = i + len;
        if (j > buffer.length)
        {
            expand(j);
        }
        s.getChars(0, i, buffer, len);
        len = j;
    }

    public void append(ByteArrayBuffer bytearraybuffer, int i, int j)
    {
        if (bytearraybuffer == null)
        {
            return;
        } else
        {
            append(bytearraybuffer.buffer(), i, j);
            return;
        }
    }

    public void append(CharArrayBuffer chararraybuffer)
    {
        if (chararraybuffer == null)
        {
            return;
        } else
        {
            append(chararraybuffer.buffer, 0, chararraybuffer.len);
            return;
        }
    }

    public void append(CharArrayBuffer chararraybuffer, int i, int j)
    {
        if (chararraybuffer == null)
        {
            return;
        } else
        {
            append(chararraybuffer.buffer, i, j);
            return;
        }
    }

    public void append(byte abyte0[], int i, int j)
    {
        if (abyte0 != null)
        {
            if (i < 0 || i > abyte0.length || j < 0 || i + j < 0 || i + j > abyte0.length)
            {
                throw new IndexOutOfBoundsException((new StringBuilder()).append("off: ").append(i).append(" len: ").append(j).append(" b.length: ").append(abyte0.length).toString());
            }
            if (j != 0)
            {
                int k = len;
                int l = k + j;
                if (l > buffer.length)
                {
                    expand(l);
                }
                for (; k < l; k++)
                {
                    buffer[k] = (char)(0xff & abyte0[i]);
                    i++;
                }

                len = l;
                return;
            }
        }
    }

    public void append(char ac[], int i, int j)
    {
        if (ac != null)
        {
            if (i < 0 || i > ac.length || j < 0 || i + j < 0 || i + j > ac.length)
            {
                throw new IndexOutOfBoundsException((new StringBuilder()).append("off: ").append(i).append(" len: ").append(j).append(" b.length: ").append(ac.length).toString());
            }
            if (j != 0)
            {
                int k = j + len;
                if (k > buffer.length)
                {
                    expand(k);
                }
                System.arraycopy(ac, i, buffer, len, j);
                len = k;
                return;
            }
        }
    }

    public char[] buffer()
    {
        return buffer;
    }

    public int capacity()
    {
        return buffer.length;
    }

    public char charAt(int i)
    {
        return buffer[i];
    }

    public void clear()
    {
        len = 0;
    }

    public void ensureCapacity(int i)
    {
        while (i <= 0 || i <= buffer.length - len) 
        {
            return;
        }
        expand(i + len);
    }

    public int indexOf(int i)
    {
        return indexOf(i, 0, len);
    }

    public int indexOf(int i, int j, int k)
    {
        if (j < 0)
        {
            j = 0;
        }
        if (k > len)
        {
            k = len;
        }
        if (j <= k)
        {
            int l = j;
            while (l < k) 
            {
                if (buffer[l] == i)
                {
                    return l;
                }
                l++;
            }
        }
        return -1;
    }

    public boolean isEmpty()
    {
        return len == 0;
    }

    public boolean isFull()
    {
        return len == buffer.length;
    }

    public int length()
    {
        return len;
    }

    public void setLength(int i)
    {
        if (i < 0 || i > buffer.length)
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("len: ").append(i).append(" < 0 or > buffer len: ").append(buffer.length).toString());
        } else
        {
            len = i;
            return;
        }
    }

    public String substring(int i, int j)
    {
        return new String(buffer, i, j - i);
    }

    public String substringTrimmed(int i, int j)
    {
        if (i < 0)
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Negative beginIndex: ").append(i).toString());
        }
        if (j > len)
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("endIndex: ").append(j).append(" > length: ").append(len).toString());
        }
        if (i > j)
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("beginIndex: ").append(i).append(" > endIndex: ").append(j).toString());
        }
        for (; i < j && HTTP.isWhitespace(buffer[i]); i++) { }
        for (; j > i && HTTP.isWhitespace(buffer[j - 1]); j--) { }
        return new String(buffer, i, j - i);
    }

    public char[] toCharArray()
    {
        char ac[] = new char[len];
        if (len > 0)
        {
            System.arraycopy(buffer, 0, ac, 0, len);
        }
        return ac;
    }

    public String toString()
    {
        return new String(buffer, 0, len);
    }
}
