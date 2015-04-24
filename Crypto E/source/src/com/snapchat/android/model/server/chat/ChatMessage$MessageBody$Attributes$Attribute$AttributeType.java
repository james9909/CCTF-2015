// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            ChatMessage

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES LINK;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        LINK = new <init>("LINK", 0);
        e_3B_.clone aclone[] = new <init>[1];
        aclone[0] = LINK;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
