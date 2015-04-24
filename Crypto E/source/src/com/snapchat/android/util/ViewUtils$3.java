// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

// Referenced classes of package com.snapchat.android.util:
//            ViewUtils

static final class c
    implements Runnable
{

    final View a;
    final int b;
    final View c;

    public void run()
    {
        Rect rect = new Rect();
        a.getHitRect(rect);
        rect.top = rect.top - b;
        rect.left = rect.left - b;
        rect.right = rect.right + b;
        rect.bottom = rect.bottom + b;
        c.setTouchDelegate(new TouchDelegate(rect, a));
    }

    (View view, int i, View view1)
    {
        a = view;
        b = i;
        c = view1;
        super();
    }
}
