// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.chat.LoadConversationPageTaskExecutor;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.SentSnap;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.IIterableChatFeedItem;
import com.snapchat.android.model.chat.ISavableChatFeedItem;
import com.snapchat.android.model.server.chat.ServerChatConversation;
import com.snapchat.android.util.PrimitiveUtils;
import com.snapchat.android.util.SnapUtils;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.snapchat.android.util.eventbus.UpdateFeedEvent;
import com.snapchat.data.gson.GenericSnap;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.chat:
//            SendingMailman, ChatGapDetector, ChatConnectionMonitor, FeedIconManager

public class ChatConversationUpdater
{

    private final SendingMailman a;
    private final ChatGapDetector b;
    private final FeedIconManager c;
    private final SnapWomb d;
    private final LoadConversationPageTaskExecutor e;

    public ChatConversationUpdater(SendingMailman sendingmailman, ChatGapDetector chatgapdetector, FeedIconManager feediconmanager, SnapWomb snapwomb, LoadConversationPageTaskExecutor loadconversationpagetaskexecutor)
    {
        a = sendingmailman;
        b = chatgapdetector;
        c = feediconmanager;
        d = snapwomb;
        e = loadconversationpagetaskexecutor;
    }

    static ChatGapDetector a(ChatConversationUpdater chatconversationupdater)
    {
        return chatconversationupdater.b;
    }

    private void a(ChatConversation chatconversation, ServerChatConversation serverchatconversation, boolean flag)
    {
        String s;
        String s1;
        HashMap hashmap;
        HashMap hashmap1;
        HashSet hashset;
        HashSet hashset1;
        boolean flag1;
        List list;
        ChatFeedItem chatfeeditem3;
        s = chatconversation.b();
        s1 = chatconversation.c();
        hashmap = new HashMap();
        hashmap1 = new HashMap();
        hashset = new HashSet();
        hashset1 = new HashSet();
        Exception exception;
        Iterator iterator;
        if (flag && !chatconversation.A())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        list = chatconversation.t();
        list;
        JVM INSTR monitorenter ;
        iterator = list.iterator();
_L5:
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_338;
        }
        chatfeeditem3 = (ChatFeedItem)iterator.next();
        if (!(chatfeeditem3 instanceof CashFeedItem)) goto _L2; else goto _L1
_L1:
        if (!((CashFeedItem)chatfeeditem3).h().i()) goto _L4; else goto _L3
_L3:
        hashmap1.put(chatfeeditem3.d(), (CashFeedItem)chatfeeditem3);
          goto _L5
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        hashmap.put(chatfeeditem3.d(), chatfeeditem3);
          goto _L5
_L2:
label0:
        {
            if (!chatfeeditem3.V())
            {
                break MISSING_BLOCK_LABEL_299;
            }
            if (!(chatfeeditem3 instanceof Chat) || System.currentTimeMillis() - chatfeeditem3.ae() <= 20000L)
            {
                break label0;
            }
            ((Chat)chatfeeditem3).a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.FAILED);
            hashset1.add(chatfeeditem3);
        }
          goto _L5
label1:
        {
            if (!(chatfeeditem3 instanceof SentSnap) || !((SentSnap)chatfeeditem3).y())
            {
                break label1;
            }
            ((SentSnap)chatfeeditem3).h();
            d.c(((SentSnap)chatfeeditem3).x());
            hashset1.add(chatfeeditem3);
        }
          goto _L5
        hashset.add(chatfeeditem3);
          goto _L5
label2:
        {
            if (!chatfeeditem3.W())
            {
                break label2;
            }
            hashset1.add(chatfeeditem3);
        }
          goto _L5
        hashmap.put(chatfeeditem3.d(), chatfeeditem3);
          goto _L5
        HashSet hashset2;
        hashset2 = new HashSet();
        if (serverchatconversation.pending_received_snaps != null)
        {
            Iterator iterator3 = serverchatconversation.pending_received_snaps.iterator();
            do
            {
                if (!iterator3.hasNext())
                {
                    break;
                }
                ReceivedSnap receivedsnap = (ReceivedSnap)SnapUtils.a((GenericSnap)iterator3.next());
                if (!hashmap.containsKey(receivedsnap.d()))
                {
                    hashset2.add(receivedsnap);
                }
            } while (true);
        }
        if (serverchatconversation.conversation_messages == null) goto _L7; else goto _L6
_L6:
        Object obj = ServerChatConversation.getChatMessagesFromServerChatMessages(serverchatconversation.conversation_messages.getMessages());
