// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.widget.FrameLayout;
import android.widget.MediaController;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemRemoteVideoAdapter

class a
    implements Runnable
{

    final DSnapItemRemoteVideoAdapter a;

    public void run()
    {
        android.widget.oteVideoAdapter otevideoadapter = (android.widget.oteVideoAdapter)DSnapItemRemoteVideoAdapter.a(a).getLayoutParams();
        otevideoadapter.ttomMargin = DSnapItemRemoteVideoAdapter.b(a).getMeasuredHeight();
        DSnapItemRemoteVideoAdapter.a(a).setLayoutParams(otevideoadapter);
    }

    (DSnapItemRemoteVideoAdapter dsnapitemremotevideoadapter)
    {
        a = dsnapitemremotevideoadapter;
        super();
    }
}
