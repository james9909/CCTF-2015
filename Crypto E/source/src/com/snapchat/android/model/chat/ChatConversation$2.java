// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.PresenceUpdatedEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.model.chat:
//            ChatConversation

class this._cls0
    implements Runnable
{

    final ChatConversation this$0;

    public void run()
    {
        ChatConversation.a(ChatConversation.this, null);
        ChatConversation.a(ChatConversation.this, false);
        BusProvider.a().a(new PresenceUpdatedEvent(ChatConversation.b(ChatConversation.this), false, "presence timeout (16000 seconds)"));
    }

    vent()
    {
        this$0 = ChatConversation.this;
        super();
    }
}
