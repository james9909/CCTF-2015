// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            ReleaseMessage

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES DELETE;
    public static final .VALUES DISPLAY;
    public static final .VALUES RELEASE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        RELEASE = new <init>("RELEASE", 0);
        DELETE = new <init>("DELETE", 1);
        DISPLAY = new <init>("DISPLAY", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = RELEASE;
        aclone[1] = DELETE;
        aclone[2] = DISPLAY;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
