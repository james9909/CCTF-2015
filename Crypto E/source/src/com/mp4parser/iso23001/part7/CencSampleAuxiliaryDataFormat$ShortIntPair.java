// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso23001.part7;


// Referenced classes of package com.mp4parser.iso23001.part7:
//            CencSampleAuxiliaryDataFormat

class d extends d
{

    final CencSampleAuxiliaryDataFormat b;
    private short c;
    private int d;

    public int a()
    {
        return c;
    }

    public long b()
    {
        return (long)d;
    }

    public (CencSampleAuxiliaryDataFormat cencsampleauxiliarydataformat, int i, long l)
    {
        b = cencsampleauxiliarydataformat;
        super(cencsampleauxiliarydataformat, null);
        c = (short)i;
        d = (int)l;
    }
}
