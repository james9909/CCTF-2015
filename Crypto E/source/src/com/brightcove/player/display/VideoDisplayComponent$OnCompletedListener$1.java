// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.util.Map;
import java.util.UUID;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class val.uniqueKey
    implements EventListener
{

    final is._cls0 this$1;
    final UUID val$uniqueKey;

    public void processEvent(Event event)
    {
        Log.v(VideoDisplayComponent.access$1200(), "OnCompletedListener: WILL_CHANGE_VIDEO");
        if (event.properties.get("uuid").equals(val$uniqueKey))
        {
            destroyPlayer();
            Log.v(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("OnCompletedListener: currentSource = ").append(currentSource).append(", nextSource = ").append(nextSource).toString());
            currentVideo = nextVideo;
            nextVideo = null;
            currentSource = nextSource;
            nextSource = null;
            VideoDisplayComponent.access$2500(_fld0).once("didSetSource", new EventListener() {

                final VideoDisplayComponent.OnCompletedListener._cls1 this$2;

                public void processEvent(Event event1)
                {
                    VideoDisplayComponent.access$2400(this$0).emit("play");
                }

            
            {
                this$2 = VideoDisplayComponent.OnCompletedListener._cls1.this;
                super();
            }
            });
            openVideo(currentVideo, currentSource);
        }
    }

    _cls1.this._cls2()
    {
        this$1 = final__pcls2;
        val$uniqueKey = UUID.this;
        super();
    }
}
