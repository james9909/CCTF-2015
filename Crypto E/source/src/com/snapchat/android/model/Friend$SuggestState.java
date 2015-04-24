// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            Friend

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ADDRESS_BOOK;
    public static final .VALUES DOES_NOT_EXIST;
    public static final .VALUES EXISTS;
    public static final .VALUES FAILED;
    public static final .VALUES NOT_SUGGESTION;
    public static final .VALUES PENDING;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/Friend$SuggestState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NOT_SUGGESTION = new <init>("NOT_SUGGESTION", 0);
        PENDING = new <init>("PENDING", 1);
        FAILED = new <init>("FAILED", 2);
        EXISTS = new <init>("EXISTS", 3);
        DOES_NOT_EXIST = new <init>("DOES_NOT_EXIST", 4);
        ADDRESS_BOOK = new <init>("ADDRESS_BOOK", 5);
        e_3B_.clone aclone[] = new <init>[6];
        aclone[0] = NOT_SUGGESTION;
        aclone[1] = PENDING;
        aclone[2] = FAILED;
        aclone[3] = EXISTS;
        aclone[4] = DOES_NOT_EXIST;
        aclone[5] = ADDRESS_BOOK;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
