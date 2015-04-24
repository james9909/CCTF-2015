// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.blockers.Blocker;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.ConfirmPaymentTask;
import com.snapchat.android.api2.cash.square.SquareBlockerResponsePayload;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.api2.cash.square.data.SQPaymentBlockers;
import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.StartFragmentEvent;
import com.squareup.otto.Bus;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQRetrieveSendingCashPaymentBlocker

public class SQConfirmBlocker extends Blocker
{

    private static final String TAG = "SQConfirmBlocker";
    protected CashErrorReporter mCashErrorReporter;
    protected boolean mRequiresPasscode;
    protected SquareProvider mSquareProvider;

    public SQConfirmBlocker()
    {
        SnapchatApplication.e().a(this);
    }

    static void a(SQConfirmBlocker sqconfirmblocker)
    {
        sqconfirmblocker.b();
    }

    static void a(SQConfirmBlocker sqconfirmblocker, List list, boolean flag)
    {
        sqconfirmblocker.a(list, flag);
    }

    static void b(SQConfirmBlocker sqconfirmblocker)
    {
        sqconfirmblocker.b();
    }

    static void b(SQConfirmBlocker sqconfirmblocker, List list, boolean flag)
    {
        sqconfirmblocker.a(list, flag);
    }

    static void c(SQConfirmBlocker sqconfirmblocker)
    {
        sqconfirmblocker.a();
    }

    static void c(SQConfirmBlocker sqconfirmblocker, List list, boolean flag)
    {
        sqconfirmblocker.b(list, flag);
    }

    static void d(SQConfirmBlocker sqconfirmblocker, List list, boolean flag)
    {
        sqconfirmblocker.a(list, flag);
    }

    static void e(SQConfirmBlocker sqconfirmblocker, List list, boolean flag)
    {
        sqconfirmblocker.b(list, flag);
    }

    static void f(SQConfirmBlocker sqconfirmblocker, List list, boolean flag)
    {
        sqconfirmblocker.a(list, flag);
    }

    static void g(SQConfirmBlocker sqconfirmblocker, List list, boolean flag)
    {
        sqconfirmblocker.a(list, flag);
    }

    static void h(SQConfirmBlocker sqconfirmblocker, List list, boolean flag)
    {
        sqconfirmblocker.b(list, flag);
    }

    static void i(SQConfirmBlocker sqconfirmblocker, List list, boolean flag)
    {
        sqconfirmblocker.b(list, flag);
    }

    protected ConfirmPaymentTask a(String s, String s1, com.snapchat.android.api2.cash.square.SquareBlockerRequestTask.SquareBlockerRequestCallback squareblockerrequestcallback)
    {
        return new ConfirmPaymentTask(s, s1, squareblockerrequestcallback);
    }

