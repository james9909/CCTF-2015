// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.snapchat.android.chat:
//            ChatConnectionMonitor

public class ChatGapDetector
{

    private static ChatGapDetector a;
    private final LoadConversationPageTaskExecutor b;
    private final ConcurrentHashMap c = new ConcurrentHashMap();
    private final ConcurrentHashMap d = new ConcurrentHashMap();
    private final ConcurrentHashMap e = new ConcurrentHashMap();
    private final Handler f = new Handler(Looper.getMainLooper());

    protected ChatGapDetector(LoadConversationPageTaskExecutor loadconversationpagetaskexecutor)
    {
        b = loadconversationpagetaskexecutor;
    }

    public static ChatGapDetector a()
    {
        com/snapchat/android/chat/ChatGapDetector;
        JVM INSTR monitorenter ;
        ChatGapDetector chatgapdetector;
        if (a == null)
        {
            a = new ChatGapDetector(LoadConversationPageTaskExecutor.a());
        }
        chatgapdetector = a;
        com/snapchat/android/chat/ChatGapDetector;
        JVM INSTR monitorexit ;
        return chatgapdetector;
        Exception exception;
        exception;
        throw exception;
    }

    static ConcurrentHashMap a(ChatGapDetector chatgapdetector)
    {
        return chatgapdetector.e;
    }

