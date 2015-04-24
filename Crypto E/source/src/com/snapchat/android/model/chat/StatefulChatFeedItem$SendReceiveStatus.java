// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;


// Referenced classes of package com.snapchat.android.model.chat:
//            StatefulChatFeedItem

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES FAILED;
    public static final .VALUES FAILED_AND_NON_RECOVERABLE;
    public static final .VALUES FAILED_AND_USER_NOTIFIED_OF_FAILURE;
    public static final .VALUES RECEIVED;
    public static final .VALUES RECEIVING;
    public static final .VALUES SENDING;
    public static final .VALUES SENT;
    public static final .VALUES UNKNOWN;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0);
        FAILED = new <init>("FAILED", 1);
        RECEIVING = new <init>("RECEIVING", 2);
        RECEIVED = new <init>("RECEIVED", 3);
        SENDING = new <init>("SENDING", 4);
        SENT = new <init>("SENT", 5);
        FAILED_AND_USER_NOTIFIED_OF_FAILURE = new <init>("FAILED_AND_USER_NOTIFIED_OF_FAILURE", 6);
        FAILED_AND_NON_RECOVERABLE = new <init>("FAILED_AND_NON_RECOVERABLE", 7);
        s_3B_.clone aclone[] = new <init>[8];
        aclone[0] = UNKNOWN;
        aclone[1] = FAILED;
        aclone[2] = RECEIVING;
        aclone[3] = RECEIVED;
        aclone[4] = SENDING;
        aclone[5] = SENT;
        aclone[6] = FAILED_AND_USER_NOTIFIED_OF_FAILURE;
        aclone[7] = FAILED_AND_NON_RECOVERABLE;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
