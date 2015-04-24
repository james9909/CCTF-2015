// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.event;

import java.util.Map;

// Referenced classes of package com.brightcove.player.event:
//            EventListener, RegisteringEventEmitter, Event

class this._cls0
    implements EventListener
{

    final RegisteringEventEmitter this$0;

    public void processEvent(Event event)
    {
        RegisteringEventEmitter.access$002(RegisteringEventEmitter.this, Boolean.parseBoolean(event.properties.get("debug").toString()));
    }

    ()
    {
        this$0 = RegisteringEventEmitter.this;
        super();
    }
}
