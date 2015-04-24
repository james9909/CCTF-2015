// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            ri

public final class rt
{

    public static final int aGB[] = new int[0];
    public static final long aGC[] = new long[0];
    public static final float aGD[] = new float[0];
    public static final double aGE[] = new double[0];
    public static final boolean aGF[] = new boolean[0];
    public static final String aGG[] = new String[0];
    public static final byte aGH[][] = new byte[0][];
    public static final byte aGI[] = new byte[0];

    static int E(int i, int j)
    {
        return j | i << 3;
    }

    public static final int b(ri ri1, int i)
    {
        int j = 1;
        int k = ri1.getPosition();
        ri1.hV(i);
        while (ri1.tJ() == i) 
        {
            ri1.hV(i);
            j++;
        }
        ri1.hZ(k);
        return j;
    }

    static int ip(int i)
    {
        return i & 7;
    }

    public static int iq(int i)
    {
        return i >>> 3;
    }

}
