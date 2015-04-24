// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;


// Referenced classes of package com.snapchat.android.model.chat:
//            ChatText

public static class t> extends t>
{

    private boolean hasLinks;
    private String text;

    static String a(t> t>)
    {
        return t>.text;
    }

    static boolean b(text text1)
    {
        return text1.hasLinks;
    }

    public hasLinks a(String s)
    {
        text = s;
        return this;
    }

    public text a(boolean flag)
    {
        hasLinks = flag;
        return this;
    }

    public ChatText a()
    {
        return new ChatText(this);
    }

    public (String s, String s1)
    {
        super(s, s1);
    }
}
