// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.util.Log;
import android.widget.ImageView;
import com.brightcove.player.display.tasks.LoadImageTask;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;

// Referenced classes of package com.brightcove.player.display:
//            VideoStillDisplayComponent

class <init>
    implements EventListener
{

    final VideoStillDisplayComponent this$0;

    public void processEvent(Event event)
    {
        Log.v(VideoStillDisplayComponent.TAG, "OnHideListener");
        VideoStillDisplayComponent.access$100(VideoStillDisplayComponent.this).setVisibility(4);
        if (VideoStillDisplayComponent.access$200(VideoStillDisplayComponent.this) != null)
        {
            VideoStillDisplayComponent.access$200(VideoStillDisplayComponent.this).cancel(true);
            VideoStillDisplayComponent.access$202(VideoStillDisplayComponent.this, null);
        }
        VideoStillDisplayComponent.access$300(VideoStillDisplayComponent.this);
        VideoStillDisplayComponent.access$500(VideoStillDisplayComponent.this).off("cuePoint", VideoStillDisplayComponent.access$400(VideoStillDisplayComponent.this));
        VideoStillDisplayComponent.access$700(VideoStillDisplayComponent.this).off("didPlay", VideoStillDisplayComponent.access$600(VideoStillDisplayComponent.this));
        VideoStillDisplayComponent.access$900(VideoStillDisplayComponent.this).off("didSeekTo", VideoStillDisplayComponent.access$800(VideoStillDisplayComponent.this));
        VideoStillDisplayComponent.access$1100(VideoStillDisplayComponent.this).off("willInterruptContent", VideoStillDisplayComponent.access$1000(VideoStillDisplayComponent.this));
        VideoStillDisplayComponent.access$1300(VideoStillDisplayComponent.this).off("activityStopped", VideoStillDisplayComponent.access$1200(VideoStillDisplayComponent.this));
        VideoStillDisplayComponent.access$1500(VideoStillDisplayComponent.this).off("fragmentStopped", VideoStillDisplayComponent.access$1400(VideoStillDisplayComponent.this));
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
