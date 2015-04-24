// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.cash.SendingCashManager;
import com.snapchat.android.database.table.ClearedChatIdsTable;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.server.chat.ReleaseMessage;
import com.snapchat.android.util.ListUtils;
import com.snapchat.android.util.PrimitiveUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.chat:
//            SendingMailman, FeedIconManager

public class ChatMessageReleaser
{

    protected SendingCashManager a;
    private final SendingMailman b;
    private final FeedIconManager c;

    public ChatMessageReleaser()
    {
        this(SendingMailman.a(), FeedIconManager.a());
    }

    protected ChatMessageReleaser(SendingMailman sendingmailman, FeedIconManager feediconmanager)
    {
        SnapchatApplication.e().a(this);
        b = sendingmailman;
        c = feediconmanager;
    }

    private Map a(ChatConversation chatconversation, Long long1, Long long2)
    {
        String s = chatconversation.c();
        String s1 = chatconversation.b();
        HashMap hashmap = new HashMap();
        hashmap.put(s, long2);
        hashmap.put(s1, long1);
        return hashmap;
    }

    public void a(ChatConversation chatconversation)
    {
        long l = chatconversation.aa();
        long l1 = chatconversation.ab();
        long l2 = chatconversation.X();
        long l3 = chatconversation.ag();
        long l4 = chatconversation.ah();
        if (l <= l1)
        {
            return;
        } else
        {
            Map map = a(chatconversation, Long.valueOf(l2), Long.valueOf(l));
            Map map1 = a(chatconversation, Long.valueOf(l4), Long.valueOf(l3));
            b.a(chatconversation, map, map1, com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType.DISPLAY);
            return;
        }
    }

