// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.rendering;

import android.content.Context;
import android.view.ViewGroup;
import com.snapchat.android.rendering.image.ImageSnapRenderer;
import com.snapchat.android.rendering.video.VideoSnapRenderer;

// Referenced classes of package com.snapchat.android.rendering:
//            SnapMediaRenderer

public class RendererManager
{

    private final SnapMediaRenderer a[] = new SnapMediaRenderer[2];
    private final SnapMediaRenderer b[] = new SnapMediaRenderer[2];
    private int c;
    private int d;

    public RendererManager(Context context)
    {
        int i = 0;
        super();
        c = 0;
        d = 0;
        for (; i < 2; i++)
        {
            a[i] = new VideoSnapRenderer(context);
            b[i] = new ImageSnapRenderer(context);
        }

    }

    public SnapMediaRenderer a(boolean flag)
    {
        if (flag)
        {
            SnapMediaRenderer asnapmediarenderer1[] = a;
            int j = c;
            c = j + 1;
            return asnapmediarenderer1[j % 2];
        } else
        {
            SnapMediaRenderer asnapmediarenderer[] = b;
            int i = d;
            d = i + 1;
            return asnapmediarenderer[i % 2];
        }
    }

    public void a()
    {
        for (int i = 0; i < 2; i++)
        {
            a[i].d();
            b[i].d();
        }

    }

    public void a(ViewGroup viewgroup)
    {
        for (int i = 0; i < 2; i++)
        {
            a[i].a(viewgroup);
            b[i].a(viewgroup);
        }

    }

    public void a(SnapMediaRenderer snapmediarenderer)
    {
        for (int i = 0; i < 2; i++)
        {
            if (a[i] != snapmediarenderer)
            {
                a[i].d();
            }
            if (b[i] != snapmediarenderer)
            {
                b[i].d();
            }
        }

    }
}
