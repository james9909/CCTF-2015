// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.Map;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

public class this._cls0
    implements EventListener
{

    final VideoDisplayComponent this$0;

    public void processEvent(Event event)
    {
label0:
        {
            Log.v(VideoDisplayComponent.access$1200(), "OnSetSourceListener");
            destroyPlayer();
            currentVideo = (Video)event.properties.get("video");
            currentSource = (Source)event.properties.get("source");
            if (currentSource != null && currentSource.getUrl() != null)
            {
                if (currentSource.getDeliveryType() == DeliveryType.HLS || currentSource.getDeliveryType() == DeliveryType.WVM)
                {
                    break label0;
                }
                openVideo(currentVideo, currentSource);
            }
            return;
        }
        EventUtil.emit(VideoDisplayComponent.access$1600(VideoDisplayComponent.this), "didSetSource", currentVideo, currentSource);
    }

    protected ()
    {
        this$0 = VideoDisplayComponent.this;
        super();
    }
}
