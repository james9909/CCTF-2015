// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;


// Referenced classes of package com.snapchat.android.model.chat:
//            CashFeedItem

public static final class I extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES INITIATED;
    public static final .VALUES INITIATING;
    public static final .VALUES PRE_CONFIRMATION;
    public static final .VALUES PRE_INITIATION;

    public static I valueOf(String s)
    {
        return (I)Enum.valueOf(com/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState, s);
    }

    public static I[] values()
    {
        return (I[])$VALUES.clone();
    }

    static 
    {
        PRE_CONFIRMATION = new <init>("PRE_CONFIRMATION", 0);
        PRE_INITIATION = new <init>("PRE_INITIATION", 1);
        INITIATING = new <init>("INITIATING", 2);
        INITIATED = new <init>("INITIATED", 3);
        e_3B_.clone aclone[] = new <init>[4];
        aclone[0] = PRE_CONFIRMATION;
        aclone[1] = PRE_INITIATION;
        aclone[2] = INITIATING;
        aclone[3] = INITIATED;
        $VALUES = aclone;
    }

    private I(String s, int i)
    {
        super(s, i);
    }
}
