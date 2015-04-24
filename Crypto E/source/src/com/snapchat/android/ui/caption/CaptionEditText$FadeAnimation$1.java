// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.view.animation.Animation;

// Referenced classes of package com.snapchat.android.ui.caption:
//            CaptionEditText

class b
    implements android.view.animation.mation._cls1
{

    final CaptionEditText a;
    final boolean b;
    final c c;

    public void onAnimationEnd(Animation animation)
    {
        if (b)
        {
            c.c.setVisibility(0);
            c.c.setAlpha(1.0F);
            c.c.setCursorVisible(true);
        } else
        {
            c.c.setVisibility(4);
            c.c.setAlpha(0.0F);
        }
        c.c.invalidate();
        c.c.clearAnimation();
        c.c.e = false;
        c.c.d = false;
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        c.c.d = true;
    }

    ( , CaptionEditText captionedittext, boolean flag)
    {
        c = ;
        a = captionedittext;
        b = flag;
        super();
    }
}
