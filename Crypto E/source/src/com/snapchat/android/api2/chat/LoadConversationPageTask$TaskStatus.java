// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.chat;


// Referenced classes of package com.snapchat.android.api2.chat:
//            LoadConversationPageTask

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES EMPTY_RESPONSE_REACHED;
    public static final .VALUES FAILED;
    public static final .VALUES RUNNING;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        RUNNING = new <init>("RUNNING", 0);
        FAILED = new <init>("FAILED", 1);
        EMPTY_RESPONSE_REACHED = new <init>("EMPTY_RESPONSE_REACHED", 2);
        s_3B_.clone aclone[] = new <init>[3];
        aclone[0] = RUNNING;
        aclone[1] = FAILED;
        aclone[2] = EMPTY_RESPONSE_REACHED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
