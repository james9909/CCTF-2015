// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.operation.ChannelListOperation;
import com.snapchat.android.operation.ClearViewedChatMessagesOperation;
import com.snapchat.android.operation.FindFriendsOperation;
import com.snapchat.android.operation.LogoutOperation;
import com.snapchat.android.operation.NotificationOperation;
import com.snapchat.android.operation.Operation;
import com.snapchat.android.operation.PingUrlOperation;
import com.snapchat.android.operation.SnapTagDownloadOperation;
import com.snapchat.android.operation.SnapTagOperation;
import com.snapchat.android.operation.UpdateHttpMetricsOperation;
import com.snapchat.android.operation.UpdateSnapsOperation;
import com.snapchat.android.operation.identity.ChangeEmailOperation;
import com.snapchat.android.operation.identity.ReauthOperation;
import com.snapchat.android.operation.identity.SettingsOperation;
import com.snapchat.android.operation.identity.ValidateEmailOperation;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;

// Referenced classes of package com.snapchat.android.service:
//            SnapchatServiceManager

public class SnapchatService extends Service
{
    class PostProcessRunnable
        implements Runnable
    {

        final SnapchatService a;
        private final Operation b;

        public void run()
        {
            b.b(SnapchatService.a(a));
            SnapchatService.b(a).b(b);
            SnapchatService.a(a, b);
        }

        public PostProcessRunnable(Operation operation)
        {
            a = SnapchatService.this;
            super();
            b = operation;
        }
    }

    class ProcessRunnable
        implements Runnable
    {

        final SnapchatService a;
        private final Operation b;

        public void run()
        {
            b.a(SnapchatService.a(a));
            SnapchatService.a().post(a. new PostProcessRunnable(b));
        }

        public ProcessRunnable(Operation operation)
        {
            a = SnapchatService.this;
            super();
            b = operation;
        }
    }

    static class SimpleThreadFactory
        implements ThreadFactory
    {

        public Thread newThread(Runnable runnable)
        {
            Thread thread = new Thread(runnable);
            thread.setName((new StringBuilder()).append("Worker:").append(System.currentTimeMillis() % 0x186a0L).toString());
            thread.setPriority(1);
            return thread;
        }

        private SimpleThreadFactory()
        {
        }

    }


    private static Handler f;
    private Context a;
    private ThreadFactory b;
    private ExecutorService c;
    private ArrayList d;
    private SnapchatServiceManager e;
    private long g;
    private final Runnable h = new Runnable() {

        final SnapchatService a;

        public void run()
        {
            Timber.c("SnapchatService", (new StringBuilder()).append("mStopRunnable mFutureList.size()=").append(SnapchatService.c(a).size()).append(" hasPendingIntents=").append(SnapchatService.b(a).e()).toString(), new Object[0]);
            if (SnapchatService.c(a).isEmpty() && !SnapchatService.b(a).e())
            {
                long l = SystemClock.elapsedRealtime() - SnapchatService.d(a);
                Object aobj[] = new Object[1];
                aobj[0] = Long.valueOf(l);
                Timber.c("SnapchatService", "Stop service which lived for %d ms", aobj);
                a.stopSelf();
            }
        }

            
            {
                a = SnapchatService.this;
                super();
            }
    };

    public SnapchatService()
    {
        b = new SimpleThreadFactory();
    }

    static Context a(SnapchatService snapchatservice)
    {
        return snapchatservice.a;
    }

    static Handler a()
    {
        return f;
    }

