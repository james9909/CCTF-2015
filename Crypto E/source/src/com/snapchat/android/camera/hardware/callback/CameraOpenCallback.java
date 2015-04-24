// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware.callback;

import com.snapchat.android.camera.hardware.CameraManager;

public interface CameraOpenCallback
{

    public abstract void a(com.snapchat.android.camera.hardware.CameraManager.CameraProxy cameraproxy, int i);

    public abstract void a(CameraManager cameramanager);

    public abstract void b(int i);

    public abstract void c(int i);
}
