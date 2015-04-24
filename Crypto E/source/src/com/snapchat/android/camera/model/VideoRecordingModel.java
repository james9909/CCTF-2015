// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.model;

import com.snapchat.android.camera.videocamera.VideoCameraHandler;

public class VideoRecordingModel
{

    private boolean a;
    private VideoCameraHandler b;
    private boolean c;

    public VideoRecordingModel()
    {
    }

    public void a(VideoCameraHandler videocamerahandler)
    {
        b = videocamerahandler;
    }

    public void a(boolean flag)
    {
        a = flag;
    }

    public boolean a()
    {
        return a;
    }

    public VideoCameraHandler b()
    {
        return b;
    }

    public void b(boolean flag)
    {
        c = flag;
    }

    public boolean c()
    {
        return c;
    }
}
