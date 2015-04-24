// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.view.animation.Animation;

// Referenced classes of package com.snapchat.android.ui.caption:
//            CaptionEditText

class d
    implements android.view.animation.mation._cls1
{

    final CaptionEditText a;
    final boolean b;
    final int c;
    final int d;
    final e e;

    public void onAnimationEnd(Animation animation)
    {
        if (b)
        {
            e.e.setVisibility(0);
            e.e.setAlpha(1.0F);
            e.e.setCursorVisible(true);
        } else
        {
            e.e.setVisibility(4);
            e.e.setAlpha(0.0F);
        }
        e.e.invalidate();
        e.e.a(c, d);
        e.e.clearAnimation();
        e.e.e = false;
        e.e.d = false;
        CaptionEditText.a(e.e, false);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        e.e.d = true;
    }

    ( , CaptionEditText captionedittext, boolean flag, int i, int j)
    {
        e = ;
        a = captionedittext;
        b = flag;
        c = i;
        d = j;
        super();
    }
}