_L13:
        ArrayList arraylist;
        Iterator iterator1;
        arraylist = new ArrayList();
        iterator1 = ((List) (obj)).iterator();
_L12:
        ChatFeedItem chatfeeditem1;
        if (!iterator1.hasNext())
        {
            break MISSING_BLOCK_LABEL_966;
        }
        chatfeeditem1 = (ChatFeedItem)iterator1.next();
        hashset1.remove(chatfeeditem1);
        hashset.remove(chatfeeditem1);
        if (chatfeeditem1 instanceof ReceivedSnap)
        {
            hashset2.remove(chatfeeditem1);
        }
        if (chatfeeditem1 instanceof IIterableChatFeedItem)
        {
            chatconversation.k(((IIterableChatFeedItem)chatfeeditem1).A());
        }
        if (!chatconversation.a(chatfeeditem1.d())) goto _L9; else goto _L8
_L8:
        hashmap.remove(chatfeeditem1.d());
        if (!(chatfeeditem1 instanceof ISavableChatFeedItem) || !((ISavableChatFeedItem)chatfeeditem1).k()) goto _L11; else goto _L10
_L10:
        chatconversation.b(chatfeeditem1.d());
          goto _L12
_L7:
        obj = new ArrayList();
          goto _L13
_L11:
        iterator1.remove();
          goto _L12
_L9:
        if (!hashmap.containsKey(chatfeeditem1.d())) goto _L15; else goto _L14
_L14:
        if (!(chatfeeditem1 instanceof Chat))
        {
            break MISSING_BLOCK_LABEL_705;
        }
        Chat chat2 = (Chat)hashmap.get(chatfeeditem1.d());
        chat2.a((Chat)chatfeeditem1);
        arraylist.add(chat2);
        if (chat2 instanceof ChatMedia)
        {
            ((ChatMedia)chat2).a((ChatMedia)chatfeeditem1);
        }
        iterator1.remove();
          goto _L12
label3:
        {
            if (!(chatfeeditem1 instanceof SentSnap))
            {
                break MISSING_BLOCK_LABEL_806;
            }
            ChatFeedItem chatfeeditem2 = (ChatFeedItem)hashmap.get(chatfeeditem1.d());
            if (!(chatfeeditem2 instanceof SentSnap))
            {
                break MISSING_BLOCK_LABEL_790;
            }
            if (!((SentSnap)chatfeeditem2).a((SentSnap)chatfeeditem1))
            {
                break label3;
            }
            arraylist.add(chatfeeditem2);
            iterator1.remove();
        }
          goto _L12
        hashmap.remove(chatfeeditem1.d());
          goto _L12
        hashmap.remove(chatfeeditem1.d());
          goto _L12
        if (!(chatfeeditem1 instanceof ReceivedSnap)) goto _L17; else goto _L16
_L16:
        arraylist.add(hashmap.get(chatfeeditem1.d()));
        iterator1.remove();
          goto _L12
_L17:
        if (!(chatfeeditem1 instanceof CashFeedItem)) goto _L12; else goto _L18
_L18:
        hashmap.remove(chatfeeditem1.d());
          goto _L12
_L15:
        if (!(chatfeeditem1 instanceof Chat)) goto _L12; else goto _L19
_L19:
        Chat chat1 = (Chat)chatfeeditem1;
        if (!chat1.k() && (TextUtils.equals(chat1.l(), s) && chat1.i() <= chatconversation.ae() && chat1.i() <= chatconversation.ac() || TextUtils.equals(chat1.l(), s1) && chat1.i() <= chatconversation.ad()))
        {
            iterator1.remove();
        }
          goto _L12
        chatconversation.a(hashmap1, ((List) (obj)), flag);
        if (flag1) goto _L21; else goto _L20
_L20:
        ((List) (obj)).addAll(hashmap.values());
        ((List) (obj)).addAll(hashmap1.values());
_L30:
        boolean flag2;
        boolean flag3;
        ((List) (obj)).addAll(hashset);
        chatconversation.a(hashset);
        ((List) (obj)).addAll(hashset1);
        ((List) (obj)).addAll(hashset2);
        Collections.sort(((List) (obj)));
        if (serverchatconversation.conversation_state != null)
        {
            b(chatconversation, serverchatconversation.conversation_state);
        }
        flag2 = chatconversation.A();
        flag3 = chatconversation.B();
        if (serverchatconversation.last_chat_actions == null) goto _L23; else goto _L22
