// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.image;

import com.snapchat.android.analytics.SnapViewEventAnalytics;

// Referenced classes of package com.snapchat.android.rendering.image:
//            ImageSnapRenderer

class a
    implements Runnable
{

    final ImageSnapRenderer a;

    public void run()
    {
        ImageSnapRenderer.c(a).b("DelayToShowImage");
        com.snapchat.android.rendering.apRendererListener aprendererlistener = ImageSnapRenderer.d(a);
        if (aprendererlistener != null)
        {
            aprendererlistener.a();
        }
    }

    ererListener(ImageSnapRenderer imagesnaprenderer)
    {
        a = imagesnaprenderer;
        super();
    }
}
