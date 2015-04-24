// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.event;

import android.os.Handler;
import android.os.Message;
import java.util.Map;

// Referenced classes of package com.brightcove.player.event:
//            EventEmitterImpl, Event

class this._cls0 extends Handler
{

    final EventEmitterImpl this$0;

    public void handleMessage(Message message)
    {
        Map map = (Map)message.obj;
        String s = (String)map.get("event");
        Event event = new Event(s);
        EventEmitterImpl.access$000(EventEmitterImpl.this, map, event);
        EventEmitterImpl.access$100(EventEmitterImpl.this, event, "*");
        if (s.equals("response"))
        {
            EventEmitterImpl.access$200(EventEmitterImpl.this, event);
            return;
        } else
        {
            EventEmitterImpl.access$300(EventEmitterImpl.this, event);
            return;
        }
    }

    ()
    {
        this$0 = EventEmitterImpl.this;
        super();
    }
}