_L22:
        long l = serverchatconversation.last_chat_actions.last_read_timestamp;
_L31:
        Iterator iterator2 = ((List) (obj)).iterator();
        boolean flag4 = false;
_L35:
        if (!iterator2.hasNext()) goto _L25; else goto _L24
_L24:
        ChatFeedItem chatfeeditem = (ChatFeedItem)iterator2.next();
        if (!(chatfeeditem instanceof Chat)) goto _L27; else goto _L26
_L26:
        Chat chat = (Chat)chatfeeditem;
        if (!TextUtils.equals(chat.l(), s) || chat.W() || chat.V()) goto _L29; else goto _L28
_L28:
        if (chat.i() > chatconversation.ac())
        {
            break MISSING_BLOCK_LABEL_1510;
        }
        chat.a(l);
        if (flag2)
        {
            break MISSING_BLOCK_LABEL_1510;
        }
        if (chat.k())
        {
            break MISSING_BLOCK_LABEL_1510;
        }
        iterator2.remove();
        boolean flag5;
        flag5 = flag4;
        break MISSING_BLOCK_LABEL_1503;
_L21:
        ((List) (obj)).addAll(arraylist);
          goto _L30
_L23:
        l = serverchatconversation.last_interaction_ts;
          goto _L31
_L29:
        if (!chat.m().contains(s))
        {
            break MISSING_BLOCK_LABEL_1510;
        }
        if (chat.i() > chatconversation.ab())
        {
            break MISSING_BLOCK_LABEL_1307;
        }
        chat.e(l);
        chat.a(l);
        if (flag2)
        {
            break MISSING_BLOCK_LABEL_1510;
        }
        if (chat.k())
        {
            break MISSING_BLOCK_LABEL_1510;
        }
        iterator2.remove();
        flag5 = flag4;
        break MISSING_BLOCK_LABEL_1503;
        if (chat.at())
        {
            break MISSING_BLOCK_LABEL_1510;
        }
        flag4 = true;
        if (chat.x() || !flag3)
        {
            break MISSING_BLOCK_LABEL_1510;
        }
        chat.c(UserPrefs.aO());
        break MISSING_BLOCK_LABEL_1510;
_L27:
        if (!(chatfeeditem instanceof Snap)) goto _L33; else goto _L32
_L32:
        Snap snap = (Snap)chatfeeditem;
        if ((!(snap instanceof ReceivedSnap) || snap.ae() > chatconversation.ah()) && (!(snap instanceof SentSnap) || snap.ae() > chatconversation.ag() || snap.W())) goto _L35; else goto _L34
_L34:
        snap.as();
        if (flag2) goto _L35; else goto _L36
_L36:
        iterator2.remove();
          goto _L35
_L33:
        if (!(chatfeeditem instanceof CashFeedItem)) goto _L35; else goto _L37
_L37:
        CashFeedItem cashfeeditem = (CashFeedItem)chatfeeditem;
        if (flag2) goto _L35; else goto _L38
_L38:
        if (cashfeeditem.k() || !cashfeeditem.at()) goto _L40; else goto _L39
_L39:
        iterator2.remove();
          goto _L35
_L40:
        if (cashfeeditem.o()) goto _L35; else goto _L41
_L41:
        flag4 = true;
          goto _L35
_L25:
        chatconversation.a(((List) (obj)));
        list;
        JVM INSTR monitorexit ;
        chatconversation.g(flag4);
        return;
