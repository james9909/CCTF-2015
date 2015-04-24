// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.input;

import java.io.Reader;
import java.io.Serializable;

public class CharSequenceReader extends Reader
    implements Serializable
{

    private final CharSequence charSequence;
    private int idx;
    private int mark;

    public CharSequenceReader(CharSequence charsequence)
    {
        if (charsequence == null)
        {
            charsequence = "";
        }
        charSequence = charsequence;
    }

    public void close()
    {
        idx = 0;
        mark = 0;
    }

    public void mark(int i)
    {
        mark = idx;
    }

    public boolean markSupported()
    {
        return true;
    }

    public int read()
    {
        if (idx >= charSequence.length())
        {
            return -1;
        } else
        {
            CharSequence charsequence = charSequence;
            int i = idx;
            idx = i + 1;
            return charsequence.charAt(i);
        }
    }

    public int read(char ac[], int i, int j)
    {
        int k = 0;
        if (idx >= charSequence.length())
        {
            return -1;
        }
        if (ac == null)
        {
            throw new NullPointerException("Character array is missing");
        }
        if (j < 0 || i < 0 || i + j > ac.length)
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Array Size=").append(ac.length).append(", offset=").append(i).append(", length=").append(j).toString());
        }
        for (int l = 0; l < j;)
        {
            int i1 = read();
            if (i1 == -1)
            {
                return k;
            }
            ac[i + l] = (char)i1;
            int j1 = k + 1;
            l++;
            k = j1;
        }

        return k;
    }

    public void reset()
    {
        idx = mark;
    }

    public long skip(long l)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Number of characters to skip is less than zero: ").append(l).toString());
        }
        if (idx >= charSequence.length())
        {
            return -1L;
        } else
        {
            int i = (int)Math.min(charSequence.length(), l + (long)idx);
            int j = i - idx;
            idx = i;
            return (long)j;
        }
    }

    public String toString()
    {
        return charSequence.toString();
    }
}
