// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.backoffs.ExponentialStrategy;
import com.snapchat.android.api2.framework.backoffs.IStrategy;
import com.snapchat.android.util.ScExecutors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.snapchat.android.api2.framework:
//            BasicScRequestTask, NetworkResult

public abstract class BaseRetriableScRequestTask extends BasicScRequestTask
{

    public static final int DEFAULT_RETRIES = 2;
    public static final ExponentialStrategy EXPONENTIAL_STRATEGY = new ExponentialStrategy();
    private static final String TAG = "BaseRetriableScRequestTask";
    protected static ScheduledExecutorService sScheduledExecutor;
    private final IStrategy mBackoffStrategy;
    public int mCurrentRetryAttempt;
    protected boolean mIsExecutedAsynchronous;
    private final int mNumRetries;

    public BaseRetriableScRequestTask()
    {
        this(null, 2);
    }

    public BaseRetriableScRequestTask(IStrategy istrategy)
    {
        this(istrategy, 2);
    }

    protected BaseRetriableScRequestTask(IStrategy istrategy, int i)
    {
        mNumRetries = i;
        mCurrentRetryAttempt = 0;
        mBackoffStrategy = istrategy;
        sScheduledExecutor = ScExecutors.h;
    }

    public void a(NetworkResult networkresult)
    {
        if (mIsExecutedAsynchronous && !networkresult.h() && mCurrentRetryAttempt < mNumRetries && networkresult.j() != 401)
        {
            mCurrentRetryAttempt = 1 + mCurrentRetryAttempt;
            long l;
            String s;
            Object aobj[];
            if (mBackoffStrategy != null)
            {
                l = mBackoffStrategy.a(mCurrentRetryAttempt);
            } else
            {
                l = 0L;
            }
            s = getClass().getSimpleName();
            aobj = new Object[2];
            aobj[0] = Integer.valueOf(mCurrentRetryAttempt);
            aobj[1] = Long.valueOf(l);
            Timber.b("NETWORK-LOG: %s is failed to complete. Going for %d attempt, backingoff for %d seconds", s, aobj);
            if (l > 0L)
            {
                sScheduledExecutor.schedule(h(), l, TimeUnit.SECONDS);
                return;
            } else
            {
                g();
                return;
            }
        } else
        {
            b(networkresult);
            super.a(networkresult);
            return;
        }
    }

    public void b(NetworkResult networkresult)
    {
    }

    public void g()
    {
        mIsExecutedAsynchronous = true;
        Object aobj[] = new Object[2];
        aobj[0] = getClass().getSimpleName();
        aobj[1] = Integer.valueOf(mCurrentRetryAttempt);
        Timber.b("BaseRetriableScRequestTask", "NETWORK-LOG: %s is executing for first attempt", aobj);
        super.g();
    }

    protected Runnable h()
    {
        return new Runnable() {

            final BaseRetriableScRequestTask this$0;

            public void run()
            {
                Object aobj[] = new Object[2];
                aobj[0] = getClass().getSimpleName();
                aobj[1] = Integer.valueOf(mCurrentRetryAttempt);
                Timber.b("BaseRetriableScRequestTask", "NETWORK-LOG: %s is executing for %d attempt", aobj);
                g();
            }

            
            {
                this$0 = BaseRetriableScRequestTask.this;
                super();
            }
        };
    }

}
