// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class <init>
    implements EventListener
{

    final VideoDisplayComponent this$0;

    public void processEvent(Event event)
    {
        if (nextSource != null)
        {
            final UUID uniqueKey = UUID.randomUUID();
            VideoDisplayComponent.access$2600(VideoDisplayComponent.this).once("willChangeVideo", new EventListener() {

                final VideoDisplayComponent.OnCompletedListener this$1;
                final UUID val$uniqueKey;

                public void processEvent(Event event1)
                {
                    Log.v(VideoDisplayComponent.access$1200(), "OnCompletedListener: WILL_CHANGE_VIDEO");
                    if (event1.properties.get("uuid").equals(uniqueKey))
                    {
                        destroyPlayer();
                        Log.v(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("OnCompletedListener: currentSource = ").append(currentSource).append(", nextSource = ").append(nextSource).toString());
                        currentVideo = nextVideo;
                        nextVideo = null;
                        currentSource = nextSource;
                        nextSource = null;
                        VideoDisplayComponent.access$2500(this$0).once("didSetSource", new EventListener() {

                            final _cls1 this$2;

                            public void processEvent(Event event)
                            {
                                VideoDisplayComponent.access$2400(this$0).emit("play");
                            }

            
            {
                this$2 = _cls1.this;
                super();
            }
                        });
                        openVideo(currentVideo, currentSource);
                    }
                }

            
            {
                this$1 = VideoDisplayComponent.OnCompletedListener.this;
                uniqueKey = uuid;
                super();
            }
            });
            HashMap hashmap = new HashMap();
            hashmap.put("currentVideo", currentVideo);
            hashmap.put("nextVideo", nextVideo);
            hashmap.put("uuid", uniqueKey);
            VideoDisplayComponent.access$2700(VideoDisplayComponent.this).emit("willChangeVideo", hashmap);
        }
    }

    private _cls1.val.uniqueKey()
    {
        this$0 = VideoDisplayComponent.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
