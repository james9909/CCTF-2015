// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            Friend

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES BOTH;
    public static final .VALUES INCOMING;
    public static final .VALUES OUTGOING;
    public static final .VALUES UNKNOWN;

    public static  a(String s)
    {
         ;
        try
        {
             = valueOf(s);
        }
        catch (Exception exception)
        {
            return UNKNOWN;
        }
        return ;
    }

    public static UNKNOWN valueOf(String s)
    {
        return (UNKNOWN)Enum.valueOf(com/snapchat/android/model/Friend$Direction, s);
    }

    public static UNKNOWN[] values()
    {
        return (UNKNOWN[])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0);
        INCOMING = new <init>("INCOMING", 1);
        OUTGOING = new <init>("OUTGOING", 2);
        BOTH = new <init>("BOTH", 3);
        n_3B_.clone aclone[] = new <init>[4];
        aclone[0] = UNKNOWN;
        aclone[1] = INCOMING;
        aclone[2] = OUTGOING;
        aclone[3] = BOTH;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
