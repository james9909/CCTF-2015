// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.Map;

// Referenced classes of package com.brightcove.player.controller:
//            NoSourceFoundException, DefaultSourceSelectionController

class <init>
    implements EventListener
{

    final DefaultSourceSelectionController this$0;

    public void processEvent(Event event)
    {
        Video video = (Video)event.properties.get("video");
        try
        {
            com.brightcove.player.model.Source source = selectSource(video);
            event.properties.put("source", source);
            DefaultSourceSelectionController.access$100(DefaultSourceSelectionController.this).respond(event);
            return;
        }
        catch (NoSourceFoundException nosourcefoundexception)
        {
            Log.e(DefaultSourceSelectionController.TAG, (new StringBuilder()).append("no usable Source could be found for Video: ").append(video.toString()).toString());
        }
        EventUtil.emit(DefaultSourceSelectionController.access$200(DefaultSourceSelectionController.this), "sourceNotFound", video);
    }

    private ()
    {
        this$0 = DefaultSourceSelectionController.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
