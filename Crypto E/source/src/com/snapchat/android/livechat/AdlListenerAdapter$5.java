// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import com.addlive.service.listener.AddLiveServiceListener;
import com.addlive.service.listener.UserStateChangedEvent;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlListenerAdapter

class a
    implements Runnable
{

    final UserStateChangedEvent a;
    final AdlListenerAdapter b;

    public void run()
    {
        AdlListenerAdapter.a(b).onMediaStreamEvent(a);
    }

    (AdlListenerAdapter adllisteneradapter, UserStateChangedEvent userstatechangedevent)
    {
        b = adllisteneradapter;
        a = userstatechangedevent;
        super();
    }
}
