// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.view.View;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.analytics.DiscoverPerformanceAnalytics;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.ui.media.DSnapMediaListener;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapIntroVideoView

class a
    implements DSnapMediaListener
{

    final DSnapIntroVideoView a;

    public void a()
    {
        if (DSnapIntroVideoView.a(a) != null)
        {
            DSnapIntroVideoView.a(a, com.snapchat.android.discover.analytics.Status.b);
            DSnapIntroVideoView.a(a).a();
        }
    }

    public void a(String s)
    {
        Object aobj[] = new Object[2];
        aobj[0] = a.e;
        aobj[1] = s;
        Timber.d("DSnapIntroVideoView", "Skipping intro video for %b because the media failed to load (%s).", aobj);
        a.d.b(a.e.a(), a.e.e(), s);
        a();
    }

    public void b()
    {
        a.a(a.e, null, null);
        DSnapIntroVideoView.b(a).setVisibility(8);
    }

    anceAnalytics(DSnapIntroVideoView dsnapintrovideoview)
    {
        a = dsnapintrovideoview;
        super();
    }
}