    protected com.snapchat.android.fragments.cash.SecurityCodeFragment.SecurityCodeCallback a(final SecurityCodeFragment fragment, final CashTransaction transaction)
    {
        return new com.snapchat.android.fragments.cash.SecurityCodeFragment.SecurityCodeCallback() {

            final SQConfirmBlocker this$0;
            final SecurityCodeFragment val$fragment;
            final CashTransaction val$transaction;

            public void a()
            {
                Timber.b("SQConfirmBlocker", "CASH-LOG: SQConfirmBlocker SecurityCodeFragment CANCELED", new Object[0]);
                SQConfirmBlocker.c(SQConfirmBlocker.this);
            }

            public void a(String s)
            {
                transaction.g(s);
                Timber.b("SQConfirmBlocker", "CASH-LOG: SQConfirmBlocker ENTERED security code", new Object[0]);
                SQConfirmBlocker.this.a(transaction.b(), s, new com.snapchat.android.api2.cash.square.SquareBlockerRequestTask.SquareBlockerRequestCallback() {

                    final _cls2 this$1;

                    public void a(SquareBlockerResponsePayload squareblockerresponsepayload)
                    {
                        Object aobj[] = new Object[1];
                        aobj[0] = transaction.b();
                        Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask SUCCEEDED id[%s]", aobj);
                        fragment.d();
                        if (squareblockerresponsepayload != null)
                        {
                            List list;
                            CashPayment cashpayment;
                            if (squareblockerresponsepayload.blockers != null && squareblockerresponsepayload.blockers.a())
                            {
                                list = squareblockerresponsepayload.blockers.b();
                            } else
                            {
                                list = null;
                            }
                            cashpayment = squareblockerresponsepayload.payment;
                            if (cashpayment != null)
                            {
                                com.snapchat.android.model.CashTransaction.TransactionStatus transactionstatus = SquareProvider.a(cashpayment.f(), cashpayment.h());
                                transaction.a(transactionstatus);
                                if (cashpayment.f() == com.snapchat.android.api2.cash.square.data.CashPayment.State.CANCELED)
                                {
                                    mSquareProvider.a(transaction, cashpayment.h());
                                    if (transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.SENDER_CANCELED)
                                    {
                                        SQConfirmBlocker.b(_fld0);
                                        return;
                                    } else
                                    {
                                        SQConfirmBlocker.f(_fld0, null, true);
                                        return;
                                    }
                                }
                            }
                        } else
                        {
                            list = null;
                        }
                        SQConfirmBlocker.g(_fld0, list, true);
                    }

                    public void a(SquareBlockerResponsePayload squareblockerresponsepayload, int j)
                    {
                        Object aobj[] = new Object[2];
                        aobj[0] = transaction.b();
                        aobj[1] = Integer.valueOf(j);
                        Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask FAILED id[%s] statusCode[%d]", aobj);
                        List list = SquareProvider.a(_fld0, j);
                        if (list != null)
                        {
                            SQConfirmBlocker.h(_fld0, list, true);
                            return;
                        }
                        ErrorType errortype;
                        if (squareblockerresponsepayload != null)
                        {
                            errortype = squareblockerresponsepayload.a();
                        } else
                        {
                            errortype = null;
                        }
                        transaction.g(null);
                        fragment.a(errortype, j);
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                }).g();
            }

            public void b()
            {
                SQConfirmBlocker sqconfirmblocker = SQConfirmBlocker.this;
                Blocker ablocker[] = new Blocker[1];
                ablocker[0] = new SQRetrieveSendingCashPaymentBlocker();
                SQConfirmBlocker.i(sqconfirmblocker, Arrays.asList(ablocker), true);
            }

            
            {
                this$0 = SQConfirmBlocker.this;
                transaction = cashtransaction;
                fragment = securitycodefragment;
                super();
            }
        };
    }

    public void a(final CashTransaction transaction)
    {
        Object aobj[] = new Object[3];
        aobj[0] = transaction.b();
        aobj[1] = transaction.f();
        aobj[2] = transaction.j();
        Timber.b("SQConfirmBlocker", "CASH-LOG: ATTEMPT resolve SQConfirmBlocker id[%s] recipient[%s] amount[%s]", aobj);
        String s;
        if (mRequiresPasscode)
        {
            s = transaction.z();
        } else
        {
            s = null;
        }
        if (mRequiresPasscode && TextUtils.isEmpty(s))
        {
            SecurityCodeFragment securitycodefragment = e();
            securitycodefragment.a(a(securitycodefragment, transaction));
            BusProvider.a().a(new StartFragmentEvent(securitycodefragment));
            return;
        } else
        {
            a(transaction.b(), s, new com.snapchat.android.api2.cash.square.SquareBlockerRequestTask.SquareBlockerRequestCallback() {

                final SQConfirmBlocker this$0;
                final CashTransaction val$transaction;

                public void a(SquareBlockerResponsePayload squareblockerresponsepayload)
                {
                    Object aobj1[] = new Object[1];
                    aobj1[0] = transaction.b();
                    Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask SUCCEEDED id[%s]", aobj1);
                    if (squareblockerresponsepayload == null) goto _L2; else goto _L1
_L1:
                    if (squareblockerresponsepayload.blockers == null || !squareblockerresponsepayload.blockers.a()) goto _L4; else goto _L3
_L3:
                    List list1;
                    Iterator iterator;
                    list1 = squareblockerresponsepayload.blockers.b();
                    iterator = list1.iterator();
_L8:
                    if (!iterator.hasNext()) goto _L6; else goto _L5
_L5:
                    if (((Blocker)iterator.next()).d()) goto _L8; else goto _L7
_L7:
                    boolean flag;
                    List list;
                    flag = false;
                    list = list1;
_L11:
                    CashPayment cashpayment = squareblockerresponsepayload.payment;
                    if (cashpayment != null)
                    {
                        com.snapchat.android.model.CashTransaction.TransactionStatus transactionstatus = SquareProvider.a(cashpayment.f(), cashpayment.h());
                        transaction.a(transactionstatus);
                        if (cashpayment.f() == com.snapchat.android.api2.cash.square.data.CashPayment.State.CANCELED)
                        {
                            mSquareProvider.a(transaction, cashpayment.h());
                            if (transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.SENDER_CANCELED)
                            {
                                SQConfirmBlocker.a(SQConfirmBlocker.this);
                                return;
                            } else
                            {
                                SQConfirmBlocker.a(SQConfirmBlocker.this, null, true);
                                return;
                            }
                        }
                    }
                      goto _L9
_L2:
                    flag = true;
                    list = null;
_L9:
                    SQConfirmBlocker.b(SQConfirmBlocker.this, list, flag);
                    return;
_L6:
                    flag = true;
                    list = list1;
                    continue; /* Loop/switch isn't completed */
_L4:
                    flag = true;
                    list = null;
                    if (true) goto _L11; else goto _L10
_L10:
                }

                public void a(SquareBlockerResponsePayload squareblockerresponsepayload, int j)
                {
                    Object aobj1[] = new Object[2];
                    aobj1[0] = transaction.b();
                    aobj1[1] = Integer.valueOf(j);
                    Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask FAILED id[%s] statusCode[%d]", aobj1);
                    List list = SquareProvider.a(SQConfirmBlocker.this, j);
                    if (list != null)
                    {
                        SQConfirmBlocker.c(SQConfirmBlocker.this, list, true);
                        return;
                    }
                    transaction.g(null);
                    ErrorType errortype;
                    if (squareblockerresponsepayload != null)
                    {
                        errortype = squareblockerresponsepayload.a();
                    } else
                    {
                        errortype = null;
                    }
                    if (ErrorType.isNonRecoverableError(errortype))
                    {
                        SQConfirmBlocker sqconfirmblocker = SQConfirmBlocker.this;
                        Blocker ablocker[] = new Blocker[1];
                        ablocker[0] = new SQRetrieveSendingCashPaymentBlocker();
                        SQConfirmBlocker.d(sqconfirmblocker, Arrays.asList(ablocker), true);
                        return;
                    } else
                    {
                        AnalyticsEvents.a("SQUARE_SECURITY_CODE_VERIFICATION_FAILED", j);
                        mCashErrorReporter.a(transaction, 0x7f0c0152, new Object[0]);
                        SQConfirmBlocker.e(SQConfirmBlocker.this, null, false);
                        return;
                    }
                }

            
            {
                this$0 = SQConfirmBlocker.this;
                transaction = cashtransaction;
                super();
            }
            }).g();
            return;
        }
    }

    public BlockerOrder c()
    {
        return BlockerOrder.SQ_CONFIRM_BLOCKER;
    }

    protected SecurityCodeFragment e()
    {
        return new SecurityCodeFragment();
    }
}
