// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.media.MediaPlayer;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.util.EventUtil;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class this._cls0
    implements android.media.stener
{

    final VideoDisplayComponent this$0;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        if (!VideoDisplayComponent.access$3200(VideoDisplayComponent.this))
        {
            VideoDisplayComponent.access$802(VideoDisplayComponent.this, true);
            if (currentSource.getDeliveryType() != DeliveryType.HLS && currentSource.getDeliveryType() != DeliveryType.WVM)
            {
                EventUtil.emit(VideoDisplayComponent.access$3500(VideoDisplayComponent.this), "didSetSource", currentVideo, currentSource);
            }
            emitVideoSize(mediaplayer.getVideoWidth(), mediaplayer.getVideoHeight());
            HashMap hashmap = new HashMap();
            hashmap.put("video", currentVideo);
            hashmap.put("source", currentSource);
            hashmap.put("duration", Integer.valueOf(mediaplayer.getDuration()));
            VideoDisplayComponent.access$3600(VideoDisplayComponent.this).emit("videoDurationChanged", hashmap);
        }
    }

    ()
    {
        this$0 = VideoDisplayComponent.this;
        super();
    }
}
