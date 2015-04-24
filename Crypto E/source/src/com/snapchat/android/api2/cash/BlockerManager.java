// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.chat.CashFeedItem;

// Referenced classes of package com.snapchat.android.api2.cash:
//            CashProviderManager, ICashProvider

public class BlockerManager
{
    public static interface ContinueForwardListener
    {

        public abstract void a();

        public abstract void b();
    }


    private static final String TAG = "BlockerManager";
    protected CashProviderManager mCashProviderManager;

    public BlockerManager()
    {
        SnapchatApplication.e().a(this);
    }

    public void a(CashFeedItem cashfeeditem, ContinueForwardListener continueforwardlistener)
    {
        String s = cashfeeditem.g();
        if (mCashProviderManager.b(s))
        {
            cashfeeditem.a(mCashProviderManager.a("snapcash").c());
            cashfeeditem.a(mCashProviderManager.a(s).c());
            cashfeeditem.a(continueforwardlistener);
        } else
        {
            CashProviderManager.a();
            if (continueforwardlistener != null)
            {
                continueforwardlistener.b();
                return;
            }
        }
    }

    public void b(CashFeedItem cashfeeditem, ContinueForwardListener continueforwardlistener)
    {
        String s = cashfeeditem.g();
        if (mCashProviderManager.b(s))
        {
            cashfeeditem.a(mCashProviderManager.a("snapcash").d());
            cashfeeditem.a(mCashProviderManager.a(s).d());
            cashfeeditem.a(continueforwardlistener);
        } else
        {
            CashProviderManager.a();
            if (continueforwardlistener != null)
            {
                continueforwardlistener.b();
                return;
            }
        }
    }

    public void c(CashFeedItem cashfeeditem, ContinueForwardListener continueforwardlistener)
    {
        String s = cashfeeditem.g();
        if (mCashProviderManager.b(s))
        {
            cashfeeditem.a(mCashProviderManager.a("snapcash").e());
            cashfeeditem.a(mCashProviderManager.a(s).e());
            cashfeeditem.a(continueforwardlistener);
        } else
        {
            CashProviderManager.a();
            if (continueforwardlistener != null)
            {
                continueforwardlistener.b();
                return;
            }
        }
    }

    public void d(CashFeedItem cashfeeditem, ContinueForwardListener continueforwardlistener)
    {
        String s = cashfeeditem.g();
        if (mCashProviderManager.b(s))
        {
            cashfeeditem.a(mCashProviderManager.a("snapcash").f());
            cashfeeditem.a(mCashProviderManager.a(s).f());
            cashfeeditem.a(continueforwardlistener);
        } else
        {
            CashProviderManager.a();
            if (continueforwardlistener != null)
            {
                continueforwardlistener.b();
                return;
            }
        }
    }

    public void e(CashFeedItem cashfeeditem, ContinueForwardListener continueforwardlistener)
    {
        String s = cashfeeditem.g();
        cashfeeditem.a(mCashProviderManager.a("snapcash").g());
        if (mCashProviderManager.b(s))
        {
            cashfeeditem.a(mCashProviderManager.a(s).g());
            cashfeeditem.a(continueforwardlistener);
        } else
        {
            CashProviderManager.a();
            if (continueforwardlistener != null)
            {
                continueforwardlistener.b();
                return;
            }
        }
    }

    public void f(CashFeedItem cashfeeditem, ContinueForwardListener continueforwardlistener)
    {
        String s = cashfeeditem.g();
        if (mCashProviderManager.b(s))
        {
            cashfeeditem.a(mCashProviderManager.a("snapcash").h());
            cashfeeditem.a(mCashProviderManager.a(s).h());
            cashfeeditem.a(continueforwardlistener);
        } else
        {
            CashProviderManager.a();
            if (continueforwardlistener != null)
            {
                continueforwardlistener.b();
                return;
            }
        }
    }
}
