// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


public class ChangeBrightnessEvent
{

    public float a;

    public ChangeBrightnessEvent(float f)
    {
        if ((f < 0.0F || f > 1.0F) && f != -1F)
        {
            throw new RuntimeException("Brightness must be a float between 0 and 1, or WindowManager.LayoutParams.BRIGHTNESS_OVERRIDE_NONE");
        } else
        {
            a = f;
            return;
        }
    }
}
