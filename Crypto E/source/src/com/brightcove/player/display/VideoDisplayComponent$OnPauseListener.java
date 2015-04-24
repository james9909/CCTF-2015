// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class <init>
    implements EventListener
{

    final VideoDisplayComponent this$0;

    public void processEvent(Event event)
    {
        Log.v(VideoDisplayComponent.access$1200(), "OnPauseListener");
        if (VideoDisplayComponent.access$700(VideoDisplayComponent.this) != null && VideoDisplayComponent.access$800(VideoDisplayComponent.this) && hasSurface && VideoDisplayComponent.access$700(VideoDisplayComponent.this).isPlaying())
        {
            VideoDisplayComponent.access$700(VideoDisplayComponent.this).pause();
            HashMap hashmap = new HashMap();
            hashmap.put("playheadPosition", Integer.valueOf(VideoDisplayComponent.access$700(VideoDisplayComponent.this).getCurrentPosition()));
            VideoDisplayComponent.access$2200(VideoDisplayComponent.this).emit("didPause", hashmap);
        }
    }

    private I()
    {
        this$0 = VideoDisplayComponent.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
