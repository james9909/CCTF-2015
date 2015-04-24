// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;

// Referenced classes of package com.google.android.gms.internal:
//            rj, rp, ri, rr

public abstract class rq
{

    protected volatile int aGz;

    public rq()
    {
        aGz = -1;
    }

    public static final rq a(rq rq1, byte abyte0[])
    {
        return b(rq1, abyte0, 0, abyte0.length);
    }

    public static final void a(rq rq1, byte abyte0[], int i, int j)
    {
        try
        {
            rj rj1 = rj.b(abyte0, i, j);
            rq1.a(rj1);
            rj1.tZ();
            return;
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", ioexception);
        }
    }

    public static final rq b(rq rq1, byte abyte0[], int i, int j)
    {
        try
        {
            ri ri1 = ri.a(abyte0, i, j);
            rq1.b(ri1);
            ri1.hU(0);
        }
        catch (rp rp1)
        {
            throw rp1;
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
        return rq1;
    }

    public static final byte[] f(rq rq1)
    {
        byte abyte0[] = new byte[rq1.uj()];
        a(rq1, abyte0, 0, abyte0.length);
        return abyte0;
    }

    public void a(rj rj1)
    {
    }

    public abstract rq b(ri ri1);

    protected int c()
    {
        return 0;
    }

    public String toString()
    {
        return rr.g(this);
    }

    public int ui()
    {
        if (aGz < 0)
        {
            uj();
        }
        return aGz;
    }

    public int uj()
    {
        int i = c();
        aGz = i;
        return i;
    }
}
