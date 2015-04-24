// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.media.MediaPlayer;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class this._cls0
    implements android.media.Listener
{

    final VideoDisplayComponent this$0;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        if (!VideoDisplayComponent.access$3200(VideoDisplayComponent.this))
        {
            HashMap hashmap = new HashMap();
            if (mediaplayer != null && VideoDisplayComponent.access$800(VideoDisplayComponent.this) && hasSurface)
            {
                hashmap.put("playheadPosition", Integer.valueOf(mediaplayer.getDuration()));
                hashmap.put("duration", Integer.valueOf(mediaplayer.getDuration()));
            }
            hashmap.put("video", currentVideo);
            VideoDisplayComponent.access$3300(VideoDisplayComponent.this).emit("completed", hashmap);
        }
        if (currentSource != null && currentSource.getDeliveryType() == DeliveryType.HLS)
        {
            destroyPlayer();
        }
    }

    ()
    {
        this$0 = VideoDisplayComponent.this;
        super();
    }
}
