// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import com.snapchat.videotranscoder.task.TaskExecutor;

// Referenced classes of package com.snapchat.android.ui:
//            VideoFilterView

class a
    implements Runnable
{

    final VideoFilterView a;

    public void run()
    {
        VideoFilterView.b(a).a(VideoFilterView.a(a), new nderDoneCallBack(a, null), new ogressUpdateCallback(a, null));
    }

    utor(VideoFilterView videofilterview)
    {
        a = videofilterview;
        super();
    }
}
