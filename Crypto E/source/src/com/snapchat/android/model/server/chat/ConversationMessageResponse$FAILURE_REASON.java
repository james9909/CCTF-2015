// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            ConversationMessageResponse

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES INTERNAL_ERROR;
    public static final .VALUES INVALID_MESSAGE;
    public static final .VALUES NEED_AUTHENTICATION;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NEED_AUTHENTICATION = new <init>("NEED_AUTHENTICATION", 0);
        INTERNAL_ERROR = new <init>("INTERNAL_ERROR", 1);
        INVALID_MESSAGE = new <init>("INVALID_MESSAGE", 2);
        N_3B_.clone aclone[] = new <init>[3];
        aclone[0] = NEED_AUTHENTICATION;
        aclone[1] = INTERNAL_ERROR;
        aclone[2] = INVALID_MESSAGE;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
