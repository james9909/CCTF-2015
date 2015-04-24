// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            MessageStateMessage

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES SAVED;
    public static final .VALUES UNSAVED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/server/chat/MessageStateMessage$StateType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SAVED = new <init>("SAVED", 0);
        UNSAVED = new <init>("UNSAVED", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = SAVED;
        aclone[1] = UNSAVED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
