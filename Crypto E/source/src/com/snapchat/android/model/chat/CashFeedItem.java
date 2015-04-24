// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.chat;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.UpdateTransactionTask;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.cash.CashtagParser;
import com.snapchat.android.database.table.CashFeedItemTable;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.CashUtils;
import com.snapchat.android.util.ListUtils;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.UniquePriorityQueue;
import com.snapchat.android.util.chat.ChatUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChatUpdatedEvent;
import com.snapchat.android.util.primitives.LongUtils;
import com.squareup.otto.Bus;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.PriorityQueue;

// Referenced classes of package com.snapchat.android.model.chat:
//            StatefulChatFeedItem, IIterableChatFeedItem, ISavableChatFeedItem, ChatFeedItem, 
//            ChatConversation

public class CashFeedItem extends StatefulChatFeedItem
    implements com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener, IIterableChatFeedItem, ISavableChatFeedItem
{
    public static final class BlockerResolutionState extends Enum
    {

        private static final BlockerResolutionState $VALUES[];
        public static final BlockerResolutionState INITIATED;
        public static final BlockerResolutionState INITIATING;
        public static final BlockerResolutionState PRE_CONFIRMATION;
        public static final BlockerResolutionState PRE_INITIATION;

        public static BlockerResolutionState valueOf(String s)
        {
            return (BlockerResolutionState)Enum.valueOf(com/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState, s);
        }

        public static BlockerResolutionState[] values()
        {
            return (BlockerResolutionState[])$VALUES.clone();
        }

        static 
        {
            PRE_CONFIRMATION = new BlockerResolutionState("PRE_CONFIRMATION", 0);
            PRE_INITIATION = new BlockerResolutionState("PRE_INITIATION", 1);
            INITIATING = new BlockerResolutionState("INITIATING", 2);
            INITIATED = new BlockerResolutionState("INITIATED", 3);
            BlockerResolutionState ablockerresolutionstate[] = new BlockerResolutionState[4];
            ablockerresolutionstate[0] = PRE_CONFIRMATION;
            ablockerresolutionstate[1] = PRE_INITIATION;
            ablockerresolutionstate[2] = INITIATING;
            ablockerresolutionstate[3] = INITIATED;
            $VALUES = ablockerresolutionstate;
        }

        private BlockerResolutionState(String s, int l)
        {
            super(s, l);
        }
    }


    protected static final int MAX_NUM_OF_RETRIES_FOR_FAILURES = 3;
    private static final String TAG = com/snapchat/android/model/chat/CashFeedItem.getSimpleName();
    private final PriorityQueue mBlockerPriorityQueue = new UniquePriorityQueue();
    private boolean mCanShowSparkle;
    private final CashTransaction mCashTransaction;
    private com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener mContinueForwardListener;
    private boolean mHasSeenRain;
    private boolean mHasSparkled;
    private String mIterToken;
    private int mNumberOfFailedRetryAttempts;
    protected BlockerResolutionState mResolutionState;
    private String mSendingClientId;

    public CashFeedItem(CashTransaction cashtransaction)
    {
        super(cashtransaction.d(), ListUtils.a(cashtransaction.f()));
        mNumberOfFailedRetryAttempts = 0;
        mHasSeenRain = false;
        mHasSparkled = false;
        mCanShowSparkle = false;
        if (cashtransaction.h())
        {
            mSendingClientId = cashtransaction.b();
        }
        mCashTransaction = cashtransaction;
        if (!cashtransaction.h())
        {
            mResolutionState = BlockerResolutionState.INITIATED;
            if (ChatUtils.a(this))
            {
                if (cashtransaction.o() == com.snapchat.android.model.CashTransaction.TransactionStatus.SENDER_CANCELED && !cashtransaction.s() && !cashtransaction.u())
                {
                    a(StatefulChatFeedItem.SendReceiveStatus.FAILED_AND_NON_RECOVERABLE);
                    return;
                } else
                {
                    a(StatefulChatFeedItem.SendReceiveStatus.SENT);
                    return;
                }
            } else
            {
                a(StatefulChatFeedItem.SendReceiveStatus.RECEIVED);
                return;
            }
        } else
        {
            mResolutionState = BlockerResolutionState.PRE_CONFIRMATION;
            a(StatefulChatFeedItem.SendReceiveStatus.SENDING);
            return;
        }
    }

    static String F()
    {
        return TAG;
    }

    private void G()
    {
        if (!mBlockerPriorityQueue.isEmpty())
        {
            Blocker blocker = (Blocker)mBlockerPriorityQueue.peek();
            String s1 = TAG;
            Object aobj1[] = new Object[4];
            aobj1[0] = d();
            aobj1[1] = l();
            aobj1[2] = J();
            aobj1[3] = blocker.getClass().getSimpleName();
            Timber.b(s1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] continueBlockerResolution attempting to resolve next blocker %s", aobj1);
            blocker.a(this);
            blocker.a(mCashTransaction);
            return;
        }
        if (!ChatUtils.a(this))
        {
            break MISSING_BLOCK_LABEL_233;
        }
        static class _cls3
        {

            static final int $SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[];
            static final int $SwitchMap$com$snapchat$android$model$chat$CashFeedItem$BlockerResolutionState[];

            static 
            {
                $SwitchMap$com$snapchat$android$model$chat$CashFeedItem$BlockerResolutionState = new int[BlockerResolutionState.values().length];
                try
                {
                    $SwitchMap$com$snapchat$android$model$chat$CashFeedItem$BlockerResolutionState[BlockerResolutionState.PRE_CONFIRMATION.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$chat$CashFeedItem$BlockerResolutionState[BlockerResolutionState.PRE_INITIATION.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$chat$CashFeedItem$BlockerResolutionState[BlockerResolutionState.INITIATING.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$chat$CashFeedItem$BlockerResolutionState[BlockerResolutionState.INITIATED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                $SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus = new int[com.snapchat.android.model.CashTransaction.TransactionStatus.values().length];
                try
                {
                    $SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[com.snapchat.android.model.CashTransaction.TransactionStatus.INITIATED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[com.snapchat.android.model.CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[com.snapchat.android.model.CashTransaction.TransactionStatus.COMPLETED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[com.snapchat.android.model.CashTransaction.TransactionStatus.EXPIRED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[com.snapchat.android.model.CashTransaction.TransactionStatus.CANCELED.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[com.snapchat.android.model.CashTransaction.TransactionStatus.RECIPIENT_CANCELED.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    $SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus[com.snapchat.android.model.CashTransaction.TransactionStatus.SENDER_CANCELED.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror10)
                {
                    return;
                }
            }
        }

        _cls3..SwitchMap.com.snapchat.android.model.chat.CashFeedItem.BlockerResolutionState[mResolutionState.ordinal()];
        JVM INSTR tableswitch 1 4: default 140
    //                   1 193
    //                   2 203
    //                   3 213
    //                   4 220;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        String s = TAG;
        Object aobj[] = new Object[4];
        aobj[0] = d();
        aobj[1] = l();
        aobj[2] = J();
        aobj[3] = mResolutionState.name();
        Timber.b(s, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] RESOLUTION STATE set to %s", aobj);
_L6:
        c(true);
        return;
_L2:
        mResolutionState = BlockerResolutionState.PRE_INITIATION;
          goto _L1
_L3:
        mResolutionState = BlockerResolutionState.INITIATING;
          goto _L1
_L4:
        mResolutionState = BlockerResolutionState.INITIATED;
_L5:
        a(SnapchatApplication.e(), StatefulChatFeedItem.SendReceiveStatus.SENT);
          goto _L1
        mCashTransaction.a(com.snapchat.android.model.CashTransaction.TransactionStatus.COMPLETED);
        a(SnapchatApplication.e(), StatefulChatFeedItem.SendReceiveStatus.RECEIVED);
          goto _L6
    }

    private int b(final boolean saved)
    {
        String s = TAG;
        Object aobj[] = new Object[4];
        String s1;
        if (saved)
        {
            s1 = "SAVING";
        } else
        {
            s1 = "UNSAVING";
        }
        aobj[0] = s1;
        aobj[1] = d();
        aobj[2] = l();
        aobj[3] = J();
        Timber.b(s, "CASH-LOG: %s cash id[%s] sender[%s] recipient[%s]", aobj);
        if (ChatUtils.a(this))
        {
            final int originalVersion = mCashTransaction.t();
            if (!j() || mCashTransaction.s() == saved)
            {
                return originalVersion;
            } else
            {
                final int modifiedVersion = originalVersion + 1;
                mCashTransaction.e(saved);
                mCashTransaction.b(modifiedVersion);
                a(Boolean.valueOf(saved), Integer.valueOf(modifiedVersion), new com.snapchat.android.api2.cash.UpdateTransactionTask.UpdateTransactionTaskCallback() {

                    final CashFeedItem this$0;
                    final int val$modifiedVersion;
                    final int val$originalVersion;
                    final boolean val$saved;

                    public void a()
                    {
                        String s2 = CashFeedItem.F();
                        Object aobj1[] = new Object[4];
                        String s3;
                        SnapchatApplication snapchatapplication;
                        CashFeedItem acashfeeditem[];
                        if (saved)
                        {
                            s3 = "SAVING";
                        } else
                        {
                            s3 = "UNSAVING";
                        }
                        aobj1[0] = s3;
                        aobj1[1] = d();
                        aobj1[2] = l();
                        aobj1[3] = J();
                        Timber.b(s2, "CASH-LOG: SUCCEEDED %s cash id[%s] sender[%s] recipient[%s]", aobj1);
                        snapchatapplication = SnapchatApplication.e();
                        acashfeeditem = new CashFeedItem[1];
                        acashfeeditem[0] = CashFeedItem.this;
                        CashFeedItemTable.a(snapchatapplication, Arrays.asList(acashfeeditem));
                    }

                    public void a(int l)
                    {
                        String s2 = CashFeedItem.F();
                        Object aobj1[] = new Object[5];
                        String s3;
                        if (saved)
                        {
                            s3 = "SAVING";
                        } else
                        {
                            s3 = "UNSAVING";
                        }
                        aobj1[0] = s3;
                        aobj1[1] = d();
                        aobj1[2] = CashFeedItem.this.l();
                        aobj1[3] = J();
                        aobj1[4] = Integer.valueOf(l);
                        Timber.b(s2, "CASH-LOG: FAILED %s cash id[%s] sender[%s] recipient[%s] statusCode[%d]", aobj1);
                        if (CashFeedItem.b(CashFeedItem.this).t() == modifiedVersion)
                        {
                            CashTransaction cashtransaction = CashFeedItem.b(CashFeedItem.this);
                            boolean flag;
                            SnapchatApplication snapchatapplication;
                            CashFeedItem acashfeeditem[];
                            if (!saved)
                            {
                                flag = true;
                            } else
                            {
                                flag = false;
                            }
                            cashtransaction.e(flag);
                            CashFeedItem.b(CashFeedItem.this).b(originalVersion);
                            snapchatapplication = SnapchatApplication.e();
                            acashfeeditem = new CashFeedItem[1];
                            acashfeeditem[0] = CashFeedItem.this;
                            CashFeedItemTable.a(snapchatapplication, Arrays.asList(acashfeeditem));
                            BusProvider.a().a(new ChatUpdatedEvent(I(), d()));
                        }
                    }

            
            {
                this$0 = CashFeedItem.this;
                saved = flag;
                modifiedVersion = l;
                originalVersion = i1;
                super();
            }
                }).g();
                return modifiedVersion;
            }
        }
        final int originalVersion = mCashTransaction.v();
        if (!j() || mCashTransaction.u() == saved)
        {
            return originalVersion;
        } else
        {
            final int modifiedVersion = originalVersion + 1;
            mCashTransaction.f(saved);
            mCashTransaction.c(modifiedVersion);
            a(Boolean.valueOf(saved), Integer.valueOf(modifiedVersion), new com.snapchat.android.api2.cash.UpdateTransactionTask.UpdateTransactionTaskCallback() {

                final CashFeedItem this$0;
                final int val$modifiedVersion;
                final int val$originalVersion;
                final boolean val$saved;

                public void a()
                {
                    String s2 = CashFeedItem.F();
                    Object aobj1[] = new Object[4];
                    String s3;
                    SnapchatApplication snapchatapplication;
                    CashFeedItem acashfeeditem[];
                    if (saved)
                    {
                        s3 = "SAVING";
                    } else
                    {
                        s3 = "UNSAVING";
                    }
                    aobj1[0] = s3;
                    aobj1[1] = d();
                    aobj1[2] = l();
                    aobj1[3] = J();
                    Timber.b(s2, "CASH-LOG: SUCCEEDED %s cash id[%s] sender[%s] recipient[%s]", aobj1);
                    snapchatapplication = SnapchatApplication.e();
                    acashfeeditem = new CashFeedItem[1];
                    acashfeeditem[0] = CashFeedItem.this;
                    CashFeedItemTable.a(snapchatapplication, Arrays.asList(acashfeeditem));
                }

                public void a(int l)
                {
                    String s2 = CashFeedItem.F();
                    Object aobj1[] = new Object[5];
                    String s3;
                    if (saved)
                    {
                        s3 = "SAVING";
                    } else
                    {
                        s3 = "UNSAVING";
                    }
                    aobj1[0] = s3;
                    aobj1[1] = d();
                    aobj1[2] = CashFeedItem.this.l();
                    aobj1[3] = J();
                    aobj1[4] = Integer.valueOf(l);
                    Timber.b(s2, "CASH-LOG: FAILED %s cash id[%s] sender[%s] recipient[%s] statusCode[%d]", aobj1);
                    if (CashFeedItem.b(CashFeedItem.this).v() == modifiedVersion)
                    {
                        CashTransaction cashtransaction = CashFeedItem.b(CashFeedItem.this);
                        boolean flag;
                        SnapchatApplication snapchatapplication;
                        CashFeedItem acashfeeditem[];
                        if (!saved)
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        cashtransaction.f(flag);
                        CashFeedItem.b(CashFeedItem.this).c(originalVersion);
                        snapchatapplication = SnapchatApplication.e();
                        acashfeeditem = new CashFeedItem[1];
                        acashfeeditem[0] = CashFeedItem.this;
                        CashFeedItemTable.a(snapchatapplication, Arrays.asList(acashfeeditem));
                        BusProvider.a().a(new ChatUpdatedEvent(I(), d()));
                    }
                }

            
            {
                this$0 = CashFeedItem.this;
                saved = flag;
                modifiedVersion = l;
                originalVersion = i1;
                super();
            }
            }).g();
            return modifiedVersion;
        }
    }

    static CashTransaction b(CashFeedItem cashfeeditem)
    {
        return cashfeeditem.mCashTransaction;
    }

    private void c(boolean flag)
    {
        com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener continueforwardlistener;
label0:
        {
            if (mContinueForwardListener != null)
            {
                continueforwardlistener = mContinueForwardListener;
                mContinueForwardListener = null;
                if (!flag)
                {
                    break label0;
                }
                continueforwardlistener.a();
            }
            return;
        }
        continueforwardlistener.b();
    }

    public String A()
    {
        return mIterToken;
    }

    public int B()
    {
        return b(true);
    }

    public int C()
    {
        return b(false);
    }

    public void D()
    {
        mBlockerPriorityQueue.clear();
    }

    public void E()
    {
        mNumberOfFailedRetryAttempts = 0;
        mBlockerPriorityQueue.clear();
        mResolutionState = BlockerResolutionState.INITIATING;
        a(StatefulChatFeedItem.SendReceiveStatus.SENDING);
    }

    public int a(ChatConversation chatconversation)
    {
        ChatFeedItem.FeedIconPriority feediconpriority = ChatFeedItem.FeedIconPriority.MOST_RECENT;
        if (!W() || !Y()) goto _L2; else goto _L1
_L1:
        feediconpriority = ChatFeedItem.FeedIconPriority.FAILED;
_L4:
        return feediconpriority.ordinal();
_L2:
        if (V())
        {
            feediconpriority = ChatFeedItem.FeedIconPriority.SENDING;
        } else
        if (!o())
        {
            feediconpriority = ChatFeedItem.FeedIconPriority.NEW;
        } else
        if (System.currentTimeMillis() - ae() < 1000L)
        {
            feediconpriority = ChatFeedItem.FeedIconPriority.RECENTLY_SENT;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int a(ChatFeedItem chatfeeditem)
    {
        return LongUtils.a(ae(), chatfeeditem.ae());
    }

    protected UpdateTransactionTask a(Boolean boolean1, Integer integer, com.snapchat.android.api2.cash.UpdateTransactionTask.UpdateTransactionTaskCallback updatetransactiontaskcallback)
    {
        return new UpdateTransactionTask(d(), I(), boolean1, integer, updatetransactiontaskcallback);
    }

    public ChatFeedItem.FeedIconResource a(View view, ChatConversation chatconversation)
    {
        int l = 0x7f02002e;
        if (!t()) goto _L2; else goto _L1
_L1:
        l = 0x7f020039;
_L4:
        return new ChatFeedItem.FeedIconResource(l);
_L2:
        if (W())
        {
            l = 0x7f020113;
        } else
        if (at())
        {
            if (ChatUtils.a(this) && !z() && !y())
            {
                l = 0x7f02003b;
            }
        } else
        if (y() && !o())
        {
            l = 0x7f020030;
        } else
        if (ChatUtils.a(this))
        {
            if (z())
            {
                l = 0x7f020030;
            } else
            {
                l = 0x7f02003f;
            }
        } else
        if (!z() && !o())
        {
            l = 0x7f02002f;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String a()
    {
        if (ChatUtils.a(this))
        {
            if (W() && Y())
            {
                return LocalizationUtils.a(0x7f0c00ee, new Object[0]);
            }
            if (t())
            {
                return LocalizationUtils.a(0x7f0c00ec, new Object[0]);
            }
            if ((z() || y()) && !o())
            {
                return LocalizationUtils.a(0x7f0c020a, new Object[0]);
            } else
            {
                return LocalizationUtils.a(0x7f0c01a3, new Object[0]);
            }
        }
        if (y() && !o())
        {
            return LocalizationUtils.a(0x7f0c020a, new Object[0]);
        } else
        {
            return super.a();
        }
    }

    public void a(Context context, StatefulChatFeedItem.SendReceiveStatus sendreceivestatus)
    {
        a(sendreceivestatus);
        CashFeedItemTable.a(context, ListUtils.a(this));
    }

    public void a(com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener continueforwardlistener)
    {
        String s = TAG;
        Object aobj[] = new Object[3];
        aobj[0] = d();
        aobj[1] = l();
        aobj[2] = J();
        Timber.b(s, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] STARTING blocker resolution", aobj);
        mContinueForwardListener = continueforwardlistener;
        G();
    }

    public void a(Blocker blocker)
    {
        String s = TAG;
        Object aobj[] = new Object[4];
        aobj[0] = d();
        aobj[1] = l();
        aobj[2] = J();
        aobj[3] = blocker.getClass().getSimpleName();
        Timber.b(s, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] onDismiss %s", aobj);
        if (ChatUtils.a(this))
        {
            a(((Context) (SnapchatApplication.e())), StatefulChatFeedItem.SendReceiveStatus.FAILED);
        } else
        {
            a(StatefulChatFeedItem.SendReceiveStatus.RECEIVED);
        }
        c(false);
        mBlockerPriorityQueue.clear();
    }

    public void a(Blocker blocker, List list, boolean flag)
    {
        String s = TAG;
        Object aobj[] = new Object[4];
        aobj[0] = d();
        aobj[1] = l();
        aobj[2] = J();
        aobj[3] = blocker.getClass().getSimpleName();
        Timber.b(s, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] onResolve REMOVING blocker %s", aobj);
        mBlockerPriorityQueue.remove(blocker);
        a(list, flag);
    }

    public void a(String s)
    {
        mIterToken = s;
    }

    public void a(Collection collection)
    {
        mBlockerPriorityQueue.addAll(collection);
    }

    protected void a(List list, boolean flag)
    {
        if (list != null)
        {
            String s2 = TAG;
            Object aobj2[] = new Object[4];
            aobj2[0] = d();
            aobj2[1] = l();
            aobj2[2] = J();
            aobj2[3] = list;
            Timber.b(s2, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] ADDING NEW blockers %s", aobj2);
            mBlockerPriorityQueue.addAll(list);
        }
        if (mBlockerPriorityQueue.isEmpty() || flag)
        {
            String s = TAG;
            Object aobj[] = new Object[4];
            aobj[0] = d();
            aobj[1] = l();
            aobj[2] = J();
            aobj[3] = String.valueOf(flag);
            Timber.b(s, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] CONTINUING blocker resolution continueResolution[%s]", aobj);
            G();
            return;
        }
        String s1 = TAG;
        Object aobj1[] = new Object[3];
        aobj1[0] = d();
        aobj1[1] = l();
        aobj1[2] = J();
        Timber.b(s1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] FAILING because continueResolution is false and blockers remain", aobj1);
        if (ChatUtils.a(this))
        {
            a(((Context) (SnapchatApplication.e())), StatefulChatFeedItem.SendReceiveStatus.FAILED);
        } else
        {
            a(StatefulChatFeedItem.SendReceiveStatus.RECEIVED);
        }
        c(false);
    }

    public boolean a(CashFeedItem cashfeeditem)
    {
        if (K().equals(cashfeeditem.K()) && TextUtils.equals(A(), cashfeeditem.A()))
        {
            CashTransaction cashtransaction = cashfeeditem.h();
            if (mCashTransaction.h() == cashtransaction.h() && mCashTransaction.o().equals(cashtransaction.o()) && mCashTransaction.v() == cashtransaction.v() && mCashTransaction.u() == cashtransaction.u() && mCashTransaction.r() == cashtransaction.r() && mCashTransaction.t() == cashtransaction.t() && mCashTransaction.s() == cashtransaction.s() && mCashTransaction.q() == cashtransaction.q() && mCashTransaction.n() == cashtransaction.n() && mCashTransaction.m() == cashtransaction.m() && mCashTransaction.i() == cashtransaction.i())
            {
                return false;
            }
        }
        return true;
    }

    public boolean a(boolean flag)
    {
        if (ChatUtils.a(this))
        {
            mCashTransaction.c(flag);
            return true;
        }
        if (!flag || mCashTransaction.o() != com.snapchat.android.model.CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT)
        {
            mCashTransaction.d(flag);
            return true;
        } else
        {
            return false;
        }
    }

    public long ae()
    {
        return mCashTransaction.n();
    }

    public String ap()
    {
        String s = mCashTransaction.l();
        if (!TextUtils.isEmpty(s) && CashtagParser.c(s.trim()) && s.substring(1, -1 + s.length()).equals(mCashTransaction.j()))
        {
            s = null;
        }
        return s;
    }

    public boolean aq()
    {
        return false;
    }

    public boolean ar()
    {
        return false;
    }

    public boolean at()
    {
        com.snapchat.android.model.CashTransaction.TransactionStatus transactionstatus = mCashTransaction.o();
        if (transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT)
        {
            return false;
        }
        if (transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.EXPIRED || transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.CANCELED || transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.RECIPIENT_CANCELED || transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.SENDER_CANCELED)
        {
            return o();
        } else
        {
            return mCashTransaction.r();
        }
    }

    public String b()
    {
        return null;
    }

    public void b(Blocker blocker)
    {
        String s = TAG;
        Object aobj[] = new Object[4];
        aobj[0] = d();
        aobj[1] = l();
        aobj[2] = J();
        aobj[3] = blocker.getClass().getSimpleName();
        Timber.b(s, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] onHardFailure %s", aobj);
        a(SnapchatApplication.e(), StatefulChatFeedItem.SendReceiveStatus.FAILED_AND_NON_RECOVERABLE);
        c(false);
        mBlockerPriorityQueue.clear();
    }

    public void b(Blocker blocker, List list, boolean flag)
    {
        String s = TAG;
        Object aobj[] = new Object[4];
        aobj[0] = d();
        aobj[1] = l();
        aobj[2] = J();
        aobj[3] = blocker.getClass().getSimpleName();
        Timber.b(s, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] onFailure %s", aobj);
        if (flag)
        {
            if (mNumberOfFailedRetryAttempts >= 3)
            {
                mNumberOfFailedRetryAttempts = 0;
                flag = false;
            } else
            {
                mNumberOfFailedRetryAttempts = 1 + mNumberOfFailedRetryAttempts;
            }
        }
        a(list, flag);
    }

    public long c(ChatConversation chatconversation)
    {
        return mCashTransaction.n();
    }

    public boolean c()
    {
        return W();
    }

    public int compareTo(Object obj)
    {
        return a((ChatFeedItem)obj);
    }

    public String d()
    {
        return mCashTransaction.b();
    }

    public String e()
    {
        return mSendingClientId;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof CashFeedItem)
        {
            CashFeedItem cashfeeditem = (CashFeedItem)obj;
            String s = e();
            if (s != null && TextUtils.equals(s, cashfeeditem.e()))
            {
                return true;
            } else
            {
                return TextUtils.equals(d(), cashfeeditem.d());
            }
        } else
        {
            return false;
        }
    }

    public int f()
    {
        return mCashTransaction.g();
    }

    public String g()
    {
        return mCashTransaction.x();
    }

    public CashTransaction h()
    {
        return mCashTransaction;
    }

    public int hashCode()
    {
        return d().hashCode();
    }

    public boolean i()
    {
        return !mHasSparkled && mCanShowSparkle;
    }

    public boolean j()
    {
        return u() || v() || L();
    }

    public boolean k()
    {
        return mCashTransaction.s() || mCashTransaction.u();
    }

    public boolean n()
    {
        if (ChatUtils.a(this))
        {
            return mCashTransaction.s();
        } else
        {
            return mCashTransaction.u();
        }
    }

    public boolean o()
    {
        if (ChatUtils.a(this))
        {
            return mCashTransaction.q();
        } else
        {
            return mCashTransaction.r();
        }
    }

    public void p()
    {
        if (ChatUtils.a(this))
        {
            return;
        } else
        {
            mCanShowSparkle = true;
            return;
        }
    }

    public void q()
    {
        mHasSparkled = true;
    }

    public String r()
    {
        if (!ChatUtils.a(this)) goto _L2; else goto _L1
_L1:
        if (t())
        {
            Object aobj10[] = new Object[1];
            aobj10[0] = mCashTransaction.j();
            return LocalizationUtils.a(0x7f0c005d, aobj10);
        }
        if (W())
        {
            Object aobj9[] = new Object[1];
            aobj9[0] = mCashTransaction.j();
            return LocalizationUtils.a(0x7f0c0063, aobj9);
        }
        if (V())
        {
            Object aobj8[] = new Object[1];
            aobj8[0] = mCashTransaction.j();
            return LocalizationUtils.a(0x7f0c01a0, aobj8);
        }
        if (!u()) goto _L4; else goto _L3
_L3:
        _cls3..SwitchMap.com.snapchat.android.model.CashTransaction.TransactionStatus[mCashTransaction.o().ordinal()];
        JVM INSTR tableswitch 1 7: default 168
    //                   1 170
    //                   2 170
    //                   3 170
    //                   4 196
    //                   5 196
    //                   6 196
    //                   7 196;
           goto _L4 _L5 _L5 _L5 _L6 _L6 _L6 _L6
_L4:
        return null;
_L5:
        Object aobj7[] = new Object[1];
        aobj7[0] = mCashTransaction.j();
        return LocalizationUtils.a(0x7f0c01a5, aobj7);
_L6:
        Object aobj6[] = new Object[1];
        aobj6[0] = mCashTransaction.j();
        return LocalizationUtils.a(0x7f0c01a4, aobj6);
_L2:
        if (!CashUtils.a(UserPrefs.Z()))
        {
            break; /* Loop/switch isn't completed */
        }
        switch (_cls3..SwitchMap.com.snapchat.android.model.CashTransaction.TransactionStatus[mCashTransaction.o().ordinal()])
        {
        case 1: // '\001'
        case 2: // '\002'
            if (K() == StatefulChatFeedItem.SendReceiveStatus.RECEIVING)
            {
                Object aobj5[] = new Object[1];
                aobj5[0] = mCashTransaction.j();
                return LocalizationUtils.a(0x7f0c0060, aobj5);
            } else
            {
                Object aobj4[] = new Object[1];
                aobj4[0] = mCashTransaction.j();
                return LocalizationUtils.a(0x7f0c0062, aobj4);
            }

        case 3: // '\003'
            Object aobj3[] = new Object[1];
            aobj3[0] = mCashTransaction.j();
            return LocalizationUtils.a(0x7f0c005f, aobj3);

        case 4: // '\004'
            Object aobj2[] = new Object[1];
            aobj2[0] = mCashTransaction.j();
            return LocalizationUtils.a(0x7f0c005e, aobj2);

        case 5: // '\005'
        case 6: // '\006'
        case 7: // '\007'
            Object aobj1[] = new Object[1];
            aobj1[0] = mCashTransaction.j();
            return LocalizationUtils.a(0x7f0c0177, aobj1);
        }
        if (true) goto _L4; else goto _L7
_L7:
        Object aobj[] = new Object[1];
        aobj[0] = mCashTransaction.j();
        return LocalizationUtils.a(0x7f0c005c, aobj);
    }

    public String toString()
    {
        String s = mCashTransaction.l();
        StringBuilder stringbuilder = (new StringBuilder()).append("CashFeedItem{mId=").append(mCashTransaction.b()).append(", mSenderUsername=").append(mCashTransaction.d()).append(", mRecipientUsername=").append(mCashTransaction.f()).append(", mMessage=");
        if (!TextUtils.isEmpty(s))
        {
            s = s.substring(0, Math.min(3, s.length()));
        }
        return stringbuilder.append(s).append(", mAmount=").append(mCashTransaction.j()).append(", mSendReceiveStatus=").append(K()).append(", mTransactionStatus=").append(mCashTransaction.o()).append(", mResolutionState=").append(mResolutionState).append('}').toString();
    }

    public String w()
    {
        if (mCashTransaction.o() == com.snapchat.android.model.CashTransaction.TransactionStatus.CANCELED)
        {
            return LocalizationUtils.a(0x7f0c0061, new Object[0]);
        } else
        {
            return null;
        }
    }

    public int x()
    {
        int l = 0x7f0200b0;
        if (!ChatUtils.a(this)) goto _L2; else goto _L1
_L1:
        if (!W()) goto _L4; else goto _L3
_L3:
        l = 0x7f020039;
_L8:
        return l;
_L4:
        if (!u()) goto _L6; else goto _L5
_L5:
        _cls3..SwitchMap.com.snapchat.android.model.CashTransaction.TransactionStatus[mCashTransaction.o().ordinal()];
        JVM INSTR tableswitch 1 7: default 88
    //                   1 90
    //                   2 90
    //                   3 90
    //                   4 22
    //                   5 94
    //                   6 94
    //                   7 94;
           goto _L6 _L7 _L7 _L7 _L8 _L9 _L9 _L9
_L6:
        return 0;
_L7:
        return 0x7f02003f;
_L9:
        return 0x7f0200b1;
_L2:
        if (!CashUtils.a(UserPrefs.Z())) goto _L8; else goto _L10
_L10:
        int i1;
        int j1;
        i1 = _cls3..SwitchMap.com.snapchat.android.model.CashTransaction.TransactionStatus[mCashTransaction.o().ordinal()];
        j1 = 0;
        i1;
        JVM INSTR tableswitch 1 7: default 168
    //                   1 170
    //                   2 170
    //                   3 197
    //                   4 204
    //                   5 209
    //                   6 209
    //                   7 209;
           goto _L11 _L12 _L12 _L13 _L14 _L15 _L15 _L15
_L11:
        return j1;
_L12:
        StatefulChatFeedItem.SendReceiveStatus sendreceivestatus = K();
        StatefulChatFeedItem.SendReceiveStatus sendreceivestatus1 = StatefulChatFeedItem.SendReceiveStatus.RECEIVING;
        j1 = 0;
        if (sendreceivestatus != sendreceivestatus1)
        {
            j1 = 0x7f0200af;
        }
        continue; /* Loop/switch isn't completed */
_L13:
        j1 = 0x7f0200af;
        continue; /* Loop/switch isn't completed */
_L14:
        j1 = l;
        continue; /* Loop/switch isn't completed */
_L15:
        j1 = 0x7f0200b1;
        if (true) goto _L11; else goto _L16
_L16:
    }

    public boolean y()
    {
        com.snapchat.android.model.CashTransaction.TransactionStatus transactionstatus = mCashTransaction.o();
        return transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.CANCELED || transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.RECIPIENT_CANCELED || transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.SENDER_CANCELED;
    }

    public boolean z()
    {
        return mCashTransaction.o() == com.snapchat.android.model.CashTransaction.TransactionStatus.EXPIRED;
    }

}
