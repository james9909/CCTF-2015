// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.image;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;

// Referenced classes of package com.snapchat.android.rendering.image:
//            ImageSnapRenderer

public static class _cls1.a
{

    public void a(ImageView imageview)
    {
        ViewTreeObserver viewtreeobserver = imageview.getRootView().getViewTreeObserver();
        viewtreeobserver.addOnPreDrawListener(new android.view.ViewTreeObserver.OnPreDrawListener(viewtreeobserver) {

            final ViewTreeObserver a;
            final ImageSnapRenderer.DelayedImageDisplay b;

            public boolean onPreDraw()
            {
                if (a != null && a.isAlive())
                {
                    a.removeOnPreDrawListener(this);
                }
                return false;
            }

            
            {
                b = ImageSnapRenderer.DelayedImageDisplay.this;
                a = viewtreeobserver;
                super();
            }
        });
    }

    protected _cls1.a()
    {
    }
}
