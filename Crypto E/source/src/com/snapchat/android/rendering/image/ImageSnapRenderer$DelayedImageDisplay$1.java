// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.image;

import android.view.ViewTreeObserver;

// Referenced classes of package com.snapchat.android.rendering.image:
//            ImageSnapRenderer

class a
    implements android.view.r.DelayedImageDisplay._cls1
{

    final ViewTreeObserver a;
    final a b;

    public boolean onPreDraw()
    {
        if (a != null && a.isAlive())
        {
            a.removeOnPreDrawListener(this);
        }
        return false;
    }

    ( , ViewTreeObserver viewtreeobserver)
    {
        b = ;
        a = viewtreeobserver;
        super();
    }
}
