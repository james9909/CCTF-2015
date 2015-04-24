// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.smartfilters;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.snapchat.android.fragments.settings.AdditionalServicesFragment;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;

public class TurnOnFiltersView extends RelativeLayout
{

    public TurnOnFiltersView(Context context)
    {
        super(context);
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f04008f, this, true);
    }

    public boolean a(MotionEvent motionevent)
    {
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        Rect rect = new Rect();
        findViewById(0x7f0a0315).getHitRect(rect);
        if (rect.contains((int)motionevent.getX(), (int)motionevent.getY()))
        {
            BusProvider.a().a(new StartFragmentEvent(new AdditionalServicesFragment()));
        }
        return true;
    }
}
