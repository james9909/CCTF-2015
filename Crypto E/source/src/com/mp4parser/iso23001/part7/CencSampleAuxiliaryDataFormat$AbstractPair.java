// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso23001.part7;


// Referenced classes of package com.mp4parser.iso23001.part7:
//            CencSampleAuxiliaryDataFormat

abstract class <init>
    implements <init>
{

    final CencSampleAuxiliaryDataFormat a;

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            <init> <init>1 = (<init>)obj;
            if (a() != <init>1.a())
            {
                return false;
            }
            if (b() != <init>1.b())
            {
                return false;
            }
        }
        return true;
    }

    public String toString()
    {
        return (new StringBuilder("P(")).append(a()).append("|").append(b()).append(")").toString();
    }

    private (CencSampleAuxiliaryDataFormat cencsampleauxiliarydataformat)
    {
        a = cencsampleauxiliarydataformat;
        super();
    }

    a(CencSampleAuxiliaryDataFormat cencsampleauxiliarydataformat, a a1)
    {
        this(cencsampleauxiliarydataformat);
    }
}
