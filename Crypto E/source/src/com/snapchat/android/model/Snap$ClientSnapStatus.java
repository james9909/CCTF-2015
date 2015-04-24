// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            Snap

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES DELIVERED;
    public static final .VALUES FAILED;
    public static final .VALUES FAILED_AND_NON_RECOVERABLE;
    public static final .VALUES FAILED_AND_USER_NOTIFIED_OF_FAILURE;
    public static final .VALUES FRIEND_REQUEST;
    public static final .VALUES LOADING;
    public static final .VALUES PENDING;
    public static final .VALUES RECEIVED_AND_REPLAYED;
    public static final .VALUES RECEIVED_AND_VIEWED;
    public static final .VALUES SENDING;
    public static final .VALUES SENT;
    public static final .VALUES SENT_AND_OPENED;
    public static final .VALUES SENT_AND_REPLAYED;
    public static final .VALUES SENT_AND_REPLAYED_AND_SCREENSHOTTED;
    public static final .VALUES SENT_AND_SCREENSHOTTED;
    public static final .VALUES UNVIEWED_AND_LOADED;
    public static final .VALUES UNVIEWED_AND_LOAD_STATE_TBD;
    public static final .VALUES UNVIEWED_AND_UNLOADED;
    public static final .VALUES VIEWED_AND_REPLAY_AVAILABLE;

    public static  a(String s)
    {
         a1[] = values();
        int i = a1.length;
        for (int j = 0; j < i; j++)
        {
              = a1[j];
            if (s.equalsIgnoreCase(.name()))
            {
                return ;
            }
        }

        return RECEIVED_AND_VIEWED;
    }

    public static RECEIVED_AND_VIEWED valueOf(String s)
    {
        return (RECEIVED_AND_VIEWED)Enum.valueOf(com/snapchat/android/model/Snap$ClientSnapStatus, s);
    }

    public static RECEIVED_AND_VIEWED[] values()
    {
        return (RECEIVED_AND_VIEWED[])$VALUES.clone();
    }

    static 
    {
        RECEIVED_AND_VIEWED = new <init>("RECEIVED_AND_VIEWED", 0);
        FAILED = new <init>("FAILED", 1);
        SENDING = new <init>("SENDING", 2);
        SENT = new <init>("SENT", 3);
        DELIVERED = new <init>("DELIVERED", 4);
        PENDING = new <init>("PENDING", 5);
        SENT_AND_OPENED = new <init>("SENT_AND_OPENED", 6);
        SENT_AND_SCREENSHOTTED = new <init>("SENT_AND_SCREENSHOTTED", 7);
        UNVIEWED_AND_LOAD_STATE_TBD = new <init>("UNVIEWED_AND_LOAD_STATE_TBD", 8);
        UNVIEWED_AND_UNLOADED = new <init>("UNVIEWED_AND_UNLOADED", 9);
        UNVIEWED_AND_LOADED = new <init>("UNVIEWED_AND_LOADED", 10);
        LOADING = new <init>("LOADING", 11);
        FRIEND_REQUEST = new <init>("FRIEND_REQUEST", 12);
        VIEWED_AND_REPLAY_AVAILABLE = new <init>("VIEWED_AND_REPLAY_AVAILABLE", 13);
        SENT_AND_REPLAYED = new <init>("SENT_AND_REPLAYED", 14);
        SENT_AND_REPLAYED_AND_SCREENSHOTTED = new <init>("SENT_AND_REPLAYED_AND_SCREENSHOTTED", 15);
        RECEIVED_AND_REPLAYED = new <init>("RECEIVED_AND_REPLAYED", 16);
        FAILED_AND_USER_NOTIFIED_OF_FAILURE = new <init>("FAILED_AND_USER_NOTIFIED_OF_FAILURE", 17);
        FAILED_AND_NON_RECOVERABLE = new <init>("FAILED_AND_NON_RECOVERABLE", 18);
        s_3B_.clone aclone[] = new <init>[19];
        aclone[0] = RECEIVED_AND_VIEWED;
        aclone[1] = FAILED;
        aclone[2] = SENDING;
        aclone[3] = SENT;
        aclone[4] = DELIVERED;
        aclone[5] = PENDING;
        aclone[6] = SENT_AND_OPENED;
        aclone[7] = SENT_AND_SCREENSHOTTED;
        aclone[8] = UNVIEWED_AND_LOAD_STATE_TBD;
        aclone[9] = UNVIEWED_AND_UNLOADED;
        aclone[10] = UNVIEWED_AND_LOADED;
        aclone[11] = LOADING;
        aclone[12] = FRIEND_REQUEST;
        aclone[13] = VIEWED_AND_REPLAY_AVAILABLE;
        aclone[14] = SENT_AND_REPLAYED;
        aclone[15] = SENT_AND_REPLAYED_AND_SCREENSHOTTED;
        aclone[16] = RECEIVED_AND_REPLAYED;
        aclone[17] = FAILED_AND_USER_NOTIFIED_OF_FAILURE;
        aclone[18] = FAILED_AND_NON_RECOVERABLE;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
