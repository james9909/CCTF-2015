// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import com.snapchat.android.discover.controller.DiscoverMediaManager;
import com.snapchat.android.discover.model.MediaState;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapView

class a
    implements StatePresenter.OnTapToRetryListener
{

    final DSnapView a;

    public void a(MediaState mediastate)
    {
        DSnapView.a(a).c();
    }

    e(DSnapView dsnapview)
    {
        a = dsnapview;
        super();
    }
}
