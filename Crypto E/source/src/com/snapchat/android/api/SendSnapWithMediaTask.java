// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.os.Bundle;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.model.Snapbryo;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.cache.SendSnapCacheWrapper;

// Referenced classes of package com.snapchat.android.api:
//            SendSnapTask

public class SendSnapWithMediaTask extends SendSnapTask
{
    public static class SendSnapException extends Exception
    {

        public SendSnapException(String s)
        {
            super(s);
        }
    }


    private static final String TASK_NAME = "SendSnapWithMediaTask";
    private byte mData[];

    public SendSnapWithMediaTask(Snapbryo snapbryo, SendSnapTask.SendSnapCallback sendsnapcallback)
    {
        super(snapbryo, sendsnapcallback);
        mData = SendSnapCacheWrapper.a().a(snapbryo);
        if (mData == null)
        {
            SnapWomb.a().d(snapbryo);
            throw new SendSnapException("Snap media is no longer accessible :(");
        } else
        {
            mNetworkAnalytics.b(mData.length);
            return;
        }
    }

    protected String a()
    {
        return "/loq/retry";
    }

    protected void a(String s, int i)
    {
        if (!mSnapbryo.P())
        {
            mSnapbryo.e(true);
            try
            {
                (new SendSnapWithMediaTask(mSnapbryo, mSendSnapCallback)).executeOnExecutor(ScExecutors.b, new String[0]);
                return;
            }
            catch (SendSnapException sendsnapexception)
            {
                (new ErrorMetric(sendsnapexception.getMessage())).a(sendsnapexception).c();
            }
            mSendSnapCallback.d(mSnapbryo);
            mNotificationManager.a(mContext, false);
            return;
        } else
        {
            mSendSnapCallback.d(mSnapbryo);
            mNotificationManager.a(mContext, false);
            return;
        }
    }

    protected Bundle b()
    {
        Bundle bundle = super.b();
        bundle.putString("type", String.valueOf(mSnapbryo.b()));
        bundle.putByteArray("data", mData);
        return bundle;
    }

    protected String c()
    {
        return "SendSnapWithMediaTask";
    }
}