    public void a(ChatConversation chatconversation, long l)
    {
        long l1 = System.currentTimeMillis();
        List list = chatconversation.t();
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
            if (chatfeeditem instanceof Chat)
            {
                Chat chat = (Chat)chatfeeditem;
                if (TextUtils.equals(chatfeeditem.l(), chatconversation.b()) && !chat.g() && chat.ae() <= l)
                {
                    chat.a(l1);
                }
            }
        } while (true);
        break MISSING_BLOCK_LABEL_113;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
    }

    public void a(ChatConversation chatconversation, CashFeedItem cashfeeditem)
    {
        if (cashfeeditem.h().i())
        {
            a.b(chatconversation, ListUtils.a(cashfeeditem));
        } else
        if (cashfeeditem.t())
        {
            cashfeeditem.a(true);
            return;
        }
    }

    public void a(ChatConversation chatconversation, com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType releasetype)
    {
        long l = chatconversation.ab();
        long l1 = chatconversation.X();
        long l2 = chatconversation.ag();
        long l3 = chatconversation.ah();
        long l4 = chatconversation.ad();
        long l5 = chatconversation.ae();
        long l6 = chatconversation.af();
        long l7 = chatconversation.ai();
        AnalyticsEvents.a(releasetype, chatconversation.t(), System.currentTimeMillis());
        if (releasetype == com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType.DELETE && l == l4 && l1 == l5 && l2 == l6 && l3 == l7)
        {
            Timber.f("ChatMessageReleaser", "CHAT-LOG: ChatMessageReleaser not sending DELETE message because there's no change", new Object[0]);
            return;
        } else
        {
            Map map = a(chatconversation, Long.valueOf(l1), Long.valueOf(l));
            Map map1 = a(chatconversation, Long.valueOf(l3), Long.valueOf(l2));
            b.a(chatconversation, map, map1, releasetype);
            return;
        }
    }

    public void a(ChatConversation chatconversation, ReleaseMessage releasemessage)
    {
        Map map;
        String s;
        for (map = releasemessage.getKnownChatSequenceNumbers(); map == null || !map.containsKey(s = chatconversation.b());)
        {
            return;
        }

        List list = chatconversation.t();
        list;
        JVM INSTR monitorenter ;
        long l = PrimitiveUtils.a((Long)map.get(s));
        if (l > chatconversation.ac())
        {
            chatconversation.i(l);
        }
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
            if ((chatfeeditem instanceof Chat) && TextUtils.equals(chatfeeditem.l(), s))
            {
                Chat chat = (Chat)chatfeeditem;
                if (chat.i() <= chatconversation.ac())
                {
                    chat.a(releasemessage.getTimestamp());
                }
            }
        } while (true);
        break MISSING_BLOCK_LABEL_162;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        c.a(chatconversation, false);
        list;
        JVM INSTR monitorexit ;
    }

    public void b(ChatConversation chatconversation)
    {
        List list;
        long l;
        long l1;
        long l2;
        long l3;
        boolean flag;
        boolean flag1;
        ArrayList arraylist;
        String s;
        list = chatconversation.t();
        l = 0L;
        l1 = 0L;
        l2 = 0L;
        l3 = 0L;
        flag = false;
        flag1 = false;
        arraylist = new ArrayList();
        s = chatconversation.b();
        long l4 = System.currentTimeMillis();
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = list.iterator();
_L19:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
        if (!(chatfeeditem instanceof Chat)) goto _L4; else goto _L3
_L3:
        Chat chat = (Chat)chatfeeditem;
        if (chat.g() || !chat.m().contains(s)) goto _L6; else goto _L5
_L5:
        long l9;
        AnalyticsEvents.g(chat.e());
        chat.e(l4);
        chat.c(0);
        chat.a(l4);
        l9 = chat.i();
        if (l9 <= l1) goto _L6; else goto _L7
_L7:
        long l10 = l9;
          goto _L8
_L4:
        if (!(chatfeeditem instanceof SentSnap) || flag) goto _L10; else goto _L9
_L9:
        SentSnap sentsnap = (SentSnap)chatfeeditem;
        if (sentsnap.p()) goto _L12; else goto _L11
_L11:
        boolean flag3;
        long l5;
        flag3 = true;
        l5 = l2;
          goto _L13
_L12:
        long l6;
        sentsnap.as();
        l6 = sentsnap.ae();
        ReceivedSnap receivedsnap;
        boolean flag5;
        long l7;
        long l8;
        if (l6 > l2)
        {
            boolean flag4 = flag;
            l5 = l6;
            flag3 = flag4;
        } else
        {
            flag3 = flag;
            l5 = l2;
        }
          goto _L13
_L10:
        if (!(chatfeeditem instanceof ReceivedSnap) || flag1) goto _L15; else goto _L14
_L14:
        receivedsnap = (ReceivedSnap)chatfeeditem;
        if (receivedsnap.F() && receivedsnap.j()) goto _L17; else goto _L16
_L17:
        receivedsnap.as();
        l8 = receivedsnap.ae();
        Exception exception;
        boolean flag2;
        CashFeedItem cashfeeditem;
        if (l8 > l3)
        {
            boolean flag6 = flag1;
            l7 = l8;
            flag5 = flag6;
        } else
        {
            flag5 = flag1;
            l7 = l3;
        }
        break MISSING_BLOCK_LABEL_533;
_L15:
        if (!(chatfeeditem instanceof CashFeedItem)) goto _L19; else goto _L18
_L18:
        cashfeeditem = (CashFeedItem)chatfeeditem;
        if (!cashfeeditem.h().i()) goto _L21; else goto _L20
_L20:
        arraylist.add(cashfeeditem);
          goto _L19
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L21:
        if (!cashfeeditem.t()) goto _L19; else goto _L22
_L22:
        cashfeeditem.a(true);
          goto _L19
_L2:
        if (l > chatconversation.aa())
        {
            chatconversation.g(l);
        }
        if (l1 <= chatconversation.ab()) goto _L24; else goto _L23
_L23:
        chatconversation.h(l1);
        flag2 = true;
_L25:
        if (l2 <= chatconversation.ag())
        {
            break MISSING_BLOCK_LABEL_425;
        }
        chatconversation.m(l2);
        flag2 = true;
        if (l3 <= chatconversation.ah())
        {
            break MISSING_BLOCK_LABEL_444;
        }
        chatconversation.n(l3);
        flag2 = true;
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_457;
        }
        a(chatconversation, com.snapchat.android.model.server.chat.ReleaseMessage.ReleaseType.RELEASE);
        list;
        JVM INSTR monitorexit ;
        a.b(chatconversation, arraylist);
        return;
_L24:
        flag2 = false;
        if (true) goto _L25; else goto _L6
_L6:
        l9 = l1;
        l10 = l;
_L8:
        l = l10;
        l1 = l9;
          goto _L19
_L13:
        l2 = l5;
        flag = flag3;
          goto _L19
