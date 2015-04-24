// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            SCMessage

public static class mType
{

    private final String mType;

    public SCMessage build()
    {
        return new SCMessage(mType);
    }

    public String getType()
    {
        return mType;
    }

    public (String s)
    {
        mType = s;
    }
}
