// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.profile.ui;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.profile.ui:
//            ProfileScrolledListener

public class ProfileViewFlipper extends VerticalSwipeLayout
{

    private int a;
    private int b;
    private int c;
    private int d;

    public ProfileViewFlipper(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setOnScrolledListener(new ProfileScrolledListener(this));
        a(context, attributeset);
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, new int[] {
            0x10100d4
        });
        int i = typedarray.getColor(0, 0);
        a = Color.alpha(i);
        b = Color.red(i);
        c = Color.green(i);
        d = Color.blue(i);
        typedarray.recycle();
        return;
        Exception exception;
        exception;
        typedarray.recycle();
        throw exception;
    }

    private void b(int i)
    {
        int j = getMeasuredHeight();
        float f = (float)(j - i * 2) / (float)j;
        setBackgroundColor(Color.argb((int)(f * (float)a), b, c, d));
        View view = findViewById(0x7f0a0084);
        if (view != null)
        {
            view.setAlpha(f);
        }
        View view1 = findViewById(0x7f0a0085);
        if (view1 != null)
        {
            view1.setAlpha(1.0F - f);
        }
    }

    protected void onScrollChanged(int i, int j, int k, int l)
    {
        super.onScrollChanged(i, j, k, l);
        b(j);
    }

    protected void setFullscreenWindowParams(boolean flag)
    {
        ViewUtils.a(((Activity)getContext()).getWindow(), flag);
    }
}
