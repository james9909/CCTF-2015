// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering.image;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.model.ReceivedSnap;

// Referenced classes of package com.snapchat.android.rendering.image:
//            ImageSnapRenderer

class b
    implements com.snapchat.android.util.cache.er._cls1
{

    final com.snapchat.android.rendering.apRendererListener a;
    final ReceivedSnap b;
    final ImageSnapRenderer c;

    public void a(Bitmap bitmap)
    {
        String s = ImageSnapRenderer.e();
        Object aobj[] = new Object[1];
        String s1;
        if (ImageSnapRenderer.a(c) == null)
        {
            s1 = "?";
        } else
        {
            s1 = ImageSnapRenderer.a(c).d();
        }
        aobj[0] = s1;
        Timber.c(s, "onBitmap loaded for %s", aobj);
        if (bitmap == null)
        {
            a.a(com.snapchat.android.rendering.rorCode.b);
            return;
        } else
        {
            ImageSnapRenderer.b(c).setImageBitmap(bitmap);
            int i = 1000 * (int)b.M();
            a.a(i, bitmap.getWidth(), bitmap.getHeight());
            return;
        }
    }

    ererListener(ImageSnapRenderer imagesnaprenderer, com.snapchat.android.rendering.apRendererListener aprendererlistener, ReceivedSnap receivedsnap)
    {
        c = imagesnaprenderer;
        a = aprendererlistener;
        b = receivedsnap;
        super();
    }
}
