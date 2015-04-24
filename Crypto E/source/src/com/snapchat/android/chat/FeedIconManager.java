// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.Chat;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.ChatText;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.RefreshCameraNotificationBoxesEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class FeedIconManager
{

    private static FeedIconManager a;

    protected FeedIconManager()
    {
    }

    public static FeedIconManager a()
    {
        com/snapchat/android/chat/FeedIconManager;
        JVM INSTR monitorenter ;
        FeedIconManager feediconmanager;
        if (a == null)
        {
            a = new FeedIconManager();
        }
        feediconmanager = a;
        com/snapchat/android/chat/FeedIconManager;
        JVM INSTR monitorexit ;
        return feediconmanager;
        Exception exception;
        exception;
        throw exception;
    }

    private String a(ChatFeedItem chatfeeditem)
    {
        if (chatfeeditem instanceof Snap)
        {
            return com/snapchat/android/model/Snap.getSimpleName();
        }
        if (chatfeeditem instanceof Chat)
        {
            return com/snapchat/android/model/chat/Chat.getSimpleName();
        }
        if (chatfeeditem instanceof CashFeedItem)
        {
            return com/snapchat/android/model/chat/CashFeedItem.getSimpleName();
        } else
        {
            return chatfeeditem.getClass().getSimpleName();
        }
    }

    public void a(ChatConversation chatconversation, List list)
    {
        List list1 = d(chatconversation, list);
        chatconversation.d(list1);
        if (!list1.isEmpty())
        {
            chatconversation.c((ChatFeedItem)list1.get(0));
        }
    }

    public void a(ChatConversation chatconversation, boolean flag)
    {
        String s;
        List list;
        s = chatconversation.u();
        list = chatconversation.ax();
        if (!chatconversation.aC()) goto _L2; else goto _L1
_L1:
        chatconversation.d(new ArrayList());
_L21:
        return;
_L2:
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        Snap snap;
        Chat chat;
        CashFeedItem cashfeeditem;
        flag1 = false;
        flag2 = false;
        flag3 = false;
        flag4 = false;
        snap = chatconversation.au();
        chat = chatconversation.at();
        cashfeeditem = chatconversation.av();
        List list1 = chatconversation.t();
        list1;
        JVM INSTR monitorenter ;
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        Iterator iterator1 = list.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem3 = (ChatFeedItem)iterator1.next();
            if (chatfeeditem3.W() && !list1.contains(chatfeeditem3))
            {
                chatfeeditem3.s();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_145;
        Exception exception;
        exception;
        list1;
        JVM INSTR monitorexit ;
        throw exception;
        List list2;
        Iterator iterator;
        list2 = d(chatconversation, list1);
        iterator = list1.iterator();
_L23:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        ChatFeedItem chatfeeditem2 = (ChatFeedItem)iterator.next();
        if (!(chatfeeditem2 instanceof Snap)) goto _L6; else goto _L5
_L5:
        if (!(chatfeeditem2 instanceof ReceivedSnap) || ((ReceivedSnap)chatfeeditem2).G()) goto _L8; else goto _L7
_L7:
        flag1 = true;
        if (!((ReceivedSnap)chatfeeditem2).an()) goto _L8; else goto _L9
_L9:
        boolean flag7;
        boolean flag9;
        flag7 = true;
        flag9 = flag1;
_L22:
        if (snap == null) goto _L11; else goto _L10
_L10:
        if (chatfeeditem2.ae() < snap.ae()) goto _L12; else goto _L11
_L11:
        chatconversation.a((Snap)chatfeeditem2);
        boolean flag6;
        boolean flag8;
        flag6 = flag4;
        flag8 = flag2;
        break MISSING_BLOCK_LABEL_804;
_L6:
        if (!(chatfeeditem2 instanceof Chat)) goto _L14; else goto _L13
_L13:
        boolean flag10;
        boolean flag11;
        if (((chatfeeditem2 instanceof ChatText) || (chatfeeditem2 instanceof ChatMedia)) && TextUtils.equals(chatfeeditem2.l(), chatconversation.c()) && !chatfeeditem2.at())
        {
            flag11 = true;
        } else
        {
            flag11 = flag2;
        }
        if (chat == null) goto _L16; else goto _L15
_L15:
        if (chatfeeditem2.ae() < chat.ae()) goto _L17; else goto _L16
_L16:
        chatconversation.b((Chat)chatfeeditem2);
        flag6 = flag4;
        flag8 = flag11;
        flag7 = flag3;
        flag9 = flag1;
        break MISSING_BLOCK_LABEL_804;
_L14:
        if (!(chatfeeditem2 instanceof CashFeedItem)) goto _L19; else goto _L18
_L18:
        List list3;
        boolean flag5;
        Object aobj[];
        ChatFeedItem chatfeeditem;
        ChatFeedItem chatfeeditem1;
        if (!ChatUtils.a(chatfeeditem2) && !((CashFeedItem)chatfeeditem2).o())
        {
            flag10 = true;
        } else
        {
            flag10 = flag4;
        }
        if (cashfeeditem == null)
        {
            break MISSING_BLOCK_LABEL_428;
        }
        if (chatfeeditem2.ae() < cashfeeditem.ae())
        {
            break MISSING_BLOCK_LABEL_823;
        }
        chatconversation.a((CashFeedItem)chatfeeditem2);
        break MISSING_BLOCK_LABEL_823;
_L4:
        list1;
        JVM INSTR monitorexit ;
        if (chat != null)
        {
            list2.add(chat);
        }
        if (snap != null)
        {
            list2.add(snap);
        }
        if (cashfeeditem != null)
        {
            list2.add(cashfeeditem);
        }
        list3 = d(chatconversation, list2);
        if (!list3.isEmpty())
        {
            break MISSING_BLOCK_LABEL_699;
        }
        Timber.f("FeedIconManager", "FEEDICON-LOG: We couldn't find feed icons from existing content for %s", new Object[] {
            s
        });
        if (list != null && !list.isEmpty()) goto _L21; else goto _L20
_L20:
        if (list == null || list.size() != list3.size())
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        chatconversation.d(list3);
        if (!list3.isEmpty())
        {
            chatfeeditem = (ChatFeedItem)list3.get(0);
            chatfeeditem1 = chatconversation.aw();
            if (chatfeeditem1 == null || !chatfeeditem.equals(chatfeeditem1))
            {
                flag5 = true;
                chatconversation.c(chatfeeditem);
            }
        } else
        {
            chatconversation.c(null);
        }
        if (flag5)
        {
            aobj = new Object[2];
            aobj[0] = chatconversation.u();
            aobj[1] = chatconversation.ax();
            Timber.f("FeedIconManager", "FEEDICON-LOG: Feed icons changed for %s: %s", aobj);
        }
        chatconversation.g(flag2);
        chatconversation.j(flag1);
        chatconversation.i(flag3);
        chatconversation.h(flag4);
        if (flag)
        {
            BusProvider.a().a(new RefreshCameraNotificationBoxesEvent());
            return;
        }
          goto _L21
        Collections.sort(list3, new Comparator(chatconversation) {

            final ChatConversation a;
            final FeedIconManager b;

            public int a(ChatFeedItem chatfeeditem4, ChatFeedItem chatfeeditem5)
            {
                long l = chatfeeditem4.c(a);
                long l1 = chatfeeditem5.c(a) - l;
                if (l1 < 0L)
                {
                    return -1;
                }
                return l1 <= 0L ? 0 : 1;
            }

            public int compare(Object obj, Object obj1)
            {
                return a((ChatFeedItem)obj, (ChatFeedItem)obj1);
            }

            
            {
                b = FeedIconManager.this;
                a = chatconversation;
                super();
            }
        });
          goto _L20
_L19:
        flag6 = flag4;
        flag7 = flag3;
        flag8 = flag2;
        flag9 = flag1;
        break MISSING_BLOCK_LABEL_804;
_L17:
        flag6 = flag4;
        flag8 = flag11;
        flag7 = flag3;
        flag9 = flag1;
        break MISSING_BLOCK_LABEL_804;
_L12:
        flag6 = flag4;
        flag8 = flag2;
        break MISSING_BLOCK_LABEL_804;
_L8:
        flag7 = flag3;
        flag9 = flag1;
          goto _L22
_L24:
        flag2 = flag8;
        flag1 = flag9;
        flag4 = flag6;
        flag3 = flag7;
          goto _L23
        flag6 = flag10;
        flag8 = flag2;
        flag7 = flag3;
        flag9 = flag1;
          goto _L24
    }

    protected List b(ChatConversation chatconversation, List list)
    {
        HashMap hashmap = new HashMap();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
            String s = a(chatfeeditem);
            if (hashmap.containsKey(s))
            {
                if (chatfeeditem.b(chatconversation) < ((ChatFeedItem)hashmap.get(s)).b(chatconversation))
                {
                    hashmap.put(s, chatfeeditem);
                }
            } else
            {
                hashmap.put(s, chatfeeditem);
            }
        } while (true);
        return new ArrayList(hashmap.values());
    }

    protected List c(ChatConversation chatconversation, List list)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        int i = -1;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ChatFeedItem chatfeeditem = (ChatFeedItem)iterator.next();
            int j = chatfeeditem.a(chatconversation);
            if (j > i)
            {
                arraylist.clear();
                i = j;
            }
            if (j == i)
            {
                arraylist.add(chatfeeditem);
            }
        } while (true);
        return arraylist;
    }

    protected List d(ChatConversation chatconversation, List list)
    {
        if (list.size() == 0)
        {
            return new ArrayList();
        }
        List list1 = c(chatconversation, list);
        int i = ((ChatFeedItem)list1.get(0)).a(chatconversation);
        if (i == com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.UNOPENED_SNAP_AVAILABLE_NEXT.ordinal())
        {
            ChatFeedItem achatfeeditem[] = new ChatFeedItem[1];
            achatfeeditem[0] = chatconversation.f();
            return new ArrayList(Arrays.asList(achatfeeditem));
        }
        if (i == com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority.NEW.ordinal())
        {
            return b(chatconversation, list1);
        } else
        {
            return e(chatconversation, list1);
        }
    }

    protected List e(ChatConversation chatconversation, List list)
    {
        ChatFeedItem chatfeeditem = (ChatFeedItem)list.get(0);
        Iterator iterator = list.iterator();
        ChatFeedItem chatfeeditem1 = chatfeeditem;
        while (iterator.hasNext()) 
        {
            ChatFeedItem chatfeeditem2 = (ChatFeedItem)iterator.next();
            if (chatfeeditem2.b(chatconversation) <= chatfeeditem1.b(chatconversation))
            {
                chatfeeditem2 = chatfeeditem1;
            }
            chatfeeditem1 = chatfeeditem2;
        }
        return new ArrayList(Arrays.asList(new ChatFeedItem[] {
            chatfeeditem1
        }));
    }
}
