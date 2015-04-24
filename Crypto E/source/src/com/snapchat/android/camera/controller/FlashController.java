// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.controller;


public abstract class FlashController
{

    public FlashController()
    {
    }

    public abstract int a();

    public abstract void a(android.hardware.Camera.Parameters parameters, boolean flag);

    public abstract void a(boolean flag);

    public abstract void b(android.hardware.Camera.Parameters parameters, boolean flag);

    public void b(boolean flag)
    {
        b(null, flag);
    }

    public void c(boolean flag)
    {
        a(null, flag);
    }
}
