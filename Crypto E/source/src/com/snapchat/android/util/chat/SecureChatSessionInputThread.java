// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.Timber;
import com.snapchat.android.util.threading.ThreadUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.snapchat.android.util.chat:
//            ChatStreamProcessingStateListener, SCMessageInputStream, ChatReceivedMessageListener, SecureChatSessionMessageRateLimiter

public class SecureChatSessionInputThread extends Thread
{

    private final SecureChatSessionMessageRateLimiter a;
    private final SynchronousQueue b = new SynchronousQueue();
    private final AtomicBoolean c = new AtomicBoolean(false);
    private final List d = new CopyOnWriteArrayList();
    private final List e = new CopyOnWriteArrayList();

    public SecureChatSessionInputThread(SecureChatSessionMessageRateLimiter securechatsessionmessageratelimiter)
    {
        setName("SecureChatSessionInputThread");
        a = securechatsessionmessageratelimiter;
    }

    private void a(Exception exception)
    {
        for (Iterator iterator = e.iterator(); iterator.hasNext(); ((ChatStreamProcessingStateListener)iterator.next()).a(exception)) { }
    }

    private void b()
    {
        for (Iterator iterator = e.iterator(); iterator.hasNext(); ((ChatStreamProcessingStateListener)iterator.next()).a()) { }
    }

    public void a()
    {
        c.set(true);
        interrupt();
        ThreadUtils.a(this);
    }

    public void a(ChatReceivedMessageListener chatreceivedmessagelistener)
    {
        d.add(chatreceivedmessagelistener);
    }

    public void a(ChatStreamProcessingStateListener chatstreamprocessingstatelistener)
    {
        e.add(chatstreamprocessingstatelistener);
    }

    public void a(SCMessageInputStream scmessageinputstream)
    {
        if (!b.offer(scmessageinputstream))
        {
            throw new IllegalStateException();
        } else
        {
            return;
        }
    }

    public void run()
    {
_L5:
        if (c.get())
        {
            break MISSING_BLOCK_LABEL_109;
        }
        SCMessageInputStream scmessageinputstream;
        scmessageinputstream = (SCMessageInputStream)b.take();
        Timber.f("SecureChatSessionInputThread", "CHAT-LOG: SecureChatSessionInputThread got input stream", new Object[0]);
        b();
_L2:
        com.snapchat.android.model.server.chat.SCMessage scmessage = scmessageinputstream.a();
        if (scmessage == null)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        for (Iterator iterator = d.iterator(); iterator.hasNext(); ((ChatReceivedMessageListener)iterator.next()).a(scmessage)) { }
          goto _L1
        Exception exception;
        exception;
_L3:
        a(exception);
        continue; /* Loop/switch isn't completed */
_L1:
        a.b();
          goto _L2
        exception = null;
          goto _L3
        return;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
