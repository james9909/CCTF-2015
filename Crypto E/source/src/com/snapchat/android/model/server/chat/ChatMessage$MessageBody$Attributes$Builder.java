// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            ChatMessage

public static class e
{

    private e mAttribute;
    private int mEnd;
    private int mStart;

    public e build()
    {
        return new e(this);
    }

    public e setAttribute(e e)
    {
        mAttribute = e;
        return this;
    }

    public mAttribute setEnd(int i)
    {
        mEnd = i;
        return this;
    }

    public mEnd setStart(int i)
    {
        mStart = i;
        return this;
    }




    public e()
    {
    }
}
