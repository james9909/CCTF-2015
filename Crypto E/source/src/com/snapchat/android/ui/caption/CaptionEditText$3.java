// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.os.Handler;

// Referenced classes of package com.snapchat.android.ui.caption:
//            CaptionEditText

class b
    implements Runnable
{

    final Handler a;
    final Runnable b;
    final CaptionEditText c;

    public void run()
    {
        c.setVisibility(4);
        c.a(0);
        a.postDelayed(b, 10L);
    }

    (CaptionEditText captionedittext, Handler handler, Runnable runnable)
    {
        c = captionedittext;
        a = handler;
        b = runnable;
        super();
    }
}
