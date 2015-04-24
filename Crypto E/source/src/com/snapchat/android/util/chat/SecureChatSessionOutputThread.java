// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.Timber;
import com.snapchat.android.model.server.chat.SCMessage;
import com.snapchat.android.util.threading.ThreadUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.snapchat.android.util.chat:
//            ChatStreamProcessingStateListener, SecureChatMessageAckTracker, SCMessageOutputStream

public class SecureChatSessionOutputThread extends Thread
{
    static final class ThreadState extends Enum
    {

        public static final ThreadState a;
        public static final ThreadState b;
        private static final ThreadState c[];

        public static ThreadState valueOf(String s)
        {
            return (ThreadState)Enum.valueOf(com/snapchat/android/util/chat/SecureChatSessionOutputThread$ThreadState, s);
        }

        public static ThreadState[] values()
        {
            return (ThreadState[])c.clone();
        }

        static 
        {
            a = new ThreadState("AWAITING_CONNECTION", 0);
            b = new ThreadState("CONNECTED", 1);
            ThreadState athreadstate[] = new ThreadState[2];
            athreadstate[0] = a;
            athreadstate[1] = b;
            c = athreadstate;
        }

        private ThreadState(String s, int i)
        {
            super(s, i);
        }
    }


    private final SecureChatMessageAckTracker a;
    private final ArrayBlockingQueue b = new ArrayBlockingQueue(100);
    private final SynchronousQueue c = new SynchronousQueue();
    private final AtomicBoolean d = new AtomicBoolean(false);
    private final AtomicReference e;
    private final List f = new CopyOnWriteArrayList();

    public SecureChatSessionOutputThread(SecureChatMessageAckTracker securechatmessageacktracker)
    {
        e = new AtomicReference(ThreadState.a);
        setName("SecureChatSessionOutputThread");
        a = securechatmessageacktracker;
    }

    private void a(Exception exception)
    {
        for (Iterator iterator = f.iterator(); iterator.hasNext(); ((ChatStreamProcessingStateListener)iterator.next()).a(exception)) { }
    }

    private void b()
    {
        for (Iterator iterator = f.iterator(); iterator.hasNext(); ((ChatStreamProcessingStateListener)iterator.next()).a()) { }
    }

    public void a()
    {
        d.set(true);
        interrupt();
        ThreadUtils.a(this);
    }

    public void a(SCMessage scmessage, SecureChatService.SecureChatWriteCompletedCallback securechatwritecompletedcallback)
    {
        Timber.f("SecureChatSessionOutputThread", (new StringBuilder()).append("CHAT-LOG: SecureChatSessionOutputThread writeMessage ").append(scmessage).toString(), new Object[0]);
        AtomicReference atomicreference = e;
        atomicreference;
        JVM INSTR monitorenter ;
        if (e.get() != ThreadState.b)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        a.a(scmessage, securechatwritecompletedcallback);
        if (!b.offer(scmessage))
        {
            a.a(scmessage.getId(), SecureChatService.SecureChatWriteCompletedCallback.Status.m, "Couldn't add message to output message queue");
        }
_L2:
        return;
        securechatwritecompletedcallback.a(false, SecureChatService.Protocol.b, SecureChatService.SecureChatWriteCompletedCallback.Status.j, "Output stream not connected");
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        atomicreference;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(ChatStreamProcessingStateListener chatstreamprocessingstatelistener)
    {
        f.add(chatstreamprocessingstatelistener);
    }

    public void a(SCMessageOutputStream scmessageoutputstream)
    {
        if (!c.offer(scmessageoutputstream))
        {
            throw new IllegalStateException();
        } else
        {
            return;
        }
    }

    public void run()
    {
_L4:
        if (d.get()) goto _L2; else goto _L1
_L1:
        SCMessageOutputStream scmessageoutputstream;
        scmessageoutputstream = (SCMessageOutputStream)c.take();
        Timber.f("SecureChatSessionOutputThread", "CHAT-LOG: SecureChatSessionOutputThread got output stream", new Object[0]);
        e.set(ThreadState.b);
        b();
_L3:
        SCMessage scmessage1;
        if (d.get())
        {
            break MISSING_BLOCK_LABEL_251;
        }
        scmessage1 = (SCMessage)b.take();
        Timber.f("SecureChatSessionOutputThread", (new StringBuilder()).append("CHAT-LOG: SecureChatSessionOutputThread writing message ").append(scmessage1).toString(), new Object[0]);
        scmessageoutputstream.a(scmessage1);
        a.a(scmessage1.getId());
          goto _L3
        IOException ioexception;
        ioexception;
        a.a(scmessage1.getId(), SecureChatService.SecureChatWriteCompletedCallback.Status.h, ioexception.getMessage());
_L6:
        Exception exception1 = ioexception;
_L5:
        e.set(ThreadState.a);
        a(exception1);
        ArrayList arraylist = new ArrayList();
        b.drainTo(arraylist);
        Iterator iterator = arraylist.iterator();
        while (iterator.hasNext()) 
        {
            SCMessage scmessage = (SCMessage)iterator.next();
            a.a(scmessage.getId(), SecureChatService.SecureChatWriteCompletedCallback.Status.h, (new StringBuilder()).append("Exception in SecureChatSessionOutputThread: ").append(exception1).toString());
        }
          goto _L4
        Exception exception;
        exception;
        exception1 = exception;
          goto _L5
_L2:
        return;
        ioexception = null;
          goto _L6
    }
}
