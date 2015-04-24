// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.view.RenderView;
import java.util.Map;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class <init>
    implements EventListener
{

    final VideoDisplayComponent this$0;

    public void processEvent(Event event)
    {
        renderView.setVisibility(0);
        Event event1 = (Event)event.properties.get("original");
        Log.v(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("OnWillResumeContentListener: originalEvent = ").append(event1).toString());
        if (event1 != null)
        {
            VideoDisplayComponent.access$2800(VideoDisplayComponent.this).emit(event1.getType(), event1.properties);
        }
        VideoDisplayComponent.access$2900(VideoDisplayComponent.this).emit("didResumeContent");
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
