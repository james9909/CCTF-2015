// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.CuePoint;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

// Referenced classes of package com.brightcove.player.controller:
//            VideoPlaybackController

public class this._cls0
    implements EventListener
{

    final VideoPlaybackController this$0;

    public void processEvent(final Event playEvent)
    {
        Log.v(VideoPlaybackController.TAG, (new StringBuilder()).append("OnPlayListener: playEvent = ").append(playEvent).append(", currentTime = ").append(VideoPlaybackController.access$000(VideoPlaybackController.this)).toString());
        if (VideoPlaybackController.access$000(VideoPlaybackController.this) == 0 && !playEvent.properties.containsKey("skipCuePoints"))
        {
            Log.i(VideoPlaybackController.TAG, (new StringBuilder()).append("cuePoints = ").append(VideoPlaybackController.access$100(VideoPlaybackController.this)).toString());
            ArrayList arraylist = new ArrayList();
            Iterator iterator = VideoPlaybackController.access$100(VideoPlaybackController.this).iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                CuePoint cuepoint = (CuePoint)iterator.next();
                if (cuepoint.getPositionType()._mth0(com.brightcove.player.model.ener.this._fld0) || cuepoint.getPositionType()._mth0(com.brightcove.player.model.ener.this._fld0) && cuepoint.getPosition() == 0)
                {
                    arraylist.add(cuepoint);
                }
            } while (true);
            if (!arraylist.isEmpty())
            {
                Log.i(VideoPlaybackController.TAG, (new StringBuilder()).append("batch = ").append(arraylist).toString());
                playEvent.preventDefault();
                playEvent.stopPropagation();
                playEvent.properties.put("skipCuePoints", Boolean.valueOf(true));
                final UUID cuePointUniqueKey = UUID.randomUUID();
                VideoPlaybackController.access$300(VideoPlaybackController.this).once("cuePoint", new EventListener() {

                    final VideoPlaybackController.OnPlayListener this$1;
                    final UUID val$cuePointUniqueKey;
                    final Event val$playEvent;

                    public void processEvent(Event event)
                    {
                        if (cuePointUniqueKey.equals(event.properties.get("uuid")))
                        {
                            VideoPlaybackController.access$200(this$0).emit(playEvent.getType(), playEvent.properties);
                        }
                    }

            
            {
                this$1 = VideoPlaybackController.OnPlayListener.this;
                cuePointUniqueKey = uuid;
                playEvent = event;
                super();
            }
                });
                HashMap hashmap = new HashMap();
                hashmap.put("cue_points", arraylist);
                hashmap.put("endTime", Integer.valueOf(0));
                hashmap.put("startTime", Integer.valueOf(0));
                hashmap.put("original", playEvent);
                hashmap.put("uuid", cuePointUniqueKey);
                VideoPlaybackController.access$400(VideoPlaybackController.this).emit("cuePoint", hashmap);
                return;
            }
        }
    }

    protected _cls1.val.playEvent()
    {
        this$0 = VideoPlaybackController.this;
        super();
    }
}
