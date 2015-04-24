// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;


// Referenced classes of package com.snapchat.android.model.chat:
//            ChatMedia

public static class > extends >
{

    private String iv;
    private String key;
    private String mediaId;

    static String a(> >)
    {
        return >.mediaId;
    }

    static String b(mediaId mediaid)
    {
        return mediaid.key;
    }

    static String c(key key1)
    {
        return key1.iv;
    }

    public iv a(String s)
    {
        mediaId = s;
        return this;
    }

    public ChatMedia a()
    {
        return new ChatMedia(this);
    }

    public mediaId b(String s)
    {
        key = s;
        return this;
    }

    public key c(String s)
    {
        iv = s;
        return this;
    }

    public (String s, String s1)
    {
        super(s, s1);
    }
}
