// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.threading.ThreadUtils;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.snapchat.android.api2.framework:
//            HyperRequest, HyperRequestDependencyProvider, NetworkInterface, NetworkResult

public abstract class HyperRequestTask extends HyperRequest
{

    public NetworkInterface mNetworkInterface;

    public HyperRequestTask()
    {
        mNetworkInterface = mProvider.a();
    }

    public void g()
    {
        ScExecutors.b.execute(new Runnable() {

            final HyperRequestTask this$0;

            public void run()
            {
                k();
            }

            
            {
                this$0 = HyperRequestTask.this;
                super();
            }
        });
    }

    public NetworkResult k()
    {
        ThreadUtils.b();
        String s = m_();
        HttpMethod httpmethod = c();
        java.util.Map map = j_();
        com.snapchat.android.util.memory.Buffer buffer = f_();
        Object obj = b();
        NetworkResult networkresult;
        try
        {
            networkresult = mNetworkInterface.a(s, httpmethod, map, buffer, obj);
            a(networkresult);
        }
        catch (Throwable throwable)
        {
            throw new RuntimeException((new StringBuilder()).append("An error occurred while executing request: ").append(s).toString(), throwable);
        }
        return networkresult;
    }
}
