// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.ui:
//            VideoFilterView, SwipeVideoViewController

class <init>
    implements com.snapchat.videotranscoder.task.
{

    final VideoFilterView a;
    private boolean b;

    public void a(int i)
    {
        if (b)
        {
            VideoFilterView.f(a).a(VideoFilterView.a(a));
            b = false;
        }
        Timber.c("VideoFilterView", (new StringBuilder()).append("Rendering is ").append(Integer.toString(i)).append("% complete").toString(), new Object[0]);
    }

    private (VideoFilterView videofilterview)
    {
        a = videofilterview;
        super();
        b = true;
    }

    b(VideoFilterView videofilterview, b b1)
    {
        this(videofilterview);
    }
}
