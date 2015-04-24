// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.analytics;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

// Referenced classes of package com.brightcove.player.analytics:
//            Analytics

class this._cls0
    implements EventListener
{

    final Analytics this$0;

    public void processEvent(Event event)
    {
        int i = event.getIntegerProperty("seekPosition");
        if (i <= 0 || i - Analytics.access$200(Analytics.this) <= 1000)
        {
            return;
        } else
        {
            Analytics.access$400(Analytics.this, event, Analytics.access$300(Analytics.this), Analytics.access$200(Analytics.this));
            Analytics.access$302(Analytics.this, Analytics.access$202(Analytics.this, i));
            return;
        }
    }

    ()
    {
        this$0 = Analytics.this;
        super();
    }
}