_L16:
        flag5 = true;
        l7 = l3;
        l3 = l7;
        flag1 = flag5;
          goto _L19
    }

    public boolean b(ChatConversation chatconversation, long l)
    {
        List list = chatconversation.t();
        list;
        JVM INSTR monitorenter ;
        long l1 = 0L;
        Iterator iterator = list.iterator();
_L8:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
        if (!(chatfeeditem instanceof SentSnap) || chatfeeditem.ae() > l) goto _L4; else goto _L3
_L3:
        SentSnap sentsnap = (SentSnap)chatfeeditem;
        if (sentsnap.p()) goto _L5; else goto _L2
_L2:
        if (l1 <= chatconversation.ag()) goto _L7; else goto _L6
_L6:
        chatconversation.m(l1);
        return true;
_L5:
        long l2;
        sentsnap.as();
        l2 = sentsnap.ae();
        break MISSING_BLOCK_LABEL_134;
_L7:
        list;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        l2 = l1;
        l1 = l2;
          goto _L8
    }

    public boolean c(ChatConversation chatconversation)
    {
        long l;
        List list;
        l = System.currentTimeMillis();
        list = chatconversation.t();
        long l1 = 0L;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = list.iterator();
_L3:
        long l2;
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L2:
        if (l1 <= chatconversation.ab())
        {
            break MISSING_BLOCK_LABEL_136;
        }
        chatconversation.h(l1);
        return true;
        list;
        JVM INSTR monitorexit ;
        return false;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L1:
        ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
        Exception exception;
        if (chatfeeditem instanceof Chat)
        {
            Chat chat = (Chat)chatfeeditem;
            long l3 = chat.i();
            if (chat.f(l) && chatfeeditem.m().contains(chatconversation.b()))
            {
                chat.a(l);
                l2 = Math.max(l1, l3);
                break MISSING_BLOCK_LABEL_153;
            }
        }
        l2 = l1;
        l1 = l2;
          goto _L3
    }

    public boolean c(ChatConversation chatconversation, long l)
    {
        List list = chatconversation.t();
        list;
        JVM INSTR monitorenter ;
        long l1 = 0L;
        Iterator iterator = list.iterator();
_L8:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
        if (!(chatfeeditem instanceof ReceivedSnap) || chatfeeditem.ae() > l) goto _L4; else goto _L3
_L3:
        ReceivedSnap receivedsnap = (ReceivedSnap)chatfeeditem;
        if (receivedsnap.F() && receivedsnap.j()) goto _L5; else goto _L2
_L2:
        if (l1 <= chatconversation.ah()) goto _L7; else goto _L6
_L6:
        chatconversation.n(l1);
        return true;
_L5:
        long l2;
        receivedsnap.as();
        l2 = receivedsnap.ae();
        break MISSING_BLOCK_LABEL_142;
_L7:
        list;
        JVM INSTR monitorexit ;
        return false;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        l2 = l1;
        l1 = l2;
          goto _L8
    }

    public void d(ChatConversation chatconversation)
    {
        ArrayList arraylist;
        String s;
        String s1;
        arraylist = new ArrayList();
        s = chatconversation.b();
        s1 = chatconversation.c();
        List list = chatconversation.t();
        list;
        JVM INSTR monitorenter ;
        long l;
        long l1;
        Iterator iterator;
        l = chatconversation.ac();
        l1 = chatconversation.ab();
        iterator = list.iterator();
_L3:
        ChatFeedItem chatfeeditem1;
        Chat chat;
        do
        {
            do
            {
                if (!iterator.hasNext())
                {
                    break MISSING_BLOCK_LABEL_167;
                }
                chatfeeditem1 = (ChatFeedItem)iterator.next();
            } while (!(chatfeeditem1 instanceof Chat));
            chat = (Chat)chatfeeditem1;
        } while (TextUtils.equals(s, s1) || chat.k());
        if (!TextUtils.equals(chatfeeditem1.l(), s)) goto _L2; else goto _L1
_L1:
        if (chat.i() <= l)
        {
            arraylist.add(chat);
        }
          goto _L3
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        if (chat.i() > l1) goto _L3; else goto _L4
_L4:
        arraylist.add(chat);
          goto _L3
        HashSet hashset;
        chatconversation.c(arraylist);
        hashset = new HashSet();
        ChatFeedItem chatfeeditem;
        for (Iterator iterator1 = arraylist.iterator(); iterator1.hasNext(); ClearedChatIdsTable.a(SnapchatApplication.e(), chatfeeditem.d(), chatconversation.u()))
        {
            chatfeeditem = (ChatFeedItem)iterator1.next();
            hashset.add(chatfeeditem.d());
        }

        chatconversation.b(hashset);
        list;
        JVM INSTR monitorexit ;
    }

    public boolean d(ChatConversation chatconversation, long l)
    {
        long l1;
        long l2;
        List list;
        l1 = chatconversation.aa();
        if (l <= l1)
        {
            return false;
        }
        l2 = System.currentTimeMillis();
        list = chatconversation.t();
        long l3 = 0L;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = list.iterator();
_L6:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
        if (!(chatfeeditem instanceof Chat)) goto _L4; else goto _L3
_L3:
        Chat chat;
        long l5;
        chat = (Chat)chatfeeditem;
        l5 = chat.i();
        if (l5 > l) goto _L4; else goto _L5
_L5:
        long l4;
        if (chatfeeditem.m().contains(chatconversation.b()))
        {
            if (!chat.x())
            {
                chat.e(l2);
            }
            l4 = Math.max(l3, l5);
            break MISSING_BLOCK_LABEL_174;
        }
          goto _L4
_L2:
        if (l3 <= l1)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        chatconversation.g(l3);
        list;
        JVM INSTR monitorexit ;
        return true;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        return false;
_L4:
        l4 = l3;
        l3 = l4;
          goto _L6
    }
}
