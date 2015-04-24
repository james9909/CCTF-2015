// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import java.util.List;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ChatMessage

public static class 
{

    private List mAttributes;
    private mType mMedia;
    private String mText;
    private mType mType;

    public  build()
    {
        return new (this);
    }

    public  setAttributes(List list)
    {
        mAttributes = list;
        return this;
    }

    public mAttributes setMedia(mAttributes mattributes)
    {
        mMedia = mattributes;
        mType = IA;
        return this;
    }

    public IA setText(String s)
    {
        mText = s;
        mType = T;
        return this;
    }

    public T setType(T t)
    {
        mType = t;
        return this;
    }





    public ()
    {
    }
}
