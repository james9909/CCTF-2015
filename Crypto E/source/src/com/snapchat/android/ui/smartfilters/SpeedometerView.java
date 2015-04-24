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
import android.widget.ImageView;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SpeedUpdatedEvent;
import com.squareup.otto.Bus;

public class SpeedometerView extends FrameLayout
{

    private static float a = 9999.9F;
    private final SharedPreferences b;
    private boolean c;
    private float d;

    public SpeedometerView(Context context)
    {
        super(context);
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f040087, this, true);
        b = PreferenceManager.getDefaultSharedPreferences(context);
        c = b.getBoolean(SharedPreferenceKey.ae.a(), LocalizationUtils.a());
        setSpeed(0.0F);
    }

    private static int a(int i)
    {
        switch (i % 10)
        {
        default:
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Invalid input: ").append(i).toString());

        case 0: // '\0'
            return 0x7f0201ce;

        case 1: // '\001'
            return 0x7f0201cf;

        case 2: // '\002'
            return 0x7f0201d0;

        case 3: // '\003'
            return 0x7f0201d1;

        case 4: // '\004'
            return 0x7f0201d2;

        case 5: // '\005'
            return 0x7f0201d3;

        case 6: // '\006'
            return 0x7f0201d4;

        case 7: // '\007'
            return 0x7f0201d5;

        case 8: // '\b'
            return 0x7f0201d6;

        case 9: // '\t'
            return 0x7f0201d7;
        }
    }

    private void setSpeed(float f)
    {
        float f1;
        float f2;
        ImageView imageview;
        ImageView imageview1;
        int i;
        ImageView imageview2;
        int j;
        ImageView imageview3;
        int k;
        ImageView imageview4;
        ImageView imageview5;
        int l;
        ImageView imageview6;
        if (c)
        {
            f1 = (float)(2.2370000000000001D * (double)f);
        } else
        {
            f1 = (float)(3.6000000000000001D * (double)f);
        }
        if (Float.isNaN(f1) || f1 < 0.0F || f1 > a)
        {
            (new ErrorMetric("SpeedometerView: Invalid speed")).a("speed", Float.toString(f1)).c();
            f2 = 0.0F;
        } else
        {
            f2 = f1;
        }
        imageview = (ImageView)findViewById(0x7f0a02e2);
        imageview1 = (ImageView)findViewById(0x7f0a02e3);
        i = (int)(f2 / 1000F);
        if (i == 0)
        {
            imageview.setVisibility(8);
            imageview1.setVisibility(8);
        } else
        {
            imageview.setVisibility(0);
            imageview.setImageResource(a(i));
            imageview1.setVisibility(0);
        }
        imageview2 = (ImageView)findViewById(0x7f0a02e4);
        j = (int)(f2 / 100F) % 10;
        if (i == 0 && j == 0)
        {
            imageview2.setVisibility(8);
        } else
        {
            imageview2.setVisibility(0);
            imageview2.setImageResource(a(j));
        }
        imageview3 = (ImageView)findViewById(0x7f0a02e5);
        k = (int)(f2 / 10F) % 10;
        if (i == 0 && j == 0 && k == 0)
        {
            imageview3.setVisibility(8);
        } else
        {
            imageview3.setVisibility(0);
            imageview3.setImageResource(a(k));
        }
        ((ImageView)findViewById(0x7f0a02e6)).setImageResource(a((int)f2 % 10));
        imageview4 = (ImageView)findViewById(0x7f0a02e8);
        imageview5 = (ImageView)findViewById(0x7f0a02e7);
        l = (int)(10F * f2) % 10;
        if (i != 0 || j != 0 || f2 == 0.0F)
        {
            imageview4.setVisibility(8);
            imageview5.setVisibility(8);
        } else
        {
            imageview4.setVisibility(0);
            imageview4.setImageResource(a(l));
            imageview5.setVisibility(0);
        }
        imageview6 = (ImageView)findViewById(0x7f0a02e9);
        if (c)
        {
            imageview6.setImageResource(0x7f0201da);
            return;
        } else
        {
            imageview6.setImageResource(0x7f0201d9);
            return;
        }
    }

    public boolean a(MotionEvent motionevent)
    {
        ViewGroup viewgroup = (ViewGroup)findViewById(0x7f0a02e1);
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

    public void onSpeedUpdatedEvent(SpeedUpdatedEvent speedupdatedevent)
    {
        d = speedupdatedevent.a;
        setSpeed(d);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        android.content.SharedPreferences.Editor editor;
        if (!c)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
        editor = b.edit();
        editor.putBoolean(SharedPreferenceKey.ae.a(), c);
        editor.apply();
        setSpeed(d);
        return true;
    }

}
