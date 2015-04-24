// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.widget.MediaController;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;

// Referenced classes of package com.brightcove.player.view:
//            BaseVideoView

class this._cls0
    implements EventListener
{

    final BaseVideoView this$0;

    public void processEvent(Event event)
    {
        if (mediaController != null)
        {
            mediaController.hide();
            eventEmitter.once("progress", new EventListener() {

                final BaseVideoView._cls12 this$1;

                public void processEvent(Event event1)
                {
                    mediaController.show();
                }

            
            {
                this$1 = BaseVideoView._cls12.this;
                super();
            }
            });
        }
    }

    _cls1.this._cls1()
    {
        this$0 = BaseVideoView.this;
        super();
    }
}
