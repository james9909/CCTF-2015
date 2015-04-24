// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;


// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatConversationAdapter

static final class  extends Enum
{

    public static final j a;
    public static final j b;
    public static final j c;
    public static final j d;
    public static final j e;
    public static final j f;
    public static final j g;
    public static final j h;
    public static final j i;
    private static final j j[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType, s);
    }

    public static [] values()
    {
        return ([])j.clone();
    }

    static 
    {
        a = new <init>("CHAT_TEXT", 0);
        b = new <init>("DATE_HEADER", 1);
        c = new <init>("HEADER", 2);
        d = new <init>("SNAP", 3);
        e = new <init>("CHAT_MEDIA", 4);
        f = new <init>("CHAT_SCREENSHOT", 5);
        g = new <init>("CHAT_UNKNOWN", 6);
        h = new <init>("CASH", 7);
        i = new <init>("SHARED_DSNAP", 8);
        e_3B_.clone aclone[] = new <init>[9];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        aclone[5] = f;
        aclone[6] = g;
        aclone[7] = h;
        aclone[8] = i;
        j = aclone;
    }

    private (String s, int k)
    {
        super(s, k);
    }
}
