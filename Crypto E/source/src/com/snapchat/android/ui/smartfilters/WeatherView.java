// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.smartfilters;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.location.GeofilterManager;
import com.snapchat.android.model.WeatherData;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.WeatherUpdatedEvent;
import com.squareup.otto.Bus;

public class WeatherView extends FrameLayout
{

    private final SharedPreferences a;
    private boolean b;

    public WeatherView(Context context)
    {
        super(context);
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f040094, this, true);
        a = PreferenceManager.getDefaultSharedPreferences(context);
        b = a.getBoolean(SharedPreferenceKey.ad.a(), LocalizationUtils.a());
        a();
    }

    private void a()
    {
        TextView textview = (TextView)findViewById(0x7f0a0323);
        TextView textview1 = (TextView)findViewById(0x7f0a0324);
        WeatherData weatherdata = GeofilterManager.a().d();
        if (weatherdata == null)
        {
            textview.setVisibility(8);
            textview1.setVisibility(8);
            (new EasyMetric("Weather not loaded")).c();
            return;
        }
        String s;
        int i;
        if (b)
        {
            s = weatherdata.b();
            i = 0x7f0c00bd;
        } else
        {
            s = weatherdata.a();
            i = 0x7f0c00bc;
        }
        textview.setText(s);
        textview.setVisibility(0);
        textview1.setText(i);
        textview1.setVisibility(0);
    }

    public boolean a(MotionEvent motionevent)
    {
        ViewGroup viewgroup = (ViewGroup)findViewById(0x7f0a0322);
        Rect rect = new Rect();
        viewgroup.getHitRect(rect);
        return rect.contains((int)motionevent.getX(), (int)motionevent.getY());
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        BusProvider.a().c(this);
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        BusProvider.a().b(this);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        android.content.SharedPreferences.Editor editor;
        if (!b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
        editor = a.edit();
        editor.putBoolean(SharedPreferenceKey.ad.a(), b);
        editor.apply();
        a();
        return true;
    }

    public void onWeatherUpdatedEvent(WeatherUpdatedEvent weatherupdatedevent)
    {
        a();
    }
}
