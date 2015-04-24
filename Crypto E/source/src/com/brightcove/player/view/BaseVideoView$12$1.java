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

class this._cls1
    implements EventListener
{

    final Controller this$1;

    public void processEvent(Event event)
    {
        mediaController.show();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/brightcove/player/view/BaseVideoView$12

/* anonymous class */
    class BaseVideoView._cls12
        implements EventListener
    {

        final BaseVideoView this$0;

        public void processEvent(Event event)
        {
            if (mediaController != null)
            {
                mediaController.hide();
                eventEmitter.once("progress", new BaseVideoView._cls12._cls1());
            }
        }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
    }

}
