// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


// Referenced classes of package com.snapchat.android.model:
//            StoryGroup

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES READY;
    public static final .VALUES SAVED;
    public static final .VALUES SAVING;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/StoryGroup$ActionState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        READY = new <init>("READY", 0);
        SAVING = new <init>("SAVING", 1);
        SAVED = new <init>("SAVED", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = READY;
        aclone[1] = SAVING;
        aclone[2] = SAVED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
