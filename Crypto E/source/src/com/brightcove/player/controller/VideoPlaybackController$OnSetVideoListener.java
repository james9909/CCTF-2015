// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.net.URI;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.brightcove.player.controller:
//            VideoPlaybackController

public class this._cls0
    implements EventListener
{

    final VideoPlaybackController this$0;

    public void processEvent(Event event)
    {
        Video video = (Video)event.properties.get("video");
        Log.v(VideoPlaybackController.TAG, (new StringBuilder()).append("OnSetVideoListener: ").append(video).toString());
        Object obj = video.getProperties().get("stillImageUri");
        if (obj != null && (obj instanceof URI))
        {
            URI uri = (URI)obj;
            HashMap hashmap1 = new HashMap();
            hashmap1.put("video_still", uri);
            VideoPlaybackController.access$500(VideoPlaybackController.this).emit("setVideoStill", hashmap1);
        }
        List list = video.getCuePoints();
        if (list != null)
        {
            VideoPlaybackController.access$100(VideoPlaybackController.this).addAll(list);
        }
        HashMap hashmap = new HashMap();
        hashmap.put("video", video);
        tener tener = new tener(VideoPlaybackController.this);
        tener.currentVideo = video;
        VideoPlaybackController.access$600(VideoPlaybackController.this).request("selectSource", hashmap, tener);
    }

    protected tener()
    {
        this$0 = VideoPlaybackController.this;
        super();
    }
}
