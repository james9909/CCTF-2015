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

class this._cls2
    implements EventListener
{

    final ._cls0 this$2;

    public void processEvent(Event event)
    {
        VideoDisplayComponent.access$2400(_fld0).emit("play");
    }

    l.uniqueKey()
    {
        this$2 = this._cls2.this;
        super();
    }

    // Unreferenced inner class com/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1

/* anonymous class */
    class VideoDisplayComponent.OnCompletedListener._cls1
        implements EventListener
    {

        final VideoDisplayComponent.OnCompletedListener this$1;
        final UUID val$uniqueKey;

        public void processEvent(Event event)
        {
            Log.v(VideoDisplayComponent.access$1200(), "OnCompletedListener: WILL_CHANGE_VIDEO");
            if (event.properties.get("uuid").equals(uniqueKey))
            {
                destroyPlayer();
                Log.v(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("OnCompletedListener: currentSource = ").append(currentSource).append(", nextSource = ").append(nextSource).toString());
                currentVideo = nextVideo;
                nextVideo = null;
                currentSource = nextSource;
                nextSource = null;
                VideoDisplayComponent.access$2500(this$0).once("didSetSource", new VideoDisplayComponent.OnCompletedListener._cls1._cls1());
                openVideo(currentVideo, currentSource);
            }
        }

            
            {
                this$1 = final_oncompletedlistener;
                uniqueKey = UUID.this;
                super();
            }
    }

}
