// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import android.app.Activity;

public class GetCurrentActivityEvent
{
    public static interface OnActivityListener
    {

        public abstract void a(Activity activity);
    }


    OnActivityListener a;

    public GetCurrentActivityEvent(OnActivityListener onactivitylistener)
    {
        a = onactivitylistener;
    }

    public OnActivityListener a()
    {
        return a;
    }
}
