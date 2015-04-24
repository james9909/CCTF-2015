// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            dl

static class 
{

    static final int rB[];
    static final int rC[];

    static 
    {
        rC = new int[com.google.ads.uest.ErrorCode.values().length];
        try
        {
            rC[com.google.ads.uest.ErrorCode.d.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            rC[com.google.ads.uest.ErrorCode.a.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            rC[com.google.ads.uest.ErrorCode.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            rC[com.google.ads.uest.ErrorCode.b.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        rB = new int[com.google.ads.uest.Gender.values().length];
        try
        {
            rB[com.google.ads.uest.Gender.c.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            rB[com.google.ads.uest.Gender.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            rB[com.google.ads.uest.Gender.a.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror6)
        {
            return;
        }
    }
}
