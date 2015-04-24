// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;

// Referenced classes of package com.google.android.gms.internal:
//            he

public final class eb extends FrameLayout
    implements android.view.View.OnClickListener
{

    private final Activity nL;
    private final ImageButton tk;

    public eb(Activity activity, int i)
    {
        super(activity);
        nL = activity;
        setOnClickListener(this);
        tk = new ImageButton(activity);
        tk.setImageResource(0x1080017);
        tk.setBackgroundColor(0);
        tk.setOnClickListener(this);
        tk.setPadding(0, 0, 0, 0);
        tk.setContentDescription("Interstitial close button");
        int j = he.a(activity, i);
        addView(tk, new android.widget.FrameLayout.LayoutParams(j, j, 17));
    }

    public void onClick(View view)
    {
        nL.finish();
    }

    public void r(boolean flag)
    {
        ImageButton imagebutton = tk;
        byte byte0;
        if (flag)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        imagebutton.setVisibility(byte0);
    }
}
