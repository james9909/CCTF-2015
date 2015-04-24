// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            UnviewedContentCount

public static class 
{

    int numWithOnlyUnviewedCash;
    int numWithOnlyUnviewedChats;
    int numWithUnviewedContent;

    public  a(int i)
    {
        numWithUnviewedContent = i;
        return this;
    }

    public UnviewedContentCount a()
    {
        return new UnviewedContentCount(this, null);
    }

    public numWithUnviewedContent b(int i)
    {
        numWithOnlyUnviewedChats = i;
        return this;
    }

    public numWithOnlyUnviewedChats c(int i)
    {
        numWithOnlyUnviewedCash = i;
        return this;
    }

    public ()
    {
    }
}
