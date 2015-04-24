// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware;


// Referenced classes of package com.snapchat.android.camera.hardware:
//            SnapchatCameraManagerImpl, CameraManager

public class CameraManagerFactory
{

    private static SnapchatCameraManagerImpl a;

    public CameraManagerFactory()
    {
    }

    public static CameraManager a()
    {
        com/snapchat/android/camera/hardware/CameraManagerFactory;
        JVM INSTR monitorenter ;
        SnapchatCameraManagerImpl snapchatcameramanagerimpl;
        if (a == null)
        {
            a = new SnapchatCameraManagerImpl();
        }
        snapchatcameramanagerimpl = a;
        com/snapchat/android/camera/hardware/CameraManagerFactory;
        JVM INSTR monitorexit ;
        return snapchatcameramanagerimpl;
        Exception exception;
        exception;
        throw exception;
    }
}
