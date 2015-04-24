// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.smartfilters;

import android.content.Context;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class ClockView extends FrameLayout
{
    static class ClockDigits
    {

        final int a;
        final int b;
        final int c;
        final int d;

        ClockDigits(int i, int j, int k, int l)
        {
            a = i;
            b = j;
            c = k;
            d = l;
        }
    }


    private boolean a;

    public ClockView(Context context, Date date)
    {
        super(context);
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f040030, this, true);
        a = DateFormat.is24HourFormat(context);
        setTime(date);
    }

    protected static int a(int i)
    {
        return i <= 11 ? 0x7f0200d1 : 0x7f0200d3;
    }

    protected static int a(int i, boolean flag)
    {
        switch (i % 10)
        {
        default:
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Invalid input: ").append(i).toString());

        case 0: // '\0'
            return 0x7f0200c6;

        case 1: // '\001'
            return !flag ? 0x7f0200c7 : 0x7f0200c8;

        case 2: // '\002'
            return 0x7f0200c9;

        case 3: // '\003'
            return 0x7f0200ca;

        case 4: // '\004'
            return 0x7f0200cb;

        case 5: // '\005'
            return 0x7f0200cc;

        case 6: // '\006'
            return 0x7f0200cd;

        case 7: // '\007'
            return 0x7f0200ce;

        case 8: // '\b'
            return 0x7f0200cf;

        case 9: // '\t'
            return 0x7f0200d0;
        }
    }

    protected static ClockDigits a(Calendar calendar, boolean flag)
    {
        int i;
        int j;
        int k;
        i = 12;
        j = calendar.get(11);
        k = calendar.get(i);
        if (flag) goto _L2; else goto _L1
_L1:
        if (j > i)
        {
            j -= 12;
        }
        if (j != 0) goto _L2; else goto _L3
_L3:
        return new ClockDigits(i / 10, i % 10, k / 10, k % 10);
_L2:
        i = j;
        if (true) goto _L3; else goto _L4
_L4:
    }

    public void setTime(Date date)
    {
        Calendar calendar = GregorianCalendar.getInstance();
        calendar.setTime(date);
        ImageView imageview = (ImageView)findViewById(0x7f0a0138);
        ClockDigits clockdigits;
        ImageView imageview1;
        if (a)
        {
            imageview.setVisibility(8);
        } else
        {
            imageview.setVisibility(0);
            imageview.setImageResource(a(calendar.get(11)));
        }
        clockdigits = a(calendar, a);
        imageview1 = (ImageView)findViewById(0x7f0a0133);
        if (clockdigits.a == 0 && !a)
        {
            imageview1.setVisibility(8);
        } else
        {
            imageview1.setVisibility(0);
            imageview1.setImageResource(a(clockdigits.a, true));
        }
        ((ImageView)findViewById(0x7f0a0134)).setImageResource(a(clockdigits.b, false));
        ((ImageView)findViewById(0x7f0a0136)).setImageResource(a(clockdigits.c, false));
        ((ImageView)findViewById(0x7f0a0137)).setImageResource(a(clockdigits.d, false));
    }
}
