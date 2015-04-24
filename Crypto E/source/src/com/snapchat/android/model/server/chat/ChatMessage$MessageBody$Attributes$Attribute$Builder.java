// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            ChatMessage

public static class a
{

    private String mAndroidHref;
    private String mHref;
    private String mIosHref;
    private String mType;

    public a build()
    {
        return new a(this);
    }

    public a setAndroidHref(String s)
    {
        mAndroidHref = s;
        return this;
    }

    public mAndroidHref setHref(String s)
    {
        mHref = s;
        return this;
    }

    public mHref setIosHref(String s)
    {
        mIosHref = s;
        return this;
    }

    public mIosHref setType(String s)
    {
        mType = s;
        return this;
    }





    public a()
    {
    }
}
