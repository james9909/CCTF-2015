// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;


// Referenced classes of package com.snapchat.android.livechat:
//            AdlHelper

static final class  extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    public static final f e;
    private static final f f[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/livechat/AdlHelper$ConnectionState, s);
    }

    public static [] values()
    {
        return ([])f.clone();
    }

    static 
    {
        a = new <init>("DISCONNECTED", 0);
        b = new <init>("REQUESTED", 1);
        c = new <init>("CONNECTING", 2);
        d = new <init>("CONNECTED", 3);
        e = new <init>("DEFERRED_DISCONNECTING", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        f = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
