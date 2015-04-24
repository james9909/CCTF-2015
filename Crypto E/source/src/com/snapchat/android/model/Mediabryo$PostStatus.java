// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            Mediabryo

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES FAILED;
    public static final .VALUES NOT_POSTED;
    public static final .VALUES POSTED;
    public static final .VALUES POSTING;
    public static final .VALUES POSTING_ON_UPLOAD;
    public static final .VALUES WILL_POST_AFTER_SAVE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/Mediabryo$PostStatus, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NOT_POSTED = new <init>("NOT_POSTED", 0);
        POSTING = new <init>("POSTING", 1);
        WILL_POST_AFTER_SAVE = new <init>("WILL_POST_AFTER_SAVE", 2);
        POSTING_ON_UPLOAD = new <init>("POSTING_ON_UPLOAD", 3);
        POSTED = new <init>("POSTED", 4);
        FAILED = new <init>("FAILED", 5);
        s_3B_.clone aclone[] = new <init>[6];
        aclone[0] = NOT_POSTED;
        aclone[1] = POSTING;
        aclone[2] = WILL_POST_AFTER_SAVE;
        aclone[3] = POSTING_ON_UPLOAD;
        aclone[4] = POSTED;
        aclone[5] = FAILED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
