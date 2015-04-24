// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.analytics;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

// Referenced classes of package com.brightcove.player.analytics:
//            Analytics

class this._cls0
    implements EventListener
{

    final Analytics this$0;

    public void processEvent(Event event)
    {
        Map map = (Map)event.properties.get("baseParams");
        if (map != null)
        {
            Analytics.access$000(Analytics.this).clear();
            Analytics.access$000(Analytics.this).putAll(map);
        }
        Analytics.access$100(Analytics.this);
    }

    ()
    {
        this$0 = Analytics.this;
        super();
    }
}
