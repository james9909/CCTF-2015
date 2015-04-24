// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            HereAnalytics

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CONNECTED;
    public static final .VALUES CONNECTING;
    public static final .VALUES DISCONNECTED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/HereAnalytics$OutgoingVideoState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        DISCONNECTED = new <init>("DISCONNECTED", 0);
        CONNECTING = new <init>("CONNECTING", 1);
        CONNECTED = new <init>("CONNECTED", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = DISCONNECTED;
        aclone[1] = CONNECTING;
        aclone[2] = CONNECTED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
