// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;


// Referenced classes of package com.snapchat.android.model.chat:
//            ChatSharedDSnap

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES IMAGE;
    public static final .VALUES VIDEO;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/model/chat/ChatSharedDSnap$MediaType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        IMAGE = new <init>("IMAGE", 0);
        VIDEO = new <init>("VIDEO", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = IMAGE;
        aclone[1] = VIDEO;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
