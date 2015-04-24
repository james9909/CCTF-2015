// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.impl;


// Referenced classes of package com.addlive.impl:
//            ADLNativeWrapperImpl

static final class apiName extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CONNECT;
    public static final .VALUES DISCONNECT;
    public static final .VALUES GET_VIDEO_CAPTURE_DEVICE;
    public static final .VALUES GET_VIDEO_CAPTURE_DEVICE_NAMES;
    public static final .VALUES SET_PROPERTY;
    public static final .VALUES SET_VIDEO_CAPTURE_DEVICE;
    public static final .VALUES STOP_LOCAL_VIDEO;
    public static final .VALUES UNKNOWN;
    private String apiName;

    static apiName fromString(String s)
    {
        apiName aapiname[] = values();
        int i = aapiname.length;
        for (int j = 0; j < i; j++)
        {
            apiName apiname = aapiname[j];
            if (apiname.apiName.equals(s))
            {
                return apiname;
            }
        }

        return UNKNOWN;
    }

    public static UNKNOWN valueOf(String s)
    {
        return (UNKNOWN)Enum.valueOf(com/addlive/impl/ADLNativeWrapperImpl$MethodName, s);
    }

    public static UNKNOWN[] values()
    {
        return (UNKNOWN[])$VALUES.clone();
    }

    static 
    {
        CONNECT = new <init>("CONNECT", 0, "connect");
        DISCONNECT = new <init>("DISCONNECT", 1, "disconnect");
        GET_VIDEO_CAPTURE_DEVICE_NAMES = new <init>("GET_VIDEO_CAPTURE_DEVICE_NAMES", 2, "getVideoCaptureDeviceNames");
        SET_VIDEO_CAPTURE_DEVICE = new <init>("SET_VIDEO_CAPTURE_DEVICE", 3, "setVideoCaptureDevice");
        GET_VIDEO_CAPTURE_DEVICE = new <init>("GET_VIDEO_CAPTURE_DEVICE", 4, "getVideoCaptureDevice");
        SET_PROPERTY = new <init>("SET_PROPERTY", 5, "setProperty");
        STOP_LOCAL_VIDEO = new <init>("STOP_LOCAL_VIDEO", 6, "stopLocalVideo");
        UNKNOWN = new <init>("UNKNOWN", 7, "unknown");
        e_3B_.clone aclone[] = new <init>[8];
        aclone[0] = CONNECT;
        aclone[1] = DISCONNECT;
        aclone[2] = GET_VIDEO_CAPTURE_DEVICE_NAMES;
        aclone[3] = SET_VIDEO_CAPTURE_DEVICE;
        aclone[4] = GET_VIDEO_CAPTURE_DEVICE;
        aclone[5] = SET_PROPERTY;
        aclone[6] = STOP_LOCAL_VIDEO;
        aclone[7] = UNKNOWN;
        $VALUES = aclone;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        apiName = s1;
    }
}
