// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.util.Log;
import com.brightcove.player.display.tasks.LoadImageTask;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.net.URI;
import java.util.Map;

// Referenced classes of package com.brightcove.player.display:
//            VideoStillDisplayComponent

class <init>
    implements EventListener
{

    final VideoStillDisplayComponent this$0;

    public void processEvent(Event event)
    {
        Log.v(VideoStillDisplayComponent.TAG, "OnSetVideoStill");
        VideoStillDisplayComponent.access$300(VideoStillDisplayComponent.this);
        <init> <init>1 = new it>(VideoStillDisplayComponent.this, null);
        VideoStillDisplayComponent.access$402(VideoStillDisplayComponent.this, VideoStillDisplayComponent.access$1700(VideoStillDisplayComponent.this).once("cuePoint", <init>1));
        VideoStillDisplayComponent.access$602(VideoStillDisplayComponent.this, VideoStillDisplayComponent.access$1800(VideoStillDisplayComponent.this).once("didPlay", <init>1));
        VideoStillDisplayComponent.access$802(VideoStillDisplayComponent.this, VideoStillDisplayComponent.access$1900(VideoStillDisplayComponent.this).once("didSeekTo", <init>1));
        VideoStillDisplayComponent.access$1002(VideoStillDisplayComponent.this, VideoStillDisplayComponent.access$2000(VideoStillDisplayComponent.this).once("willInterruptContent", <init>1));
        VideoStillDisplayComponent.access$1202(VideoStillDisplayComponent.this, VideoStillDisplayComponent.access$2100(VideoStillDisplayComponent.this).once("activityStopped", <init>1));
        VideoStillDisplayComponent.access$1402(VideoStillDisplayComponent.this, VideoStillDisplayComponent.access$2200(VideoStillDisplayComponent.this).once("fragmentStopped", <init>1));
        URI uri = (URI)event.properties.get("video_still");
        VideoStillDisplayComponent.access$202(VideoStillDisplayComponent.this, new LoadImageTask(VideoStillDisplayComponent.access$100(VideoStillDisplayComponent.this), VideoStillDisplayComponent.access$2300(VideoStillDisplayComponent.this)));
        VideoStillDisplayComponent.access$200(VideoStillDisplayComponent.this).setSuccessEventType("didSetVideoStill");
        VideoStillDisplayComponent.access$200(VideoStillDisplayComponent.this).execute(new URI[] {
            uri
        });
    }

    private ()
    {
        this$0 = VideoStillDisplayComponent.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
