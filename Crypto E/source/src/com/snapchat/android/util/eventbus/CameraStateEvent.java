// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class CameraStateEvent
{

    public final boolean a;
    public final com.snapchat.android.camera.model.CameraModel.CameraType b;

    public CameraStateEvent(boolean flag)
    {
        this(flag, null);
    }

    public CameraStateEvent(boolean flag, com.snapchat.android.camera.model.CameraModel.CameraType cameratype)
    {
        a = flag;
        b = cameratype;
    }
}
