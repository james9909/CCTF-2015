// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.squareup.otto.Bus;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.snapchat.android.api2.cash:
//            ScProvider, ICashProvider

public class CashProviderManager
{

    private Map mProviderMap;
    protected ScProvider mScProvider;
    protected SquareProvider mSquareProvider;

    public CashProviderManager()
    {
        SnapchatApplication.e().a(this);
        mProviderMap = new HashMap();
        mProviderMap.put(mScProvider.a(), mScProvider);
        mProviderMap.put(mSquareProvider.a(), mSquareProvider);
    }

    public static void a()
    {
        BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, 0x7f0c0175));
    }

    public ICashProvider a(String s)
    {
        return (ICashProvider)mProviderMap.get(s);
    }

    public boolean b(String s)
    {
        return mProviderMap.containsKey(s);
    }
}
