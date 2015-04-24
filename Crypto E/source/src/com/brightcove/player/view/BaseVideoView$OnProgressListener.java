// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

// Referenced classes of package com.brightcove.player.view:
//            BaseVideoView

public class this._cls0
    implements EventListener
{

    final BaseVideoView this$0;

    public void processEvent(Event event)
    {
        if (isPlaying())
        {
            int i = event.getIntegerProperty("duration");
            if (i > -1 && i != duration)
            {
                String s1 = BaseVideoView.access$000();
                Object aobj1[] = new Object[1];
                aobj1[0] = Integer.valueOf(i);
                Log.v(s1, String.format("Changing duration to %d.", aobj1));
                duration = i;
                showMediaController();
            }
            int j = event.getIntegerProperty("playheadPosition");
            if (j > -1 && j != playheadPosition)
            {
                String s = BaseVideoView.access$000();
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(j);
                Log.v(s, String.format("Changing playheadPosition to %d.", aobj));
                playheadPosition = j;
            }
        }
    }

    protected A()
    {
        this$0 = BaseVideoView.this;
        super();
    }
}
