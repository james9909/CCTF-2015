// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import android.os.Bundle;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.blockers.CardInputError;
import com.snapchat.android.api2.cash.blockers.ValidatedCardInputCallback;
import com.snapchat.android.api2.cash.square.LinkCardTask;
import com.snapchat.android.api2.cash.square.SquareBlockerResponsePayload;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CardStatus;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.cash.CashCardManager;
import com.snapchat.android.fragments.cash.CardLinkFragment;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQAccessTokenBlocker

public class SQCardFormBlocker extends Blocker
    implements com.snapchat.android.fragments.cash.CardLinkFragment.CardDetailsListener
{

    private static final String TAG = "SQCardFormBlocker";
    private CardStatus mCardStatus;
    protected CashCardManager mCashCardManager;
    private boolean mRetriedFrom401;
    protected SquareProvider mSquareProvider;
    private CashTransaction mTransactionContext;
    private boolean mUseDefaultGreen;

    public SQCardFormBlocker()
    {
        mCardStatus = CardStatus.NOT_LINKED;
        mUseDefaultGreen = false;
        SnapchatApplication.e().a(this);
    }

    public SQCardFormBlocker(boolean flag)
    {
        this();
        mUseDefaultGreen = flag;
    }

    private Blocker a(boolean flag)
    {
        return new SQAccessTokenBlocker(flag);
    }

    static CardInputError a(SQCardFormBlocker sqcardformblocker, ErrorType errortype)
    {
        return sqcardformblocker.a(errortype);
    }

    private CardInputError a(ErrorType errortype)
    {
        if (errortype == null) goto _L2; else goto _L1
_L1:
        static class _cls2
        {

            static final int $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[];

            static 
            {
                $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType = new int[ErrorType.values().length];
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.CARD_TYPE_UNSUPPORTED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.INVALID_CARD_NUMBER.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.INVALID_EXPIRATION.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.INVALID_SECURITY_CODE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.UNSUPPORTED_REGION.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.INVALID_POSTAL_CODE.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.TOO_MANY_ATTEMPTS.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.BLOCKED_CARD.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType[ErrorType.NETWORK_FAILURE.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror8)
                {
                    return;
                }
            }
        }

        _cls2..SwitchMap.com.snapchat.android.api2.cash.square.data.ErrorType[errortype.ordinal()];
        JVM INSTR tableswitch 1 9: default 64
    //                   1 68
    //                   2 72
    //                   3 76
    //                   4 80
    //                   5 84
    //                   6 88
    //                   7 92
    //                   8 96
    //                   9 100;
           goto _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L2:
        return CardInputError.UNKNOWN;
_L3:
        return CardInputError.CARD_TYPE_UNSUPPORTED;
_L4:
        return CardInputError.INVALID_CARD_NUMBER;
_L5:
        return CardInputError.INVALID_EXPIRATION;
_L6:
        return CardInputError.INVALID_SECURITY_CODE;
_L7:
        return CardInputError.UNSUPPORTED_REGION;
_L8:
        return CardInputError.INVALID_POSTAL_CODE;
_L9:
        return CardInputError.TOO_MANY_ATTEMPTS;
_L10:
        return CardInputError.BLOCKED_CARD;
_L11:
        return CardInputError.NETWORK_FAILURE;
    }

    static CashTransaction a(SQCardFormBlocker sqcardformblocker)
    {
        return sqcardformblocker.mTransactionContext;
    }

    static CashTransaction a(SQCardFormBlocker sqcardformblocker, CashTransaction cashtransaction)
    {
        sqcardformblocker.mTransactionContext = cashtransaction;
        return cashtransaction;
    }

    static void a(SQCardFormBlocker sqcardformblocker, String s, String s1, String s2, String s3, ValidatedCardInputCallback validatedcardinputcallback, boolean flag)
    {
        sqcardformblocker.a(s, s1, s2, s3, validatedcardinputcallback, flag);
    }

    static void a(SQCardFormBlocker sqcardformblocker, List list, boolean flag)
    {
        sqcardformblocker.a(list, flag);
    }

    private void a(final String pan, final String expiry, final String cvv, final String zip, final ValidatedCardInputCallback callback, boolean flag)
    {
        Timber.b("SQCardFormBlocker", "CASH-LOG: SQCardBlocker onValidateCardInputEvent", new Object[0]);
        Blocker blocker = a(flag);
        if (blocker == null)
        {
            throw new RuntimeException("createAccessTokenBlocker for Square returned null.");
        } else
        {
            blocker.a(new com.snapchat.android.api2.cash.blockers.Blocker.ResolutionListener() {

                final SQCardFormBlocker this$0;
                final ValidatedCardInputCallback val$callback;
                final String val$cvv;
                final String val$expiry;
                final String val$pan;
                final String val$zip;

                public void a(Blocker blocker1)
                {
                    Timber.c("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker dismissed when trying to get access token", new Object[0]);
                    callback.a(CardInputError.UNKNOWN);
                }

                public void a(Blocker blocker1, List list, boolean flag1)
                {
                    com.snapchat.android.api2.cash.square.SquareBlockerRequestTask.SquareBlockerRequestCallback squareblockerrequestcallback = new com.snapchat.android.api2.cash.square.SquareBlockerRequestTask.SquareBlockerRequestCallback() {

                        final _cls1 this$1;

                        public void a(SquareBlockerResponsePayload squareblockerresponsepayload)
                        {
                            Timber.b("SQCardFormBlocker", "CASH-LOG: SUCCESS resolve SQCardFormBlocker", new Object[0]);
                            if (squareblockerresponsepayload != null)
                            {
                                com.snapchat.android.api2.cash.square.LinkCardTask.ResponsePayload responsepayload = (com.snapchat.android.api2.cash.square.LinkCardTask.ResponsePayload)squareblockerresponsepayload;
                                mCashCardManager.a(responsepayload.cardToken);
                                List list;
                                if (squareblockerresponsepayload.blockers != null && squareblockerresponsepayload.blockers.a())
                                {
                                    list = squareblockerresponsepayload.blockers.b();
                                } else
                                {
                                    list = null;
                                }
                                if (SQCardFormBlocker.a(_fld0) != null && squareblockerresponsepayload.payment != null)
                                {
                                    SQCardFormBlocker.a(_fld0).a(SquareProvider.a(squareblockerresponsepayload.payment.f(), squareblockerresponsepayload.payment.h()));
                                }
                                mSquareProvider.b();
                                callback.b();
                                SQCardFormBlocker.a(_fld0, list, true);
                                return;
                            } else
                            {
                                callback.a(SQCardFormBlocker.a(_fld0, null));
                                return;
                            }
                        }

                        public void a(SquareBlockerResponsePayload squareblockerresponsepayload, int i)
                        {
                            Object aobj[] = new Object[1];
                            aobj[0] = Integer.valueOf(i);
                            Timber.b("SQCardFormBlocker", "CASH-LOG: FAILED resolve SQCardFormBlocker statusCode[%d]", aobj);
                            if (i == 404 && SQCardFormBlocker.a(_fld0) != null)
                            {
                                SQCardFormBlocker.a(_fld0, null);
                                (new LinkCardTask(pan, expiry, cvv, zip, this)).g();
                                return;
                            }
                            if (i == 401 && !SQCardFormBlocker.b(_fld0))
                            {
                                SQCardFormBlocker.a(_fld0, true);
                                SQCardFormBlocker.a(_fld0, pan, expiry, cvv, zip, callback, true);
                                return;
                            }
                            if (i != 429) goto _L2; else goto _L1
_L1:
                            ErrorType errortype = ErrorType.TOO_MANY_ATTEMPTS;
_L4:
                            callback.a(SQCardFormBlocker.a(_fld0, errortype));
                            return;
_L2:
                            if (i == 0)
                            {
                                errortype = ErrorType.NETWORK_FAILURE;
                            } else
                            {
                                errortype = null;
                                if (squareblockerresponsepayload != null)
                                {
                                    errortype = squareblockerresponsepayload.a();
                                }
                            }
                            if (true) goto _L4; else goto _L3
_L3:
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    };
                    if (SQCardFormBlocker.a(SQCardFormBlocker.this) != null && !SQCardFormBlocker.a(SQCardFormBlocker.this).h())
                    {
                        (new LinkCardTask(SQCardFormBlocker.a(SQCardFormBlocker.this).b(), pan, expiry, cvv, zip, squareblockerrequestcallback)).g();
                        return;
                    } else
                    {
                        (new LinkCardTask(pan, expiry, cvv, zip, squareblockerrequestcallback)).g();
                        return;
                    }
                }

                public void b(Blocker blocker1)
                {
                    Timber.c("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker hard failed when trying to get access token", new Object[0]);
                    callback.a(CardInputError.UNKNOWN);
                }

                public void b(Blocker blocker1, List list, boolean flag1)
                {
                    Timber.c("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker failed to get access token", new Object[0]);
                    callback.a(CardInputError.UNKNOWN);
                    SQCardFormBlocker.b(SQCardFormBlocker.this, list, flag1);
                }

            
            {
                this$0 = SQCardFormBlocker.this;
                callback = validatedcardinputcallback;
                pan = s;
                expiry = s1;
                cvv = s2;
                zip = s3;
                super();
            }
            });
            blocker.a(null);
            return;
        }
    }

    static boolean a(SQCardFormBlocker sqcardformblocker, boolean flag)
    {
        sqcardformblocker.mRetriedFrom401 = flag;
        return flag;
    }

    static void b(SQCardFormBlocker sqcardformblocker, List list, boolean flag)
    {
        sqcardformblocker.b(list, flag);
    }

    static boolean b(SQCardFormBlocker sqcardformblocker)
    {
        return sqcardformblocker.mRetriedFrom401;
    }

    public void a(CashTransaction cashtransaction)
    {
        Timber.b("SQCardFormBlocker", "CASH-LOG: ATTEMPT resolve SQCardFormBlocker", new Object[0]);
        mTransactionContext = cashtransaction;
        if (mCardStatus == CardStatus.NOT_LINKED && mCashCardManager.a() != null)
        {
            Timber.b("SQCardFormBlocker", "CASH-LOG: Exists card token. Resolving card blocker without linking flow.", new Object[0]);
            a(null, true);
            return;
        } else
        {
            CardLinkFragment cardlinkfragment = new CardLinkFragment();
            Bundle bundle = new Bundle();
            bundle.putBoolean("use_default_green", mUseDefaultGreen);
            cardlinkfragment.setArguments(bundle);
            cardlinkfragment.a(this);
            BusProvider.a().a(new StartFragmentEvent(cardlinkfragment));
            return;
        }
    }

    public void a(String s, String s1, String s2, String s3, ValidatedCardInputCallback validatedcardinputcallback)
    {
        a(s, s1, s2, s3, validatedcardinputcallback, false);
    }

    public BlockerOrder c()
    {
        return BlockerOrder.SQ_CARD_BLOCKER;
    }

    public void e()
    {
        Timber.b("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker onCanceled", new Object[0]);
        AnalyticsEvents.Q();
        a();
    }

    public CardStatus f()
    {
        return mCardStatus;
    }
}
