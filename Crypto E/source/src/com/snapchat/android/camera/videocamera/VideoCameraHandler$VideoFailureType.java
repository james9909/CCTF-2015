// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.videocamera;


// Referenced classes of package com.snapchat.android.camera.videocamera:
//            VideoCameraHandler

public static final class g extends Enum
{

    public static final h a;
    public static final h b;
    public static final h c;
    public static final h d;
    public static final h e;
    public static final h f;
    private static final h h[];
    private int g;

    public static g valueOf(String s)
    {
        return (g)Enum.valueOf(com/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType, s);
    }

    public static g[] values()
    {
        return (g[])h.clone();
    }

    public int a()
    {
        return g;
    }

    static 
    {
        a = new <init>("VIDEO_STORAGE_EXCEPTION", 0, 0);
        b = new <init>("CAMERA_UNLOCK_EXCEPTION", 1, 1);
        c = new <init>("EXCEPTION_ON_START", 2, 2);
        d = new <init>("EXCEPTION_ON_STOP", 3, 3);
        e = new <init>("INITIALIZATION_ERROR", 4, 4);
        f = new <init>("NO_SURFACE_PROVIDED", 5, 5);
        g ag[] = new <init>[6];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        ag[3] = d;
        ag[4] = e;
        ag[5] = f;
        h = ag;
    }

    private Q(String s, int i, int j)
    {
        super(s, i);
        g = j;
    }
}
