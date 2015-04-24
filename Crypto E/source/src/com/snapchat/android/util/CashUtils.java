// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.util.chat.ChatUtils;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.util:
//            NumberFormatUtils

public class CashUtils
{
    public static final class CurrencyCode extends Enum
    {

        private static final CurrencyCode $VALUES[];
        public static final CurrencyCode USD;

        public static CurrencyCode valueOf(String s)
        {
            return (CurrencyCode)Enum.valueOf(com/snapchat/android/util/CashUtils$CurrencyCode, s);
        }

        public static CurrencyCode[] values()
        {
            return (CurrencyCode[])$VALUES.clone();
        }

        static 
        {
            USD = new CurrencyCode("USD", 0);
            CurrencyCode acurrencycode[] = new CurrencyCode[1];
            acurrencycode[0] = USD;
            $VALUES = acurrencycode;
        }

        private CurrencyCode(String s, int i)
        {
            super(s, i);
        }
    }


    public CashUtils()
    {
    }

    public static CashFeedItem a(ChatConversation chatconversation, CashFeedItem cashfeeditem, CashFeedItem cashfeeditem1)
    {
        if (cashfeeditem1 == null) goto _L2; else goto _L1
_L1:
        CashTransaction cashtransaction1 = cashfeeditem1.h();
        if (cashfeeditem == null) goto _L4; else goto _L3
_L3:
        if (cashfeeditem.a(cashfeeditem1)) goto _L6; else goto _L5
_L5:
        cashfeeditem = null;
_L8:
        return cashfeeditem;
_L6:
        Object aobj1[] = new Object[1];
        aobj1[0] = cashfeeditem.d();
        Timber.f("CashUtils", "CASH-LOG: Cash Item %s is being updated", aobj1);
        CashTransaction cashtransaction2 = cashfeeditem.h();
        if (cashtransaction2.o().equals(cashtransaction1.o()))
        {
            if (ChatUtils.a(cashfeeditem))
            {
                cashtransaction2.b(cashtransaction1);
            } else
            {
                cashtransaction2.a(cashtransaction1);
            }
        } else
        {
            cashtransaction2.a(cashtransaction1.o());
            cashtransaction2.a(cashtransaction1);
            cashtransaction2.b(cashtransaction1);
        }
        cashfeeditem.a(cashfeeditem1.K());
        cashtransaction2.a(cashtransaction1.h());
        cashtransaction2.b(cashtransaction1.i());
        cashtransaction2.a(cashtransaction1.m());
        cashtransaction2.b(cashtransaction1.n());
        if (cashfeeditem1.A() != null)
        {
            cashfeeditem.a(cashfeeditem1.A());
            return cashfeeditem;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        chatconversation.a(cashfeeditem1);
        return cashfeeditem1;
_L2:
        if (cashfeeditem != null)
        {
            Object aobj[] = new Object[1];
            aobj[0] = cashfeeditem.d();
            Timber.f("CashUtils", "CASH-LOG: Cash Item is not found on server for %s ", aobj);
            CashTransaction cashtransaction = cashfeeditem.h();
            if (!cashtransaction.o().equals(com.snapchat.android.model.CashTransaction.TransactionStatus.INITIATED))
            {
                a(cashtransaction);
                return cashfeeditem;
            }
        } else
        {
            return null;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static String a(int i)
    {
        if (i % 100 == 0)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(i / 100);
            return String.format("%d", aobj1);
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = Float.valueOf((float)i / 100F);
            return String.format("%.2f", aobj);
        }
    }

    public static String a(int i, CurrencyCode currencycode)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[CurrencyCode.values().length];
                try
                {
                    a[CurrencyCode.USD.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
            }
        }

        int _tmp = _cls1.a[currencycode.ordinal()];
        Locale locale = Locale.US;
        int j = i % 100;
        byte byte0 = 0;
        if (j != 0)
        {
            byte0 = 2;
        }
        return NumberFormatUtils.a((double)i / 100D, locale, byte0);
    }

    private static void a(CashTransaction cashtransaction)
    {
        if (cashtransaction.o().equals(com.snapchat.android.model.CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT))
        {
            cashtransaction.a(com.snapchat.android.model.CashTransaction.TransactionStatus.COMPLETED);
        }
        cashtransaction.d(true);
        cashtransaction.f(false);
        cashtransaction.c(true);
        cashtransaction.e(false);
    }

    public static boolean a(com.snapchat.android.api2.cash.ScCashResponsePayload.Status status)
    {
        return status != com.snapchat.android.api2.cash.ScCashResponsePayload.Status.NON_US_USER && status != com.snapchat.android.api2.cash.ScCashResponsePayload.Status.UNDER_AGE_LIMIT && status != com.snapchat.android.api2.cash.ScCashResponsePayload.Status.LOCKED_ACCOUNT && status != com.snapchat.android.api2.cash.ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT;
    }

    public static boolean a(Friend friend)
    {
        return friend != null && UserPrefs.W() && a(UserPrefs.Z()) && a(friend.M());
    }

    public static boolean a(String s, CashFeedItem cashfeeditem)
    {
        com.snapchat.android.model.CashTransaction.TransactionStatus transactionstatus;
        if (TextUtils.equals(s, cashfeeditem.l()))
        {
            if ((transactionstatus = cashfeeditem.h().o()) == com.snapchat.android.model.CashTransaction.TransactionStatus.WAITING_ON_RECIPIENT || transactionstatus == com.snapchat.android.model.CashTransaction.TransactionStatus.COMPLETED)
            {
                return true;
            }
        }
        return false;
    }

    public static boolean b(com.snapchat.android.api2.cash.ScCashResponsePayload.Status status)
    {
        return status == com.snapchat.android.api2.cash.ScCashResponsePayload.Status.OK;
    }
}
