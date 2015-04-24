// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import java.io.FilterInputStream;
import java.io.IOException;

public class CleanInputStream extends FilterInputStream
{

    int a;
    int b;

    public boolean markSupported()
    {
        return false;
    }

    public int read()
    {
        int i = super.read();
        if (i == 3 && a == 0 && b == 0)
        {
            a = -1;
            b = -1;
            i = super.read();
        }
        a = b;
        b = i;
        return i;
    }

    public int read(byte abyte0[], int i, int j)
    {
        byte byte0;
        byte0 = -1;
        if (abyte0 == null)
        {
            throw new NullPointerException();
        }
        if (i < 0 || j < 0 || j > abyte0.length - i)
        {
            throw new IndexOutOfBoundsException();
        }
        if (j != 0) goto _L2; else goto _L1
_L1:
        byte0 = 0;
_L4:
        return byte0;
_L2:
        int k = read();
        if (k == byte0) goto _L4; else goto _L3
_L3:
        int l;
        abyte0[i] = (byte)k;
        l = 1;
_L8:
        if (l < j) goto _L6; else goto _L5
_L5:
        return l;
_L6:
        int i1 = read();
        if (i1 == byte0) goto _L5; else goto _L7
_L7:
        abyte0[i + l] = (byte)i1;
        l++;
          goto _L8
        IOException ioexception;
        ioexception;
          goto _L5
    }
}