_L42:
        flag4 = flag5;
          goto _L35
        flag5 = flag4;
          goto _L42
    }

    private void a(ChatConversation chatconversation, boolean flag)
    {
        if (flag)
        {
            if (chatconversation.F())
            {
                Timber.f("ChatConversationUpdater", "CHAT-LOG: OLD myLastSeqNum > NEW myLastSeqNum and now on HTTP", new Object[0]);
                (new Handler(Looper.getMainLooper())).postDelayed(new Runnable(chatconversation) {

                    final ChatConversation a;
                    final ChatConversationUpdater b;

                    public void run()
                    {
                        a.a(com.snapchat.android.model.chat.ChatConversation.SequenceNumberState.UPDATED);
                        a.a(0);
                        ChatConversationUpdater.c(b).a(a, a.X());
                        ChatConversationUpdater.c(b).d(a);
                    }

            
            {
                b = ChatConversationUpdater.this;
                a = chatconversation;
                super();
            }
                }, 5500L);
                return;
            } else
            {
                Timber.f("ChatConversationUpdater", "CHAT-LOG: OLD myLastSeqNum > NEW myLastSeqNum and now on TCP", new Object[0]);
                chatconversation.a(com.snapchat.android.model.chat.ChatConversation.SequenceNumberState.UPDATED);
                chatconversation.a(0);
                a.a(chatconversation, chatconversation.X());
                return;
            }
        } else
        {
            chatconversation.a(com.snapchat.android.model.chat.ChatConversation.SequenceNumberState.UPDATED);
            return;
        }
    }

    static LoadConversationPageTaskExecutor b(ChatConversationUpdater chatconversationupdater)
    {
        return chatconversationupdater.e;
    }

    private void b(ChatConversation chatconversation, com.snapchat.android.model.server.chat.ServerChatConversation.ConversationState conversationstate)
    {
        String s = chatconversation.u();
        String s1 = chatconversation.b();
        String s2 = chatconversation.c();
        long l = chatconversation.X();
        long l1 = chatconversation.Y();
        Map map = conversationstate.user_sequences;
        if (map != null)
        {
            Map map1;
            Map map2;
            Map map3;
            long l2;
            long l3;
            Map map4;
            Map map5;
            long l4;
            long l5;
            long l6;
            long l7;
            if (map.containsKey(s2))
            {
                l6 = ((Long)map.get(s2)).longValue();
            } else
            {
                l6 = 0L;
            }
            if (l6 >= l1)
            {
                chatconversation.e(l6);
                chatconversation.J();
                b.d(s);
            } else
            if (b.b(s))
            {
                (new Handler(Looper.getMainLooper())).postDelayed(new Runnable(s) {

                    final String a;
                    final ChatConversationUpdater b;

                    public void run()
                    {
                        if (ChatConversationUpdater.a(b).b(a))
                        {
                            ChatConversationUpdater.b(b).a(a, true);
                        }
                    }

            
            {
                b = ChatConversationUpdater.this;
                a = s;
                super();
            }
                }, 8000L);
            }
            if (map.containsKey(s1))
            {
                l7 = PrimitiveUtils.a((Long)map.get(s1));
            } else
            {
                l7 = 0L;
            }
            if (l7 > l || !ChatConnectionMonitor.a().f())
            {
                chatconversation.d(l7);
            }
        }
        map1 = conversationstate.user_chat_releases;
        if (map1 != null)
        {
            map4 = (Map)map1.get(s1);
            if (map4 != null && map4.containsKey(s2))
            {
                l5 = PrimitiveUtils.a((Long)map4.get(s2));
                if (l5 > chatconversation.ab())
                {
                    chatconversation.h(l5);
                }
                if (l5 > chatconversation.aa())
                {
                    chatconversation.h(l5);
                }
            }
            map5 = (Map)map1.get(s2);
            if (map5 != null && map5.containsKey(s1))
            {
                l4 = PrimitiveUtils.a((Long)map5.get(s1));
                if (l4 > chatconversation.ac())
                {
                    chatconversation.i(l4);
                }
            }
        }
        map2 = conversationstate.user_snap_releases;
        if (map2 != null)
        {
            map3 = (Map)map2.get(s1);
            if (map3 != null)
            {
                if (map3.containsKey(s2))
                {
                    l3 = PrimitiveUtils.a((Long)map3.get(s2));
                    if (l3 > chatconversation.ag())
                    {
                        chatconversation.m(l3);
                    }
                }
                if (map3.containsKey(s1))
                {
                    l2 = PrimitiveUtils.a((Long)map3.get(s1));
                    if (l2 > chatconversation.ah())
                    {
                        chatconversation.n(l2);
                    }
                }
            }
        }
    }

    static SendingMailman c(ChatConversationUpdater chatconversationupdater)
    {
        return chatconversationupdater.a;
    }

    protected Chat a(ChatConversation chatconversation, com.snapchat.android.model.server.chat.ServerChatConversation.LastChatActions lastchatactions)
    {
        String s;
        String s1;
        String s2;
        Chat chat;
        if (lastchatactions == null || TextUtils.isEmpty(lastchatactions.last_writer))
        {
            break MISSING_BLOCK_LABEL_173;
        }
        s = chatconversation.b();
        s1 = chatconversation.c();
        com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus sendreceivestatus;
        String s3;
        if (TextUtils.equals(lastchatactions.last_writer, s))
        {
            sendreceivestatus = com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.SENT;
            s2 = s1;
            s3 = s;
        } else
        {
            sendreceivestatus = com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.RECEIVED;
            s2 = s;
            s3 = s1;
        }
        chat = ChatUtils.a(lastchatactions.last_write_type, s3, s2, sendreceivestatus, lastchatactions.last_write_timestamp);
        if (lastchatactions.last_read_timestamp <= lastchatactions.last_write_timestamp) goto _L2; else goto _L1
_L1:
        chat.a(lastchatactions.last_read_timestamp);
_L4:
        return chat;
_L2:
        if (TextUtils.equals(s2, s1) && chatconversation.X() == chatconversation.ac())
        {
            chat.a(lastchatactions.last_write_timestamp);
            return chat;
        }
        if (!TextUtils.equals(s2, s) || chatconversation.Y() != chatconversation.ab()) goto _L4; else goto _L3
_L3:
        chat.a(lastchatactions.last_write_timestamp);
        return chat;
        return null;
    }

    public void a(ChatConversation chatconversation, ServerChatConversation serverchatconversation, boolean flag, boolean flag1)
    {
        String s = chatconversation.u();
        if (serverchatconversation.conversation_messages != null)
        {
            chatconversation.a(serverchatconversation.conversation_messages.messaging_auth);
        }
        a(chatconversation, serverchatconversation, flag1);
        chatconversation.c(Math.max(serverchatconversation.last_interaction_ts, chatconversation.T()));
        List list = chatconversation.t();
        if (!list.isEmpty())
        {
            chatconversation.c(Math.max(((ChatFeedItem)list.get(-1 + list.size())).ae(), chatconversation.T()));
        }
        Chat chat;
        boolean flag2;
        if (serverchatconversation.last_snap != null)
        {
            Snap snap = SnapUtils.a(serverchatconversation.last_snap);
            Snap snap1 = chatconversation.au();
            ChatFeedItem chatfeeditem;
            Bus bus;
            if (snap1 == null || snap.ae() > snap1.ae())
            {
                chatconversation.a(snap);
            } else
            if (snap.ae() == snap1.ae())
            {
                if ((snap1 instanceof ReceivedSnap) && (snap instanceof ReceivedSnap))
                {
                    if (!((ReceivedSnap)snap1).F())
                    {
                        chatconversation.a(snap);
                    }
                } else
                {
                    chatconversation.a(snap);
                }
            }
        }
        if (serverchatconversation.last_cash_transaction != null)
        {
            CashFeedItem cashfeeditem = new CashFeedItem(com.snapchat.android.model.CashTransaction.Builder.a(serverchatconversation.last_cash_transaction));
            CashFeedItem cashfeeditem1 = chatconversation.av();
            if (cashfeeditem1 == null || cashfeeditem.ae() > cashfeeditem1.ae())
            {
                chatconversation.a(cashfeeditem);
            } else
            if (cashfeeditem.ae() == cashfeeditem1.ae() && !cashfeeditem.at())
            {
                chatconversation.a(cashfeeditem1);
            }
        }
        chat = a(chatconversation, serverchatconversation.last_chat_actions);
        if (chat != null)
        {
            Chat chat1 = chatconversation.at();
            if (chat1 == null || chat.ae() > chat1.ae())
            {
                chatconversation.b(chat);
            } else
            if (chat.ae() == chat1.ae() && !chat1.g())
            {
                chatconversation.b(chat);
            }
        }
        chatfeeditem = chatconversation.aw();
        if (chatfeeditem != null)
        {
            chatconversation.c(Math.max(chatfeeditem.ae(), chatconversation.T()));
        }
        chatconversation.j(serverchatconversation.iter_token);
        b.e(s);
        bus = BusProvider.a();
        if (chatconversation.am() && flag1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        bus.a(new ChatUpdatedEvent(s, flag2));
        if (flag)
        {
            chatconversation.a(3, null, false);
        }
        a(chatconversation, a(chatconversation, serverchatconversation.conversation_state));
        a.d(chatconversation);
        c.a(chatconversation, true);
        BusProvider.a().a(new UpdateFeedEvent());
    }

    protected boolean a(ChatConversation chatconversation, com.snapchat.android.model.server.chat.ServerChatConversation.ConversationState conversationstate)
    {
        if (conversationstate != null)
        {
            Map map = conversationstate.user_sequences;
            if (map != null)
            {
                String s = chatconversation.b();
                long l;
                if (map.containsKey(s))
                {
                    l = PrimitiveUtils.a((Long)map.get(s));
                } else
                {
                    l = 0L;
                }
                return chatconversation.X() > l;
            }
        }
        return false;
    }
}
