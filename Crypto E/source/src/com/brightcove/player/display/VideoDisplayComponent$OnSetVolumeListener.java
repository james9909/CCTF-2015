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

class <init>
    implements EventListener
{

    final VideoDisplayComponent this$0;

    public void processEvent(Event event)
    {
        Log.v(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("OnSetVolumeListener: mediaPlayer = ").append(VideoDisplayComponent.access$700(VideoDisplayComponent.this)).toString());
        if (!event.properties.containsKey("leftVolume") || !event.properties.containsKey("rightVolume"))
        {
            Log.e(VideoDisplayComponent.access$1200(), "SET_VOLUME requires LEFT_VOLUME and RIGHT_VOLUME properties.");
            return;
        }
        float f = ((Float)event.properties.get("leftVolume")).floatValue();
        float f1 = ((Float)event.properties.get("rightVolume")).floatValue();
        Log.v(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("OnSetVolumeListener: leftVolume = ").append(f).append(" rightVolume = ").append(f1).toString());
        if (f < 0.0F || f > 1.0F || f1 < 0.0F || f1 > 1.0F)
        {
            Log.e(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("LEFT_VOLUME and RIGHT_VOLUME must be between 0.0f and 1.0f: ").append(f).append(", ").append(f1).toString());
            return;
        } else
        {
            VideoDisplayComponent.access$700(VideoDisplayComponent.this).setVolume(f, f1);
            return;
        }
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
