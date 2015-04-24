// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.TTMLDocument;
import com.brightcove.player.model.WebVTTDocument;
import java.util.Map;

// Referenced classes of package com.brightcove.player.view:
//            BrightcoveClosedCaptioningView

class this._cls0
    implements EventListener
{

    final BrightcoveClosedCaptioningView this$0;

    public void processEvent(Event event)
    {
        TTMLDocument ttmldocument = (TTMLDocument)event.properties.get("ttmlDocument");
        if (ttmldocument != null)
        {
            prepareDFXPCaptions(ttmldocument);
            return;
        }
        WebVTTDocument webvttdocument = (WebVTTDocument)event.properties.get("webvttDocument");
        if (webvttdocument != null)
        {
            prepareWebVTTCaptions(webvttdocument);
            return;
        } else
        {
            Log.e(BrightcoveClosedCaptioningView.TAG, "Captions document was null. No captions to load.");
            clear();
            return;
        }
    }

    A()
    {
        this$0 = BrightcoveClosedCaptioningView.this;
        super();
    }
}
