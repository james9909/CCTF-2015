// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.model;


public class FlashModel
{

    private boolean a;

    public FlashModel()
    {
        a = false;
    }

    public boolean a()
    {
        return a;
    }

    public void b()
    {
        boolean flag;
        if (!a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
