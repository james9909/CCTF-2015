// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            fk

public static final class uq extends Exception
{

    private final int uq;

    public int getErrorCode()
    {
        return uq;
    }

    public (String s, int i)
    {
        super(s);
        uq = i;
    }
}
