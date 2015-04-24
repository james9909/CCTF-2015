// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import com.crittercism.app.Crittercism;
import com.crittercism.app.CrittercismConfig;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry;
import com.snapchat.android.model.User;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.debug.CrashSampler;
import com.snapchat.android.util.debug.GracefulExceptionHandler;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.debug.ShakeReporter;
import com.snapchat.android.util.debug.SnapchatCrashManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.UserLoadedEvent;
import com.snapchat.android.util.threading.ThreadUtils;
import com.snapchat.yorick.AnrDetector;
import com.snapchat.yorick.AnrListener;
import com.snapchat.yorick.CrittercismReporter;
import com.snapchat.yorick.HockeyAppReporter;
import com.snapchat.yorick.ParsedTrace;
import com.squareup.otto.Bus;
import dagger.ObjectGraph;
import net.hockeyapp.android.CrashManager;
import net.hockeyapp.android.NativeCrashManager;
import net.hockeyapp.android.Tracking;
import net.hockeyapp.android.UpdateManager;

// Referenced classes of package com.snapchat.android:
//            SnapchatApplication, Timber, UserLoader

public abstract class SnapchatActivity extends FragmentActivity
{
    class DevAnrReporter
        implements AnrListener
    {

        final SnapchatActivity a;

        public void a(ParsedTrace parsedtrace)
        {
            Context context = a.getApplicationContext();
            ThreadUtils.a(new Runnable(this, context) {

                final Context a;
                final DevAnrReporter b;

                public void run()
                {
                    AlertDialogUtils.a("ANR detected from Snapchat! See more details in notification", a, 1);
                }

            
            {
                b = devanrreporter;
                a = context;
                super();
            }
            });
            AndroidNotificationManager.a().b(context, parsedtrace.b);
        }

        DevAnrReporter()
        {
            a = SnapchatActivity.this;
            super();
        }
    }


    private static boolean a;
    private SnapchatCrashManager b;
    private ObjectGraph c;
    private boolean d;
    protected User p;
    public ShakeReporter q;
    protected AnalyticsPlatformRegistry r;
    protected CrashSampler s;
    protected GracefulExceptionHandler t;
    protected boolean u;

    public SnapchatActivity()
    {
        b = new SnapchatCrashManager();
        d = false;
        q = new ShakeReporter();
        u = false;
    }

    private void a()
    {
        if (c == null)
        {
            c = ((SnapchatApplication)getApplication()).c();
        }
    }

    private void a(Intent intent)
    {
        if (intent != null)
        {
            String s1 = intent.getStringExtra("FROM");
            String s2 = getClass().getSimpleName();
            Timber.c("SnapchatActivity", (new StringBuilder()).append("logTransition ").append(s1).append(" -> ").append(s2).toString(), new Object[0]);
            AnalyticsEvents.c(s1, s2);
        }
    }

    private static boolean b()
    {
        return ReleaseManager.f() && !ReleaseManager.e();
    }

    public static boolean x()
    {
        return a;
    }

    protected void a(User user)
    {
        Timber.c("SnapchatActivity", (new StringBuilder()).append("onUserLoaded ").append(user).toString(), new Object[0]);
        if (d)
        {
            r.a(this);
            d = false;
        }
        BusProvider.a().a(new UserLoadedEvent(user));
    }

    public void a(Object obj)
    {
        a();
        c.a(obj);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
label0:
        {
            super.onActivityResult(i, j, intent);
            if (43351 == i)
            {
                if (j != -1)
                {
                    break label0;
                }
                q.a(true);
            }
            return;
        }
        q.a(false);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a(this);
        if (bundle != null)
        {
            u = bundle.getBoolean("waiting_for_activity_result");
        }
        b.a();
        if (s.b())
        {
            new CrittercismConfig();
            Crittercism.a(getApplicationContext(), "53b243b017878408e2000002");
            a = true;
            Crittercism.a("initialize crittercism.");
            NativeCrashManager.a(this, "c06b8797877eb662616000c11de0d338");
        }
        if (b() && "com.snapchat.android".contains("flavortest"))
        {
            try
            {
                ((KeyguardManager)getSystemService("keyguard")).newKeyguardLock(getLocalClassName()).disableKeyguard();
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        u();
    }

    protected void onDestroy()
    {
        c = null;
        super.onDestroy();
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        a(intent);
    }

    protected void onPause()
    {
        super.onPause();
        if (s.b())
        {
            Tracking.b(this);
        }
    }

    protected void onResume()
    {
        super.onResume();
        b.b();
        if (s.b())
        {
            CrashManager.a(this, "c06b8797877eb662616000c11de0d338", b);
            Tracking.a(this);
        }
        if (b())
        {
            UpdateManager.a(this, "c06b8797877eb662616000c11de0d338");
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("waiting_for_activity_result", u);
    }

    public void onStart()
    {
        super.onStart();
        a(getIntent());
        u = false;
        if (p == null)
        {
            d = true;
        } else
        {
            r.a(this);
        }
        if (ReleaseManager.f())
        {
            q.a(this);
            q.a();
        }
        if (s.b())
        {
            HockeyAppReporter hockeyappreporter = new HockeyAppReporter(this, "c06b8797877eb662616000c11de0d338", ReleaseManager.g());
            AnrDetector anrdetector = new AnrDetector();
            anrdetector.a(hockeyappreporter);
            if (a)
            {
                anrdetector.a(new CrittercismReporter());
            }
            anrdetector.a(new Thread.UncaughtExceptionHandler() {

                final SnapchatActivity a;

                public void uncaughtException(Thread thread, Throwable throwable)
                {
                    a.t.a(throwable);
                }

            
            {
                a = SnapchatActivity.this;
                super();
            }
            });
            anrdetector.a(this);
        }
        if (ReleaseManager.f())
        {
            AnrDetector anrdetector1 = new AnrDetector();
            anrdetector1.a(new DevAnrReporter());
            anrdetector1.a(this);
        }
    }

    protected void onStop()
    {
        super.onStop();
        r.b(this);
        if (ReleaseManager.f())
        {
            q.b();
            q.c();
        }
    }

    public void startActivity(Intent intent)
    {
        intent.putExtra("FROM", getClass().getSimpleName());
        super.startActivity(intent);
    }

    public void startActivityForResult(Intent intent, int i)
    {
        super.startActivityForResult(intent, i);
        u = true;
    }

    protected void u()
    {
        getSupportLoaderManager().initLoader(800, null, new android.support.v4.app.LoaderManager.LoaderCallbacks() {

            final SnapchatActivity a;

            public void a(Loader loader, User user)
            {
                a.p = user;
                a.a(user);
            }

            public Loader onCreateLoader(int i, Bundle bundle)
            {
                return new UserLoader(a);
            }

            public void onLoadFinished(Loader loader, Object obj)
            {
                a(loader, (User)obj);
            }

            public void onLoaderReset(Loader loader)
            {
            }

            
            {
                a = SnapchatActivity.this;
                super();
            }
        });
    }
}
