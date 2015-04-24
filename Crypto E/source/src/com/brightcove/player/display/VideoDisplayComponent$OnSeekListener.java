// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

public class this._cls0
    implements EventListener
{

    final VideoDisplayComponent this$0;

    public void processEvent(Event event)
    {
        Log.v(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("OnSeekListener: mediaPlayer = ").append(VideoDisplayComponent.access$700(VideoDisplayComponent.this)).toString());
        int i = -1;
        if (event.properties.containsKey("seekPosition"))
        {
            i = event.getIntegerProperty("seekPosition");
        } else
        {
            Log.e(VideoDisplayComponent.access$1200(), "Seek event must pass the seekPosition property");
        }
        Log.v(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("OnSeekListener: position = ").append(i).toString());
        if (VideoDisplayComponent.access$700(VideoDisplayComponent.this) != null && VideoDisplayComponent.access$800(VideoDisplayComponent.this) && hasSurface)
        {
            seekPosition = i;
            VideoDisplayComponent.access$2102(VideoDisplayComponent.this, playheadPosition);
            VideoDisplayComponent.access$700(VideoDisplayComponent.this).seekTo(i);
            return;
        } else
        {
            seekPositionWhenPrepared = i;
            return;
        }
    }

    protected ()
    {
        this$0 = VideoDisplayComponent.this;
        super();
    }
}
