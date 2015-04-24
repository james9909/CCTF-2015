// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.views;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.widget.LinearLayout;
import android.widget.TextView;

public class FeedbackMessageView extends LinearLayout
{

    private TextView a;
    private TextView b;
    private TextView c;
    private boolean d;

    public FeedbackMessageView(Context context)
    {
        this(context, true);
    }

    public FeedbackMessageView(Context context, boolean flag)
    {
        super(context);
        d = flag;
        a(context);
        b(context);
        c(context);
        d(context);
    }

    private void a(Context context)
    {
        setOrientation(1);
        setGravity(3);
        setBackgroundColor(0xffcccccc);
    }

    private void b(Context context)
    {
        a = new TextView(context);
        a.setId(12289);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
        int i = (int)TypedValue.applyDimension(1, 20F, getResources().getDisplayMetrics());
        layoutparams.setMargins(i, i, i, 0);
        a.setLayoutParams(layoutparams);
        a.setShadowLayer(1.0F, 0.0F, 1.0F, -1);
        a.setSingleLine(true);
        a.setTextColor(0xff888888);
        a.setTextSize(2, 15F);
        a.setTypeface(null, 0);
        addView(a);
    }

    private void c(Context context)
    {
        b = new TextView(context);
        b.setId(12290);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
        int i = (int)TypedValue.applyDimension(1, 20F, getResources().getDisplayMetrics());
        layoutparams.setMargins(i, 0, i, 0);
        b.setLayoutParams(layoutparams);
        b.setShadowLayer(1.0F, 0.0F, 1.0F, -1);
        b.setSingleLine(true);
        b.setTextColor(0xff888888);
        b.setTextSize(2, 15F);
        b.setTypeface(null, 2);
        addView(b);
    }

    private void d(Context context)
    {
        c = new TextView(context);
        c.setId(12291);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
        int i = (int)TypedValue.applyDimension(1, 20F, getResources().getDisplayMetrics());
        layoutparams.setMargins(i, 0, i, i);
        c.setLayoutParams(layoutparams);
        c.setShadowLayer(1.0F, 0.0F, 1.0F, -1);
        c.setSingleLine(false);
        c.setTextColor(0xff000000);
        c.setTextSize(2, 18F);
        c.setTypeface(null, 0);
        addView(c);
    }

    private void setAuthorLaberColor(int i)
    {
        if (a != null)
        {
            a.setTextColor(i);
        }
    }

    private void setDateLaberColor(int i)
    {
        if (b != null)
        {
            b.setTextColor(i);
        }
    }

    private void setMessageLaberColor(int i)
    {
        if (c != null)
        {
            c.setTextColor(i);
        }
    }

    public void setAuthorLabelText(String s)
    {
        if (a != null && s != null)
        {
            a.setText(s);
        }
    }

    public void setDateLabelText(String s)
    {
        if (b != null && s != null)
        {
            b.setText(s);
        }
    }

    public void setFeedbackMessageViewBgAndTextColor(int i)
    {
        if (i != 0) goto _L2; else goto _L1
_L1:
        setBackgroundColor(0xffcccccc);
        setAuthorLaberColor(-1);
        setDateLaberColor(-1);
_L4:
        setMessageLaberColor(0xff000000);
        return;
_L2:
        if (i == 1)
        {
            setBackgroundColor(-1);
            setAuthorLaberColor(0xffcccccc);
            setDateLaberColor(0xffcccccc);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setMessageLabelText(String s)
    {
        if (c != null && s != null)
        {
            c.setText(s);
        }
    }
}
