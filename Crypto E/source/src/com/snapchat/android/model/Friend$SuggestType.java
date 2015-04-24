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
    public static final .VALUES NONE;
    public static final .VALUES USERNAME;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/Friend$SuggestType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        USERNAME = new <init>("USERNAME", 0);
        ADDRESS_BOOK = new <init>("ADDRESS_BOOK", 1);
        NONE = new <init>("NONE", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = USERNAME;
        aclone[1] = ADDRESS_BOOK;
        aclone[2] = NONE;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
