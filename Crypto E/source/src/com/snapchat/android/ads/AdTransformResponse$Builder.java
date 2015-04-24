// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ads;


// Referenced classes of package com.snapchat.android.ads:
//            AdTransformResponse

public static class 
{

    private String a;
    private Exception b;

    public  a(Exception exception)
    {
        b = exception;
        return this;
    }

    public b a(String s)
    {
        a = s;
        return this;
    }

    public AdTransformResponse a()
    {
        return new AdTransformResponse(a, b, null);
    }

    public ()
    {
    }
}
