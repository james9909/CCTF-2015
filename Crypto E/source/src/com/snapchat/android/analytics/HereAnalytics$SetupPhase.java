// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            HereAnalytics

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES HERE_ADL_CONNECTED;
    public static final .VALUES HERE_ADL_REMOTE_PEER_JOINED;
    public static final .VALUES HERE_AVAILABLE;
    public static final .VALUES HERE_CONFIRMED;
    public static final .VALUES HERE_PUBLISHED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/HereAnalytics$SetupPhase, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        HERE_AVAILABLE = new <init>("HERE_AVAILABLE", 0);
        HERE_ADL_CONNECTED = new <init>("HERE_ADL_CONNECTED", 1);
        HERE_ADL_REMOTE_PEER_JOINED = new <init>("HERE_ADL_REMOTE_PEER_JOINED", 2);
        HERE_PUBLISHED = new <init>("HERE_PUBLISHED", 3);
        HERE_CONFIRMED = new <init>("HERE_CONFIRMED", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = HERE_AVAILABLE;
        aclone[1] = HERE_ADL_CONNECTED;
        aclone[2] = HERE_ADL_REMOTE_PEER_JOINED;
        aclone[3] = HERE_PUBLISHED;
        aclone[4] = HERE_CONFIRMED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