    private void a(String s, ConcurrentHashMap concurrenthashmap, long l)
    {
        Object obj;
        if (concurrenthashmap.containsKey(s))
        {
            obj = (Set)concurrenthashmap.get(s);
        } else
        {
            obj = new HashSet();
            concurrenthashmap.put(s, obj);
        }
        obj;
        JVM INSTR monitorenter ;
        ((Set) (obj)).add(Long.valueOf(l));
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static LoadConversationPageTaskExecutor b(ChatGapDetector chatgapdetector)
    {
        return chatgapdetector.b;
    }

    public static void b()
    {
        com/snapchat/android/chat/ChatGapDetector;
        JVM INSTR monitorenter ;
        if (a != null)
        {
            a.f.removeCallbacksAndMessages(null);
            a = null;
        }
        com/snapchat/android/chat/ChatGapDetector;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public long a(String s)
    {
        Set set;
        set = (Set)c.get(s);
        if (set == null)
        {
            break MISSING_BLOCK_LABEL_54;
        }
        set;
        JVM INSTR monitorenter ;
        long l;
        if (set.isEmpty())
        {
            break MISSING_BLOCK_LABEL_44;
        }
        l = ((Long)Collections.min(set)).longValue();
        set;
        JVM INSTR monitorexit ;
        return l;
        set;
        JVM INSTR monitorexit ;
        break MISSING_BLOCK_LABEL_54;
        Exception exception;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
        return 0x7fffffffffffffffL;
    }

    public void a(ChatConversation chatconversation, long l)
    {
        long l1;
label0:
        {
            String s = chatconversation.u();
            l1 = chatconversation.Y();
            if (l > l1 && l - l1 > 1L)
            {
                for (long l2 = l1 + 1L; l2 < l; l2++)
                {
                    a(s, c, l2);
                }

                if (e.containsKey(s))
                {
                    break label0;
                }
                Object aobj1[] = new Object[2];
                aobj1[0] = Long.valueOf(l - l1 - 1L);
                aobj1[1] = Long.valueOf(l1 + 1L);
                Timber.f("ChatGapDetector", "CHAT-LOG: Chat gap of %d starting with %d detected! Scheduling a conversation refresh", aobj1);
                e.put(s, Boolean.valueOf(true));
                f.postDelayed(new Runnable(s) {

                    final String a;
                    final ChatGapDetector b;

                    public void run()
                    {
                        ChatGapDetector.a(b).remove(a);
                        if (b.b(a))
                        {
                            Timber.f("ChatGapDetector", "CHAT-LOG: Executing conversation refresh", new Object[0]);
                            ChatGapDetector.b(b).a(a, false);
                            return;
                        } else
                        {
                            Timber.f("ChatGapDetector", "CHAT-LOG: Not executing conversation refresh because chat gap is filled", new Object[0]);
                            return;
                        }
                    }

            
            {
                b = ChatGapDetector.this;
                a = s;
                super();
            }
                }, 8000L);
            }
            return;
        }
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf(l - l1 - 1L);
        aobj[1] = Long.valueOf(l1 + 1L);
        Timber.f("ChatGapDetector", "CHAT-LOG: Chat gap of %d starting with %d detected! Conversation refresh is already scheduled", aobj);
    }

    public boolean a(String s, long l)
    {
        Set set;
        set = (Set)c.get(s);
        if (set == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        set;
        JVM INSTR monitorenter ;
        Iterator iterator = set.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_63;
            }
        } while (((Long)iterator.next()).longValue() >= l);
        set;
        JVM INSTR monitorexit ;
        return false;
        set;
        JVM INSTR monitorexit ;
        break MISSING_BLOCK_LABEL_77;
        Exception exception;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
        return true;
    }

    public void b(ChatConversation chatconversation, long l)
    {
        String s;
        long l1;
        s = chatconversation.u();
        l1 = chatconversation.Z();
        if (l <= l1 && l != 0L) goto _L2; else goto _L1
_L1:
        if (!ChatConnectionMonitor.a().f() || !chatconversation.C() || l - l1 <= 1L) goto _L4; else goto _L3
_L3:
        for (long l2 = l1 + 1L; l2 < l; l2++)
        {
            a(s, d, l2);
        }

        if (e.containsKey(s)) goto _L6; else goto _L5
_L5:
        Object aobj1[] = new Object[2];
        aobj1[0] = Long.valueOf(l - l1 - 1L);
        aobj1[1] = Long.valueOf(l1 + 1L);
        Timber.f("ChatGapDetector", "CHAT-LOG: Connection seqNum gap of %d starting with %d detected! Scheduling a conversation refresh", aobj1);
        e.put(s, Boolean.valueOf(true));
        f.postDelayed(new Runnable(s) {

            final String a;
            final ChatGapDetector b;

            public void run()
            {
                ChatGapDetector.a(b).remove(a);
                if (b.c(a))
                {
                    Timber.f("ChatGapDetector", "CHAT-LOG: Executing conversation refresh", new Object[0]);
                    ChatGapDetector.b(b).a(a, false);
                    return;
                } else
                {
                    Timber.f("ChatGapDetector", "CHAT-LOG: Not executing conversation refresh because connection seqNum gap is filled", new Object[0]);
                    return;
                }
            }

            
            {
                b = ChatGapDetector.this;
                a = s;
                super();
            }
        }, 8000L);
_L4:
        return;
_L6:
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf(l - l1 - 1L);
        aobj[1] = Long.valueOf(l1 + 1L);
        Timber.f("ChatGapDetector", "CHAT-LOG: Connection seqNum gap of %d starting with %d detected! Conversation refresh is already scheduled", aobj);
        return;
_L2:
        Set set = (Set)d.get(s);
        if (set != null)
        {
            set.remove(Long.valueOf(l));
            return;
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    public boolean b(String s)
    {
        Set set;
        set = (Set)c.get(s);
        if (set == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        set;
        JVM INSTR monitorenter ;
        boolean flag = set.isEmpty();
        boolean flag1;
        flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        set;
        JVM INSTR monitorexit ;
        return flag1;
        Exception exception;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
        return false;
    }

    public boolean b(String s, long l)
    {
        Set set;
        set = (Set)c.get(s);
        if (set == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        set;
        JVM INSTR monitorenter ;
        boolean flag = set.remove(Long.valueOf(l));
        set;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
        return false;
    }

    protected boolean c(String s)
    {
        Set set;
        set = (Set)d.get(s);
        if (set == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        set;
        JVM INSTR monitorenter ;
        boolean flag = set.isEmpty();
        boolean flag1;
        flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        set;
        JVM INSTR monitorexit ;
        return flag1;
        Exception exception;
        exception;
        set;
        JVM INSTR monitorexit ;
        throw exception;
        return false;
    }

    public void d(String s)
    {
        c.remove(s);
    }

    public void e(String s)
    {
        d.remove(s);
    }
}
