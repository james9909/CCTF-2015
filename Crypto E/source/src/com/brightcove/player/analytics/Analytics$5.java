// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.analytics;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.util.Map;

// Referenced classes of package com.brightcove.player.analytics:
//            Analytics

class this._cls0
    implements EventListener
{

    final Analytics this$0;

    public void processEvent(Event event)
    {
        Video video = (Video)event.properties.get("video");
        int i = event.getIntegerProperty("playheadPosition");
        if (i >= 0)
        {
            if (Math.abs(Analytics.access$200(Analytics.this) - i) > 5000)
            {
                Analytics.access$400(Analytics.this, event, Analytics.access$300(Analytics.this), Analytics.access$200(Analytics.this));
                Analytics.access$302(Analytics.this, Analytics.access$202(Analytics.this, i));
            } else
            {
                Analytics.access$202(Analytics.this, i);
                if (!Analytics.access$700(Analytics.this) && video != null && Analytics.access$200(Analytics.this) != 0)
                {
                    Analytics.access$500(Analytics.this, event, "video_view", null);
                    Analytics.access$702(Analytics.this, true);
                }
                if (Analytics.access$200(Analytics.this) - Analytics.access$300(Analytics.this) >= 10000)
                {
                    Analytics.access$400(Analytics.this, event, Analytics.access$300(Analytics.this), Analytics.access$200(Analytics.this));
                    Analytics.access$302(Analytics.this, Analytics.access$200(Analytics.this));
                    return;
                }
            }
        }
    }

    ()
    {
        this$0 = Analytics.this;
        super();
    }
}
