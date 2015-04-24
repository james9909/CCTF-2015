// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;


// Referenced classes of package com.snapchat.android.livechat:
//            AdlHelper

static final class  extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    private static final d d[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/livechat/AdlHelper$MediaTransmissionState, s);
    }

    public static [] values()
    {
        return ([])d.clone();
    }

    static 
    {
        a = new <init>("INACTIVE", 0);
        b = new <init>("SETTING_UP", 1);
        c = new <init>("ACTIVE", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        d = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
