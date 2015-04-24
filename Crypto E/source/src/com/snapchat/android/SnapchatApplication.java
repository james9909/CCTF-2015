// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.app.Application;
import android.content.Context;
import android.preference.PreferenceManager;
import android.support.multidex.MultiDex;
import com.snapchat.android.ads.AdManager;
import com.snapchat.android.analytics.framework.UniqueDeviceIdBuilder;
import com.snapchat.android.api.ScreenParameterProvider;
import com.snapchat.android.camera.transcoding.DeviceVideoEncodingResolutionSet;
import com.snapchat.android.discover.controller.DiscoverMediaManager;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.location.LocationProvider;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.cache.Storage;
import com.snapchat.android.util.crypto.SlightlySecurePreferences;
import com.snapchat.android.util.dagger.AndroidModule;
import com.snapchat.android.util.dagger.DiscoverModule;
import com.snapchat.android.util.debug.DebugCrashReporter;
import com.snapchat.android.util.debug.DeveloperSettings;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.debug.StrictModeHelper;
import dagger.ObjectGraph;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.snapchat.android:
//            ApplicationMemoryMonitor, Timber

public class SnapchatApplication extends Application
{
    public static interface Crashable
    {

        public abstract void a(Context context, Thread thread, Throwable throwable);
    }


    protected static boolean a = false;
    static List b = new LinkedList();
    private static SnapchatApplication m;
    SlightlySecurePreferences c;
    ReleaseManager d;
    StrictModeHelper e;
    AdManager f;
    DiscoverRepository g;
    DiscoverMediaManager h;
    ScreenParameterProvider i;
    DeviceVideoEncodingResolutionSet j;
    DeveloperSettings k;
    SnapchatServiceManager l;
    private ObjectGraph n;
    private final ApplicationMemoryMonitor o = new ApplicationMemoryMonitor();
    private DebugCrashReporter p;

    public SnapchatApplication()
    {
        p = new DebugCrashReporter();
    }

    public static void a(Crashable crashable)
    {
        b.add(new WeakReference(crashable));
    }

    public static boolean d()
    {
        return a;
    }

    public static SnapchatApplication e()
    {
        return m;
    }

    private void f()
    {
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler(Thread.getDefaultUncaughtExceptionHandler()) {

            final Thread.UncaughtExceptionHandler a;
            final SnapchatApplication b;

            public void uncaughtException(Thread thread, Throwable throwable)
            {
                Iterator iterator = SnapchatApplication.b.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    Crashable crashable = (Crashable)((WeakReference)iterator.next()).get();
                    if (crashable != null)
                    {
                        crashable.a(b, thread, throwable);
                    }
                } while (true);
                a.uncaughtException(thread, throwable);
            }

            
            {
                b = SnapchatApplication.this;
                a = uncaughtexceptionhandler;
                super();
            }
        });
    }

    private void g()
    {
        if (UserPrefs.aP() == null)
        {
            UserPrefs.a((new UniqueDeviceIdBuilder()).a(this));
        }
    }

    protected void a()
    {
        if (!d())
        {
            f();
        }
        try
        {
            Class.forName("android.os.AsyncTask");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            Timber.a("SnapchatApplication", classnotfoundexception);
        }
        e.a();
        Storage.a(getCacheDir(), getExternalCacheDir());
        g();
        (new Thread(new Runnable() {

            final SnapchatApplication a;

            public void run()
            {
                Thread.currentThread().setName("SlightlySecurePreferences.initialize");
                a.c.a();
            }

            
            {
                a = SnapchatApplication.this;
                super();
            }
        })).start();
        if (d.b() || d.c() && !d.h())
        {
            a(((Crashable) (p)));
        }
    }

    public void a(Object obj)
    {
        n.a(obj);
    }

    protected void attachBaseContext(Context context)
    {
        super.attachBaseContext(context);
        MultiDex.a(this);
    }

    protected List b()
    {
        Object aobj[] = new Object[2];
        aobj[0] = new AndroidModule(this);
        aobj[1] = new DiscoverModule();
        return Arrays.asList(aobj);
    }

    public ObjectGraph c()
    {
        return n;
    }

    public void onCreate()
    {
        super.onCreate();
        m = this;
        ReleaseManager.a(this);
        LocationProvider.a(this);
        n = ObjectGraph.a(b().toArray());
        n.a(this);
        g.a(this);
        f.a(this);
        h.a(this);
        i.a(this);
        j.a(this);
        o.a(this);
        k.a(PreferenceManager.getDefaultSharedPreferences(this));
        l.a(this);
        a();
    }

}
