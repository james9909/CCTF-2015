// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.view.RenderView;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class <init>
    implements EventListener
{

    final VideoDisplayComponent this$0;

    public void processEvent(Event event)
    {
        Log.v(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("OnWillInterruptContentListener: mediaPlayer = ").append(VideoDisplayComponent.access$700(VideoDisplayComponent.this)).append(", hasPrepared = ").append(VideoDisplayComponent.access$800(VideoDisplayComponent.this)).append(", hasSurface = ").append(hasSurface).append(", currentSource = ").append(currentSource).toString());
        if (VideoDisplayComponent.access$700(VideoDisplayComponent.this) != null && VideoDisplayComponent.access$800(VideoDisplayComponent.this) && hasSurface && VideoDisplayComponent.access$700(VideoDisplayComponent.this).isPlaying())
        {
            Log.v(VideoDisplayComponent.access$1200(), "OnWillInterruptContentListener: isPlaying");
            if (currentSource != null && currentSource.getDeliveryType() != DeliveryType.HLS)
            {
                VideoDisplayComponent.access$700(VideoDisplayComponent.this).pause();
            } else
            {
                destroyPlayer();
            }
        }
        renderView.setVisibility(4);
        VideoDisplayComponent.access$3000(VideoDisplayComponent.this).emit("didInterruptContent");
    }

    private ()
    {
        this$0 = VideoDisplayComponent.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
