// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.model;


public class ZoomModel
{

    private float a;

    public ZoomModel()
    {
        a = 1.0F;
    }

    public void a()
    {
        a = 1.0F;
    }

    public void a(float f)
    {
        a = f * a;
        a = Math.max(1.0F, Math.min(a, 1.8F));
    }

    public float b()
    {
        return (a - 1.0F) / 0.8F;
    }
}
