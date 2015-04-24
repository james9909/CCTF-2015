// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.BlockerManager;
import com.snapchat.android.api2.cash.MarkTransactionsAsViewedTask;
import com.snapchat.android.api2.cash.RetrieveTransactionTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.chat.FeedIconManager;
import com.snapchat.android.database.table.CashFeedItemTable;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.server.ServerCashTransaction;
import com.snapchat.android.util.CashUtils;
import com.snapchat.android.util.ListUtils;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.snapchat.android.util.eventbus.UpdateFeedEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class SendingCashManager
{
    public static interface ConfirmingCashCallback
    {

        public abstract void a();

        public abstract void b();
    }

    public static interface SendingCashCallback
    {

        public abstract void a();

        public abstract void b();
    }


    protected BlockerManager a;

    public SendingCashManager()
    {
    }

    private com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener a(ChatConversation chatconversation, CashFeedItem cashfeeditem, List list)
    {
        return new com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener(cashfeeditem, list, chatconversation) {

            final CashFeedItem a;
            final List b;
            final ChatConversation c;
            final SendingCashManager d;

            public void a()
            {
                Object aobj[] = new Object[1];
                aobj[0] = a.d();
                Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager RETRY SENT cash id[%s] successfully", aobj);
                AnalyticsEvents.p(a.h().j());
                if (b.isEmpty())
                {
                    SendingCashManager.a(d, c);
                    return;
                }
                String s = a.h().z();
                if (!TextUtils.isEmpty(s))
                {
                    ((CashFeedItem)b.get(0)).h().g(s);
                }
                d.a(c, b);
            }

            public void b()
            {
                Object aobj[] = new Object[1];
                aobj[0] = a.d();
                Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager RETRY FAILED to SEND cash id[%s]", aobj);
                a.a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.FAILED);
                SendingCashManager.a(d, c);
            }

            
            {
                d = SendingCashManager.this;
                a = cashfeeditem;
                b = list;
                c = chatconversation;
                super();
            }
        };
    }

    static void a(SendingCashManager sendingcashmanager, ChatConversation chatconversation)
    {
        sendingcashmanager.a(chatconversation);
    }

    private void a(ChatConversation chatconversation)
    {
        FeedIconManager.a().a(chatconversation, false);
        BusProvider.a().a(new UpdateFeedEvent());
        BusProvider.a().a(new ChatUpdatedEvent(chatconversation.u()));
    }

    protected MarkTransactionsAsViewedTask a(Collection collection, String s, com.snapchat.android.api2.cash.MarkTransactionsAsViewedTask.MarkTransactionsAsViewedTaskCallback marktransactionsasviewedtaskcallback)
    {
        return new MarkTransactionsAsViewedTask(collection, s, marktransactionsasviewedtaskcallback);
    }

    protected RetrieveTransactionTask a(String s, String s1, com.snapchat.android.api2.framework.HyperRequest.JsonCallback jsoncallback)
    {
        RetrieveTransactionTask retrievetransactiontask = new RetrieveTransactionTask(s, s1);
        retrievetransactiontask.a(com/snapchat/android/model/server/ServerCashTransaction, jsoncallback);
        return retrievetransactiontask;
    }

    public CashFeedItem a(ChatConversation chatconversation, int i)
    {
        return a(chatconversation, i, false);
    }

    public CashFeedItem a(ChatConversation chatconversation, int i, boolean flag)
    {
        CashTransaction cashtransaction = (new com.snapchat.android.model.CashTransaction.Builder(chatconversation.b(), chatconversation.c(), i)).a(flag).a();
        cashtransaction.e(UserPrefs.X());
        long l = chatconversation.a(System.currentTimeMillis());
        cashtransaction.a(l);
        cashtransaction.b(l);
        CashFeedItem cashfeeditem = new CashFeedItem(cashtransaction);
        cashfeeditem.a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.SENDING);
        return cashfeeditem;
    }

    public void a(CashFeedItem cashfeeditem, ConfirmingCashCallback confirmingcashcallback)
    {
        Object aobj[] = new Object[3];
        aobj[0] = cashfeeditem.d();
        aobj[1] = cashfeeditem.J();
        aobj[2] = cashfeeditem.h().j();
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager CONFIRM cash id[%s] recipient[%s] amount[%s]", aobj);
        a.a(cashfeeditem, new com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener(cashfeeditem, confirmingcashcallback) {

            final CashFeedItem a;
            final ConfirmingCashCallback b;
            final SendingCashManager c;

            public void a()
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = a.d();
                Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager CONFIRMED cash id[%s]", aobj1);
                b.a();
            }

            public void b()
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = a.d();
                Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager CONFIRM CANCELED id[%s]", aobj1);
                b.b();
            }

            
            {
                c = SendingCashManager.this;
                a = cashfeeditem;
                b = confirmingcashcallback;
                super();
            }
        });
    }

    public void a(ChatConversation chatconversation, CashFeedItem cashfeeditem, SendingCashCallback sendingcashcallback)
    {
        if (!cashfeeditem.W())
        {
            throw new RuntimeException("SendingCashManager fetchTransactionStatusAndResolveBlockers should only be called on failed CashFeedItems!");
        }
        cashfeeditem.E();
        FeedIconManager.a().a(chatconversation, false);
        if (!cashfeeditem.h().h())
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = cashfeeditem.d();
            Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers RETRIEVING sending cash transaction id[%s]", aobj1);
            a.d(cashfeeditem, new com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener(cashfeeditem, sendingcashcallback, chatconversation) {

                final CashFeedItem a;
                final SendingCashCallback b;
                final ChatConversation c;
                final SendingCashManager d;

                public void a()
                {
                    Object aobj2[] = new Object[1];
                    aobj2[0] = a.d();
                    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers FETCHED transaction and resolved blockers id[%s]", aobj2);
                    AnalyticsEvents.p(a.h().j());
                    b.a();
                    SendingCashManager.a(d, c);
                }

                public void b()
                {
                    Object aobj2[] = new Object[1];
                    aobj2[0] = a.d();
                    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers FAILED to fetch transaction and/or resolve blockers id[%s]", aobj2);
                    b.b();
                    SendingCashManager.a(d, c);
                }

            
            {
                d = SendingCashManager.this;
                a = cashfeeditem;
                b = sendingcashcallback;
                c = chatconversation;
                super();
            }
            });
            return;
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = cashfeeditem.d();
            Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers RE-INITIATING cash transaction id[%s]", aobj);
            a.c(cashfeeditem, new com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener(cashfeeditem, sendingcashcallback, chatconversation) {

                final CashFeedItem a;
                final SendingCashCallback b;
                final ChatConversation c;
                final SendingCashManager d;

                public void a()
                {
                    Object aobj2[] = new Object[1];
                    aobj2[0] = a.d();
                    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager RE-INITIATED cash id[%s] successfully", aobj2);
                    b.a();
                    SendingCashManager.a(d, c);
                }

                public void b()
                {
                    Object aobj2[] = new Object[1];
                    aobj2[0] = a.d();
                    Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager FAILED to RE-INITIATE cash id[%s]", aobj2);
                    b.b();
                    SendingCashManager.a(d, c);
                }

            
            {
                d = SendingCashManager.this;
                a = cashfeeditem;
                b = sendingcashcallback;
                c = chatconversation;
                super();
            }
            });
            BusProvider.a().a(new ChatUpdatedEvent(cashfeeditem.I(), cashfeeditem.d()));
            BusProvider.a().a(new UpdateFeedEvent());
            return;
        }
    }

    public void a(ChatConversation chatconversation, CashFeedItem cashfeeditem, String s, SendingCashCallback sendingcashcallback)
    {
        Object aobj[] = new Object[4];
        aobj[0] = cashfeeditem.d();
        aobj[1] = cashfeeditem.J();
        aobj[2] = cashfeeditem.h().j();
        String s1;
        if (TextUtils.isEmpty(s))
        {
            s1 = s;
        } else
        {
            s1 = s.substring(0, Math.min(5, s.length()));
        }
        aobj[3] = s1;
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager SEND cash id[%s] recipient[%s] amount[%s] message[%s]", aobj);
        cashfeeditem.h().f(s);
        if (chatconversation.aC())
        {
            chatconversation.n(false);
        }
        a.b(cashfeeditem, new com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener(cashfeeditem, chatconversation, sendingcashcallback) {

            final CashFeedItem a;
            final ChatConversation b;
            final SendingCashCallback c;
            final SendingCashManager d;

            public void a()
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = a.d();
                Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager PRE-INITIATED cash id[%s]", aobj1);
                a.a(com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus.SENDING);
                b.a(a);
                b.K();
                FeedIconManager.a().a(b, false);
                b.k(false);
                c.a();
                d.a(b, a, true);
            }

            public void b()
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = a.d();
                Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager SEND CANCELED id[%s]", aobj1);
                c.b();
                SendingCashManager.a(d, b);
            }

            
            {
                d = SendingCashManager.this;
                a = cashfeeditem;
                b = chatconversation;
                c = sendingcashcallback;
                super();
            }
        });
    }

    protected void a(ChatConversation chatconversation, CashFeedItem cashfeeditem, boolean flag)
    {
        Object aobj[] = new Object[1];
        aobj[0] = cashfeeditem.d();
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager INITIATING cash id[%s]", aobj);
        a.c(cashfeeditem, new com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener(cashfeeditem, chatconversation) {

            final CashFeedItem a;
            final ChatConversation b;
            final SendingCashManager c;

            public void a()
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = a.d();
                Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager INITIATED cash id[%s] successfully", aobj1);
                SendingCashManager.a(c, b);
                AnalyticsEvents.p(a.h().j());
            }

            public void b()
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = a.d();
                Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager FAILED to INITIATE cash id[%s]", aobj1);
                SendingCashManager.a(c, b);
            }

            
            {
                c = SendingCashManager.this;
                a = cashfeeditem;
                b = chatconversation;
                super();
            }
        });
        BusProvider.a().a(new ChatUpdatedEvent(cashfeeditem.I(), flag));
        BusProvider.a().a(new UpdateFeedEvent());
    }

    public void a(ChatConversation chatconversation, String s)
    {
        a(s, chatconversation.u(), new com.snapchat.android.api2.framework.HyperRequest.JsonCallback(chatconversation, s) {

            final ChatConversation a;
            final String b;
            final SendingCashManager c;

            public void a(ServerCashTransaction servercashtransaction, NetworkResult networkresult)
            {
                if (networkresult.h() && servercashtransaction != null)
                {
                    CashTransaction cashtransaction = com.snapchat.android.model.CashTransaction.Builder.a(servercashtransaction);
                    CashFeedItem cashfeeditem1 = a.e(b);
                    CashFeedItem cashfeeditem2 = new CashFeedItem(cashtransaction);
                    CashFeedItem cashfeeditem3 = CashUtils.a(a, cashfeeditem1, cashfeeditem2);
                    if (cashfeeditem3 != null)
                    {
                        if (a.B() || CashUtils.a(a.b(), cashfeeditem3))
                        {
                            c.b(a, ListUtils.a(cashfeeditem3));
                        }
                        CashFeedItemTable.a(SnapchatApplication.e(), ListUtils.a(cashfeeditem3));
                    }
                    BusProvider.a().a(new ChatUpdatedEvent(a.u()));
                    BusProvider.a().a(new UpdateFeedEvent());
                } else
                if (networkresult.j() == 404)
                {
                    CashFeedItem cashfeeditem = a.e(b);
                    if (CashUtils.a(a, cashfeeditem, null) != null)
                    {
                        BusProvider.a().a(new ChatUpdatedEvent(a.u()));
                        BusProvider.a().a(new UpdateFeedEvent());
                        return;
                    }
                }
            }

            public volatile void a(Object obj, NetworkResult networkresult)
            {
                a((ServerCashTransaction)obj, networkresult);
            }

            
            {
                c = SendingCashManager.this;
                a = chatconversation;
                b = s;
                super();
            }
        }).g();
    }

    public void a(ChatConversation chatconversation, List list)
    {
        CashFeedItem cashfeeditem;
label0:
        {
            if (!list.isEmpty())
            {
                cashfeeditem = (CashFeedItem)list.remove(0);
                if (!cashfeeditem.W())
                {
                    throw new RuntimeException("SendingCashManager retrySendCash should only be called on failed CashFeedItems!");
                }
                cashfeeditem.E();
                if (cashfeeditem.h().h())
                {
                    break label0;
                }
                Object aobj1[] = new Object[1];
                aobj1[0] = cashfeeditem.d();
                Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager retrySendCash RETRIEVING cash transaction id[%s]", aobj1);
                a.d(cashfeeditem, a(chatconversation, cashfeeditem, list));
            }
            return;
        }
        Object aobj[] = new Object[1];
        aobj[0] = cashfeeditem.d();
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager retrySendCash RE-INITIATING cash transaction id[%s]", aobj);
        a.c(cashfeeditem, a(chatconversation, cashfeeditem, list));
    }

    public void b(ChatConversation chatconversation, List list)
    {
        if (!list.isEmpty()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        HashMap hashmap;
        Iterator iterator;
        hashmap = new HashMap();
        iterator = list.iterator();
_L4:
        CashFeedItem cashfeeditem;
        com.snapchat.android.model.CashTransaction.TransactionStatus transactionstatus;
        do
        {
            if (!iterator.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            cashfeeditem = (CashFeedItem)iterator.next();
        } while (cashfeeditem.o() || !cashfeeditem.a(true));
        transactionstatus = cashfeeditem.h().o();
        if (!ChatUtils.a(cashfeeditem))
        {
            break; /* Loop/switch isn't completed */
        }
        if (transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.EXPIRED)
        {
            AnalyticsEvents.v(cashfeeditem.h().j());
        } else
        if (transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.CANCELED)
        {
            AnalyticsEvents.w(cashfeeditem.h().j());
        }
_L5:
        hashmap.put(cashfeeditem.d(), cashfeeditem);
        if (true) goto _L4; else goto _L3
_L3:
        if (transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.COMPLETED)
        {
            AnalyticsEvents.t(cashfeeditem.h().j());
        } else
        if (transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.RECIPIENT_CANCELED)
        {
            AnalyticsEvents.u("USER_DETERMINED_INELIGIBLE");
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
        if (hashmap.isEmpty()) goto _L1; else goto _L7
_L7:
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(hashmap.size());
        Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager mark as viewed %d items", aobj);
        a(hashmap.keySet(), chatconversation.u(), new com.snapchat.android.api2.cash.MarkTransactionsAsViewedTask.MarkTransactionsAsViewedTaskCallback(hashmap) {

            final HashMap a;
            final SendingCashManager b;

            private void a()
            {
                Collection collection = a.values();
                for (Iterator iterator1 = collection.iterator(); iterator1.hasNext(); ((CashFeedItem)iterator1.next()).a(false)) { }
                CashFeedItemTable.a(SnapchatApplication.e(), collection);
            }

            public void a(int i)
            {
                Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager FAILED marking all items as viewed", new Object[0]);
                a();
            }

            public void a(List list1)
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = Integer.valueOf(list1.size());
                Timber.b("SendingCashManager", "CASH-LOG: SendingCashManager SUCCESS marked as viewed %d items", aobj1);
                ArrayList arraylist = new ArrayList();
                String s;
                for (Iterator iterator1 = list1.iterator(); iterator1.hasNext(); arraylist.add(a.remove(s)))
                {
                    s = (String)iterator1.next();
                }

                CashFeedItemTable.a(SnapchatApplication.e(), arraylist);
                a();
            }

            
            {
                b = SendingCashManager.this;
                a = hashmap;
                super();
            }
        }).g();
        return;
    }
}
