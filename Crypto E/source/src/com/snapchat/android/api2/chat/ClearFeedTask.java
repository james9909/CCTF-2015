// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.chat;

import com.snapchat.android.api2.framework.BasicScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.UpdateFeedEvent;
import com.squareup.otto.Bus;

public class ClearFeedTask extends BasicScRequestTask
{
    public static interface ClearFeedTaskCallback
    {

        public abstract void a();

        public abstract void b();
    }


    private ClearFeedTaskCallback mCallback;

    public ClearFeedTask(ClearFeedTaskCallback clearfeedtaskcallback)
    {
        mCallback = clearfeedtaskcallback;
    }

    public void a(NetworkResult networkresult)
    {
        super.a(networkresult);
        if (networkresult.h())
        {
            mCallback.a();
        } else
        {
            mCallback.b();
        }
        BusProvider.a().a(new UpdateFeedEvent());
    }

    protected String d()
    {
        return "/loq/clear_feed";
    }
}
