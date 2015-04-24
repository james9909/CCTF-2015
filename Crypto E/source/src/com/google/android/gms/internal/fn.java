// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;

// Referenced classes of package com.google.android.gms.internal:
//            fm, hk, hf, gn

public class fn extends fm
{

    private PopupWindow us;

    fn(Context context, gn.a a, hk hk1, fl.a a1)
    {
        super(context, a, hk1, a1);
    }

    protected void cQ()
    {
        if (mContext instanceof Activity)
        {
            FrameLayout framelayout = new FrameLayout(mContext);
            framelayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
            framelayout.addView(mj.getWebView(), -1, -1);
            us = new PopupWindow(framelayout, 1, 1, false);
            us.setOutsideTouchable(true);
            us.setClippingEnabled(false);
            hf.T("Displaying the 1x1 popup off the screen.");
            us.showAtLocation(((Activity)mContext).getWindow().getDecorView(), 0, -1, -1);
        }
    }

    protected void h(gn gn)
    {
        if (us != null)
        {
            us.dismiss();
            us = null;
        }
        super.h(gn);
    }
}
