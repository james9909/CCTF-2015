// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            ChatMessage

public static final class I extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES DISCOVER_SHARE;
    public static final .VALUES HERE_SCREENSHOT;
    public static final .VALUES MEDIA;
    public static final .VALUES SCREENSHOT;
    public static final .VALUES TEXT;

    public static I valueOf(String s)
    {
        return (I)Enum.valueOf(com/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type, s);
    }

    public static I[] values()
    {
        return (I[])$VALUES.clone();
    }

    static 
    {
        TEXT = new <init>("TEXT", 0);
        MEDIA = new <init>("MEDIA", 1);
        SCREENSHOT = new <init>("SCREENSHOT", 2);
        HERE_SCREENSHOT = new <init>("HERE_SCREENSHOT", 3);
        DISCOVER_SHARE = new <init>("DISCOVER_SHARE", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = TEXT;
        aclone[1] = MEDIA;
        aclone[2] = SCREENSHOT;
        aclone[3] = HERE_SCREENSHOT;
        aclone[4] = DISCOVER_SHARE;
        $VALUES = aclone;
    }

    private I(String s, int i)
    {
        super(s, i);
    }
}
