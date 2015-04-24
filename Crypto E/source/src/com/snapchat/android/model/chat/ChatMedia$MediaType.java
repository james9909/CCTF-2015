// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;


// Referenced classes of package com.snapchat.android.model.chat:
//            ChatMedia

public static final class _cls9 extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES IMAGE;
    public static final .VALUES VIDEO;
    public static final .VALUES VIDEO_NO_SOUND;

    public static _cls9 valueOf(String s)
    {
        return (_cls9)Enum.valueOf(com/snapchat/android/model/chat/ChatMedia$MediaType, s);
    }

    public static _cls9[] values()
    {
        return (_cls9[])$VALUES.clone();
    }

    static 
    {
        IMAGE = new <init>("IMAGE", 0);
        VIDEO = new <init>("VIDEO", 1);
        VIDEO_NO_SOUND = new <init>("VIDEO_NO_SOUND", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = IMAGE;
        aclone[1] = VIDEO;
        aclone[2] = VIDEO_NO_SOUND;
        $VALUES = aclone;
    }

    private _cls9(String s, int i)
    {
        super(s, i);
    }
}