    private Operation a(Intent intent)
    {
        if (intent == null) goto _L2; else goto _L1
_L1:
        intent.getIntExtra("op_code", -1);
        JVM INSTR tableswitch 1000 1016: default 92
    //                   1000 94
    //                   1001 103
    //                   1002 112
    //                   1003 92
    //                   1004 121
    //                   1005 130
    //                   1006 92
    //                   1007 139
    //                   1008 92
    //                   1009 148
    //                   1010 157
    //                   1011 166
    //                   1012 175
    //                   1013 184
    //                   1014 193
    //                   1015 202
    //                   1016 211;
           goto _L2 _L3 _L4 _L5 _L2 _L6 _L7 _L2 _L8 _L2 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16
_L2:
        return null;
_L3:
        return new NotificationOperation(intent);
_L4:
        return new ClearViewedChatMessagesOperation(intent);
_L5:
        return new FindFriendsOperation(intent);
_L6:
        return new PingUrlOperation(intent);
_L7:
        return new UpdateHttpMetricsOperation(intent);
_L8:
        return new ChannelListOperation(intent);
_L9:
        return new SnapTagOperation(intent);
_L10:
        return new SnapTagDownloadOperation(intent);
_L11:
        return new ValidateEmailOperation(intent);
_L12:
        return new SettingsOperation(intent);
_L13:
        return new UpdateSnapsOperation(intent);
_L14:
        return new LogoutOperation(intent);
_L15:
        return new ChangeEmailOperation(intent);
_L16:
        return new ReauthOperation(intent);
    }

    private void a(Operation operation)
    {
        Timber.c("SnapchatService", (new StringBuilder()).append("finalizeRequest ").append(operation).toString(), new Object[0]);
        b(operation.a());
    }

    static void a(SnapchatService snapchatservice, Operation operation)
    {
        snapchatservice.a(operation);
    }

    static SnapchatServiceManager b(SnapchatService snapchatservice)
    {
        return snapchatservice.e;
    }

    private void b(Intent intent)
    {
        Timber.c("SnapchatService", (new StringBuilder()).append("finalizeRequest ").append(intent).toString(), new Object[0]);
        if (e.a(intent))
        {
            Integer integer = Integer.valueOf(e.b(intent));
            Timber.c("SnapchatService", (new StringBuilder()).append("finalizeRequest - requestId ").append(integer).toString(), new Object[0]);
            e.a(integer.intValue());
            e.c(intent);
        }
        for (int i = 0; i < d.size(); i++)
        {
            if (((Future)d.get(i)).isDone())
            {
                Timber.c("SnapchatService", (new StringBuilder()).append("Removed one future - mFutureList.size()=").append(d.size()).toString(), new Object[0]);
                d.remove(i);
                i--;
            }
        }

        Timber.c("SnapchatService", (new StringBuilder()).append("finalizeRequest mStopRunnable futureList.size()==").append(d.size()).append(" hasPendingIntents=").append(e.e()).toString(), new Object[0]);
        if (d.isEmpty() && !e.e())
        {
            Timber.c("SnapchatService", "Will stop service in 5 seconds", new Object[0]);
            f.removeCallbacks(h);
            f.postDelayed(h, 5000L);
        }
    }

    static ArrayList c(SnapchatService snapchatservice)
    {
        return snapchatservice.d;
    }

    static long d(SnapchatService snapchatservice)
    {
        return snapchatservice.g;
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        super.onCreate();
        a = getApplicationContext();
        g = SystemClock.elapsedRealtime();
        if (f == null)
        {
            f = new Handler(Looper.getMainLooper());
        }
        c = Executors.newCachedThreadPool(b);
        d = new ArrayList();
        e = SnapchatServiceManager.a();
    }

    public void onDestroy()
    {
        super.onDestroy();
        Timber.c("SnapchatService", "onDestroy()", new Object[0]);
        c.shutdown();
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        Timber.c("SnapchatService", (new StringBuilder()).append("onStartCommand ").append(intent).toString(), new Object[0]);
        f.removeCallbacks(h);
        Operation operation = a(intent);
        if (operation == null)
        {
            Timber.e("SnapchatService", (new StringBuilder()).append("Failed to create a service operation from ").append(intent).toString(), new Object[0]);
            b(intent);
            return 2;
        } else
        {
            d.add(c.submit(new ProcessRunnable(operation)));
            Object aobj[] = new Object[2];
            aobj[0] = operation;
            aobj[1] = Integer.valueOf(d.size());
            Timber.c("SnapchatService", "The new operation %s has been submitted. mFutureList.size()=%d", aobj);
            return 2;
        }
    }
}
