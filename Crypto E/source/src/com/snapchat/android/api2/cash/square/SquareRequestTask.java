// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.framework.EntityFactory;
import com.snapchat.android.api2.framework.HyperRequestTask;
import com.snapchat.android.api2.framework.OkHttpNetworkInterface;
import com.snapchat.android.api2.framework.SquareOkHttpClientFactory;
import com.snapchat.android.cash.CashAuthManager;
import com.snapchat.android.cash.CashAuthToken;
import com.snapchat.android.util.StringUtils;
import com.snapchat.android.util.crypto.DeviceTokenManager;
import com.snapchat.android.util.network.EndpointManager;
import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;

public abstract class SquareRequestTask extends HyperRequestTask
{

    protected CashAuthManager mCashAuthManager;
    protected EntityFactory mEntityFactory;
    protected SquareOkHttpClientFactory mSquareOkHttpClientFactory;

    protected SquareRequestTask()
    {
        SnapchatApplication.e().a(this);
        mNetworkInterface = new OkHttpNetworkInterface(mEntityFactory, mSquareOkHttpClientFactory);
    }

    protected abstract String e();

    public Map j_()
    {
        CashAuthToken cashauthtoken = mCashAuthManager.a();
        if (cashauthtoken == null)
        {
            throw new RuntimeException((new StringBuilder()).append("We shouldn't ever be creating a SquareRequestTask with a null CashAuthToken!").append(getClass().getName()).append(" ").append(m_()).toString());
        }
        TreeMap treemap = new TreeMap();
        treemap.put("Authorization", (new StringBuilder()).append("Bearer ").append(cashauthtoken.a()).toString());
        treemap.put("Accept", "application/json; charset=utf-8");
        treemap.put("Content-Type", "application/json");
        String s = DeviceTokenManager.a().g();
        if (s != null)
        {
            treemap.put("X-SQ-DEVICE-ID", s);
        }
        return treemap;
    }

    public String m_()
    {
        String as[] = new String[3];
        as[0] = EndpointManager.a().k();
        as[1] = "v1/me";
        as[2] = e();
        return StringUtils.a(Arrays.asList(as), "/");
    }
}
