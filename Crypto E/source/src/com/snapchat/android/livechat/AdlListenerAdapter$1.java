// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import com.addlive.service.listener.AddLiveServiceListener;
import com.addlive.service.listener.VideoFrameSizeChangedEvent;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlListenerAdapter

class a
    implements Runnable
{

    final VideoFrameSizeChangedEvent a;
    final AdlListenerAdapter b;

    public void run()
    {
        AdlListenerAdapter.a(b).onVideoFrameSizeChanged(a);
    }

    vent(AdlListenerAdapter adllisteneradapter, VideoFrameSizeChangedEvent videoframesizechangedevent)
    {
        b = adllisteneradapter;
        a = videoframesizechangedevent;
        super();
    }
}
