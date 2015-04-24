// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;


// Referenced classes of package com.snapchat.android.analytics:
//            CameraEventAnalytics

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CAMERA_BUTTON;
    public static final .VALUES CANCEL_PREVIEW;
    public static final .VALUES DOUBLE_TAP;
    public static final .VALUES SNAP_BUTTON;
    public static final .VALUES SWIPE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/analytics/CameraEventAnalytics$CameraContext, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SWIPE = new <init>("SWIPE", 0);
        SNAP_BUTTON = new <init>("SNAP_BUTTON", 1);
        DOUBLE_TAP = new <init>("DOUBLE_TAP", 2);
        CAMERA_BUTTON = new <init>("CAMERA_BUTTON", 3);
        CANCEL_PREVIEW = new <init>("CANCEL_PREVIEW", 4);
        t_3B_.clone aclone[] = new <init>[5];
        aclone[0] = SWIPE;
        aclone[1] = SNAP_BUTTON;
        aclone[2] = DOUBLE_TAP;
        aclone[3] = CAMERA_BUTTON;
        aclone[4] = CANCEL_PREVIEW;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
