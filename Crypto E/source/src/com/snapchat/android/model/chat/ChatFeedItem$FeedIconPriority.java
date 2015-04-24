// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;


// Referenced classes of package com.snapchat.android.model.chat:
//            ChatFeedItem

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CURRENTLY_TICKING;
    public static final .VALUES FAILED;
    public static final .VALUES MOST_RECENT;
    public static final .VALUES NEW;
    public static final .VALUES RECENTLY_OPENED_LAST_SNAP;
    public static final .VALUES RECENTLY_SENT;
    public static final .VALUES SENDING;
    public static final .VALUES UNOPENED_SNAP_AVAILABLE_NEXT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        MOST_RECENT = new <init>("MOST_RECENT", 0);
        NEW = new <init>("NEW", 1);
        RECENTLY_SENT = new <init>("RECENTLY_SENT", 2);
        SENDING = new <init>("SENDING", 3);
        FAILED = new <init>("FAILED", 4);
        RECENTLY_OPENED_LAST_SNAP = new <init>("RECENTLY_OPENED_LAST_SNAP", 5);
        UNOPENED_SNAP_AVAILABLE_NEXT = new <init>("UNOPENED_SNAP_AVAILABLE_NEXT", 6);
        CURRENTLY_TICKING = new <init>("CURRENTLY_TICKING", 7);
        y_3B_.clone aclone[] = new <init>[8];
        aclone[0] = MOST_RECENT;
        aclone[1] = NEW;
        aclone[2] = RECENTLY_SENT;
        aclone[3] = SENDING;
        aclone[4] = FAILED;
        aclone[5] = RECENTLY_OPENED_LAST_SNAP;
        aclone[6] = UNOPENED_SNAP_AVAILABLE_NEXT;
        aclone[7] = CURRENTLY_TICKING;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
