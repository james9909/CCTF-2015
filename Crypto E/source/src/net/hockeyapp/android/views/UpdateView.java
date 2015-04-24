// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.views;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import net.hockeyapp.android.utils.ViewHelper;

public class UpdateView extends RelativeLayout
{

    protected RelativeLayout a;
    protected boolean b;
    protected boolean c;

    public UpdateView(Context context)
    {
        this(context, true);
    }

    public UpdateView(Context context, AttributeSet attributeset)
    {
        this(context, true, false);
    }

    public UpdateView(Context context, boolean flag)
    {
        this(context, true, false);
    }

    public UpdateView(Context context, boolean flag, boolean flag1)
    {
        super(context);
        a = null;
        b = false;
        c = false;
        if (flag)
        {
            setLayoutHorizontally(context);
        } else
        {
            b = false;
        }
        c = flag1;
        a(context);
        b(context);
        c(context);
        d(a, context);
    }

    private void a(Context context)
    {
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        setBackgroundColor(-1);
        setLayoutParams(layoutparams);
    }

    private void a(RelativeLayout relativelayout, Context context)
    {
        TextView textview = new TextView(context);
        textview.setId(4098);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        int i = (int)TypedValue.applyDimension(1, 20F, getResources().getDisplayMetrics());
        layoutparams.setMargins(i, i, i, 0);
        textview.setLayoutParams(layoutparams);
        textview.setEllipsize(android.text.TextUtils.TruncateAt.END);
        textview.setShadowLayer(1.0F, 0.0F, 1.0F, -1);
        textview.setSingleLine(true);
        textview.setTextColor(0xff000000);
        textview.setTextSize(2, 20F);
        textview.setTypeface(null, 1);
        relativelayout.addView(textview);
    }

    private void b(Context context)
    {
        a = new RelativeLayout(context);
        a.setId(4097);
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (b)
        {
            layoutparams = new android.widget.RelativeLayout.LayoutParams((int)TypedValue.applyDimension(1, 250F, getResources().getDisplayMetrics()), -1);
            layoutparams.addRule(9, -1);
            a.setPadding(0, 0, 0, 0);
        } else
        {
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
            a.setPadding(0, 0, 0, (int)TypedValue.applyDimension(1, 20F, getResources().getDisplayMetrics()));
        }
        a.setLayoutParams(layoutparams);
        a.setBackgroundColor(Color.rgb(230, 236, 239));
        a(a, context);
        b(a, context);
        c(a, context);
        addView(a);
    }

    private void b(RelativeLayout relativelayout, Context context)
    {
        TextView textview = new TextView(context);
        textview.setId(4099);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        int i = (int)TypedValue.applyDimension(1, 20F, getResources().getDisplayMetrics());
        layoutparams.setMargins(i, (int)TypedValue.applyDimension(1, 10F, getResources().getDisplayMetrics()), i, 0);
        layoutparams.addRule(3, 4098);
        textview.setLayoutParams(layoutparams);
        textview.setEllipsize(android.text.TextUtils.TruncateAt.END);
        textview.setShadowLayer(1.0F, 0.0F, 1.0F, -1);
        textview.setLines(2);
        textview.setLineSpacing(0.0F, 1.1F);
        textview.setTextColor(0xff000000);
        textview.setTextSize(2, 16F);
        textview.setTypeface(null, 1);
        relativelayout.addView(textview);
    }

    private void c(Context context)
    {
        WebView webview = new WebView(context);
        webview.setId(4101);
        int i = (int)TypedValue.applyDimension(1, 400F, context.getResources().getDisplayMetrics());
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (!c)
        {
            i = -1;
        }
        layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, i);
        if (b)
        {
            layoutparams.addRule(1, 4097);
        } else
        {
            layoutparams.addRule(3, 4097);
        }
        layoutparams.setMargins(0, 0, 0, 0);
        webview.setLayoutParams(layoutparams);
        webview.setBackgroundColor(-1);
        addView(webview);
    }

    private void c(RelativeLayout relativelayout, Context context)
    {
        Button button = new Button(context);
        button.setId(4100);
        int i = (int)TypedValue.applyDimension(1, 20F, getResources().getDisplayMetrics());
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams((int)TypedValue.applyDimension(1, 120F, getResources().getDisplayMetrics()), -2);
        layoutparams.setMargins(i, i, i, i);
        layoutparams.addRule(9, -1);
        layoutparams.addRule(3, 4099);
        button.setLayoutParams(layoutparams);
        button.setBackgroundDrawable(getButtonSelector());
        button.setText("Update");
        button.setTextColor(-1);
        button.setTextSize(2, 16F);
        relativelayout.addView(button);
    }

    private void d(RelativeLayout relativelayout, Context context)
    {
        int i = (int)TypedValue.applyDimension(1, 3F, getResources().getDisplayMetrics());
        ImageView imageview = new ImageView(context);
        android.widget.RelativeLayout.LayoutParams layoutparams;
        ImageView imageview1;
        android.widget.RelativeLayout.LayoutParams layoutparams1;
        if (b)
        {
            layoutparams = new android.widget.RelativeLayout.LayoutParams(1, -1);
            layoutparams.addRule(11, -1);
            imageview.setBackgroundDrawable(new ColorDrawable(0xff000000));
        } else
        {
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, i);
            layoutparams.addRule(10, -1);
            imageview.setBackgroundDrawable(ViewHelper.a());
        }
        imageview.setLayoutParams(layoutparams);
        relativelayout.addView(imageview);
        imageview1 = new ImageView(context);
        layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, i);
        if (b)
        {
            layoutparams1.addRule(10, -1);
        } else
        {
            layoutparams1.addRule(3, 4097);
        }
        imageview1.setLayoutParams(layoutparams1);
        imageview1.setBackgroundDrawable(ViewHelper.a());
        addView(imageview1);
    }

    private Drawable getButtonSelector()
    {
        StateListDrawable statelistdrawable = new StateListDrawable();
        statelistdrawable.addState(new int[] {
            0xfefeff59
        }, new ColorDrawable(0xff000000));
        statelistdrawable.addState(new int[] {
            0xfefeff59, 0x101009c
        }, new ColorDrawable(0xff444444));
        statelistdrawable.addState(new int[] {
            0x10100a7
        }, new ColorDrawable(0xff888888));
        return statelistdrawable;
    }

    private void setLayoutHorizontally(Context context)
    {
        if (getResources().getConfiguration().orientation == 2)
        {
            b = true;
            return;
        } else
        {
            b = false;
            return;
        }
    }
}
