// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import android.content.Context;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.ICashProvider;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.snapchat.LocalSQAcceptTermsBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQAccessTokenBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQCardFormBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQConflictBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQInitiatePaymentBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQInitiationConfirmBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQRetrieveReceivingCashPaymentBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQRetrieveSendingCashPaymentBlocker;
import com.snapchat.android.api2.cash.blockers.square.SQUpdateReceivedCashPaymentBlocker;
import com.snapchat.android.api2.cash.square.data.CashCustomerStatus;
import com.snapchat.android.fragments.cash.TransactionHistoryFragment;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.util.ListUtils;
import com.snapchat.android.util.StringUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.snapchat.android.util.network.EndpointManager;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            DeleteCashPaymentTask, RetrieveCashCustomerStatusTask, SquareRequestTask, SquareCashCustomerStatusCallback, 
//            SquareCustomerProfile

public class SquareProvider
    implements ICashProvider
{

    public static final String CLIENT_IDENTITY = "chartreuse";
    public static final String CLIENT_PARAM = "client";
    public static final String NAME = "SQUARE";
    private static final String TAG = "SquareProvider";
    protected CashErrorReporter mCashErrorReporter;

    public SquareProvider()
    {
        SnapchatApplication.e().a(this);
    }

    public static com.snapchat.android.model.CashTransaction.TransactionStatus a(com.snapchat.android.api2.cash.square.data.CashPayment.State state, com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason cancellationreason)
    {
        if (state == com.snapchat.android.api2.cash.square.data.CashPayment.State.WAITING_ON_RECIPIENT)
        {
            return com.snapchat.android.model.CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT;
        }
        if (state == com.snapchat.android.api2.cash.square.data.CashPayment.State.CANCELED)
        {
            if (cancellationreason == com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason.EXPIRED_WAITING_ON_RECIPIENT)
            {
                return com.snapchat.android.model.CashTransaction.TransactionStatus.EXPIRED;
            }
            if (cancellationreason == com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason.RECIPIENT_CANCELED)
            {
                return com.snapchat.android.model.CashTransaction.TransactionStatus.RECIPIENT_CANCELED;
            }
            if (cancellationreason == com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason.SQUARE_CANCELED)
            {
                return com.snapchat.android.model.CashTransaction.TransactionStatus.CANCELED;
            } else
            {
                return com.snapchat.android.model.CashTransaction.TransactionStatus.SENDER_CANCELED;
            }
        }
        if (state == com.snapchat.android.api2.cash.square.data.CashPayment.State.COMPLETED)
        {
            return com.snapchat.android.model.CashTransaction.TransactionStatus.COMPLETED;
        } else
        {
            return com.snapchat.android.model.CashTransaction.TransactionStatus.INITIATED;
        }
    }

    public static List a(Blocker blocker, int k)
    {
        k;
        JVM INSTR lookupswitch 2: default 28
    //                   401: 30
    //                   409: 51;
           goto _L1 _L2 _L3
_L1:
        return null;
_L2:
        Blocker ablocker1[] = new Blocker[1];
        ablocker1[0] = new SQAccessTokenBlocker(true);
        return Arrays.asList(ablocker1);
_L3:
        if (blocker instanceof SQInitiatePaymentBlocker)
        {
            Blocker ablocker[] = new Blocker[1];
            ablocker[0] = new SQConflictBlocker();
            return Arrays.asList(ablocker);
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    protected DeleteCashPaymentTask a(CashTransaction cashtransaction)
    {
        return new DeleteCashPaymentTask(cashtransaction);
    }

    public String a()
    {
        return "SQUARE";
    }

    public void a(Context context, final String title)
    {
        Blocker blocker = i();
        blocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener() {

            final SquareProvider this$0;
            final String val$title;

            public void a(Blocker blocker1)
            {
            }

            public void a(Blocker blocker1, List list, boolean flag)
            {
                TransactionHistoryFragment transactionhistoryfragment = new TransactionHistoryFragment(title);
                String as[] = new String[2];
                as[0] = EndpointManager.a().l();
                as[1] = "cash/history";
                transactionhistoryfragment.a(StringUtils.a(Arrays.asList(as), "/"));
                BusProvider.a().a(new StartFragmentEvent(transactionhistoryfragment));
            }

            public void b(Blocker blocker1)
            {
            }

            public void b(Blocker blocker1, List list, boolean flag)
            {
                BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c0104));
            }

            
            {
                this$0 = SquareProvider.this;
                title = s;
                super();
            }
        });
        blocker.a(null);
    }

    public void a(CashTransaction cashtransaction, com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason cancellationreason)
    {
        if (cancellationreason != null)
        {
            static class _cls5
            {

                static final int $SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason[];

                static 
                {
                    $SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason = new int[com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason.values().length];
                    try
                    {
                        $SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason[com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason.DECLINED.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror) { }
                    try
                    {
                        $SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason[com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason.LIMIT_EXCEEDED.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason[com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason.SQUARE_CANCELED.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        $SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason[com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason.OTHER.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror3)
                    {
                        return;
                    }
                }
            }

            switch (_cls5..SwitchMap.com.snapchat.android.api2.cash.square.data.CashPayment.CancellationReason[cancellationreason.ordinal()])
            {
            default:
                AnalyticsEvents.q("OTHER");
                mCashErrorReporter.a(cashtransaction, 0x7f0c014f, new Object[0]);
                return;

            case 1: // '\001'
                AnalyticsEvents.q("CARD_DECLINED");
                mCashErrorReporter.a(cashtransaction, 0x7f0c014d, new Object[0]);
                return;

            case 2: // '\002'
                AnalyticsEvents.q("LIMIT_EXCEEDED");
                mCashErrorReporter.a(cashtransaction, 0x7f0c014b, 0x7f0c0150);
                return;

            case 3: // '\003'
                AnalyticsEvents.q("SQUARE_CANCELED");
                break;
            }
            mCashErrorReporter.a(cashtransaction, 0x7f0c0153, new Object[0]);
            return;
        } else
        {
            AnalyticsEvents.q("UNKNOWN");
            mCashErrorReporter.a(cashtransaction, 0x7f0c014f, new Object[0]);
            return;
        }
    }

    public void a(CashFeedItem cashfeeditem)
    {
        if (!UserPrefs.g())
        {
            throw new RuntimeException("Must have verified phone number before calling SquareProvider#getAccessToken!");
        } else
        {
            cashfeeditem.D();
            cashfeeditem.a(ListUtils.a(new SQAccessTokenBlocker()));
            cashfeeditem.a(b(cashfeeditem.h()));
            return;
        }
    }

    protected com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener b(final CashTransaction cashTransaction)
    {
        return new com.snapchat.android.api2.cash.BlockerManager.ContinueForwardListener() {

            final SquareProvider this$0;
            final CashTransaction val$cashTransaction;

            public void a()
            {
                SquareProvider.this.a(cashTransaction).g();
            }

            public void b()
            {
            }

            
            {
                this$0 = SquareProvider.this;
                cashTransaction = cashtransaction;
                super();
            }
        };
    }

    public void b()
    {
        UserPrefs.U();
        Blocker blocker = i();
        blocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener() {

            final SquareProvider this$0;

            public void a(Blocker blocker1)
            {
            }

            public void a(Blocker blocker1, List list, boolean flag)
            {
                if (list == null || list.isEmpty())
                {
                    j().g();
                }
            }

            public void b(Blocker blocker1)
            {
            }

            public void b(Blocker blocker1, List list, boolean flag)
            {
            }

            
            {
                this$0 = SquareProvider.this;
                super();
            }
        });
        blocker.a(null);
    }

    public Collection c()
    {
        Blocker ablocker[] = new Blocker[2];
        ablocker[0] = new LocalSQAcceptTermsBlocker();
        ablocker[1] = new SQCardFormBlocker();
        return Arrays.asList(ablocker);
    }

    public Collection d()
    {
        ArrayList arraylist = new ArrayList();
        if (UserPrefs.af())
        {
            arraylist.add(new SQInitiationConfirmBlocker());
        }
        return arraylist;
    }

    public Collection e()
    {
        Blocker ablocker[] = new Blocker[1];
        ablocker[0] = new SQInitiatePaymentBlocker();
        return Arrays.asList(ablocker);
    }

    public Collection f()
    {
        Blocker ablocker[] = new Blocker[2];
        ablocker[0] = new SQAccessTokenBlocker();
        ablocker[1] = new SQRetrieveSendingCashPaymentBlocker();
        return Arrays.asList(ablocker);
    }

    public Collection g()
    {
        Blocker ablocker[] = new Blocker[3];
        ablocker[0] = new LocalSQAcceptTermsBlocker();
        ablocker[1] = new SQAccessTokenBlocker();
        ablocker[2] = new SQRetrieveReceivingCashPaymentBlocker();
        return Arrays.asList(ablocker);
    }

    public Collection h()
    {
        Blocker ablocker[] = new Blocker[1];
        ablocker[0] = new SQUpdateReceivedCashPaymentBlocker();
        return Arrays.asList(ablocker);
    }

    protected Blocker i()
    {
        return new SQAccessTokenBlocker();
    }

    protected SquareRequestTask j()
    {
        return new RetrieveCashCustomerStatusTask(new SquareCashCustomerStatusCallback() {

            final SquareProvider this$0;

            public void a(int k)
            {
                if (k == 404)
                {
                    UserPrefs.S();
                }
            }

            public void a(CashCustomerStatus cashcustomerstatus)
            {
                UserPrefs.a(new SquareCustomerProfile(cashcustomerstatus));
            }

            
            {
                this$0 = SquareProvider.this;
                super();
            }
        });
    }
}
