// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.view.SurfaceHolder;
import com.snapchat.android.Timber;
import com.snapchat.videotranscoder.cts.InputSurface;

// Referenced classes of package com.snapchat.android.ui:
//            VideoFilterView

class <init>
    implements android.view.erCallBack
{

    final VideoFilterView a;

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        VideoFilterView.a(a, new InputSurface(surfaceholder.getSurface(), false));
        VideoFilterView.c(a);
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        Timber.c("VideoFilterView", "Surface destroyed!", new Object[0]);
        VideoFilterView.d(a).a();
        VideoFilterView.e(a);
    }

    private (VideoFilterView videofilterview)
    {
        a = videofilterview;
        super();
    }

    a(VideoFilterView videofilterview, a a1)
    {
        this(videofilterview);
    }
}
