// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import com.snapchat.android.ads.AdManager;
import com.snapchat.android.api.ScreenParameterProvider;
import com.snapchat.android.camera.transcoding.DeviceVideoEncodingResolutionSet;
import com.snapchat.android.discover.controller.DiscoverMediaManager;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import com.snapchat.android.service.SnapchatServiceManager;
import com.snapchat.android.util.crypto.SlightlySecurePreferences;
import com.snapchat.android.util.debug.DeveloperSettings;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.debug.StrictModeHelper;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android:
//            SnapchatApplication

public final class ingResolutionSet extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;
    private Binding c;
    private Binding d;
    private Binding e;
    private Binding f;
    private Binding g;
    private Binding h;
    private Binding i;
    private Binding j;

    public SnapchatApplication a()
    {
        SnapchatApplication snapchatapplication = new SnapchatApplication();
        a(snapchatapplication);
        return snapchatapplication;
    }

    public void a(SnapchatApplication snapchatapplication)
    {
        snapchatapplication.c = (SlightlySecurePreferences)a.get();
        snapchatapplication.d = (ReleaseManager)b.get();
        snapchatapplication.e = (StrictModeHelper)c.get();
        snapchatapplication.f = (AdManager)d.get();
        snapchatapplication.g = (DiscoverRepository)e.get();
        snapchatapplication.h = (DiscoverMediaManager)f.get();
        snapchatapplication.i = (ScreenParameterProvider)g.get();
        snapchatapplication.j = (DeviceVideoEncodingResolutionSet)h.get();
        snapchatapplication.k = (DeveloperSettings)i.get();
        snapchatapplication.l = (SnapchatServiceManager)j.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.crypto.SlightlySecurePreferences", com/snapchat/android/SnapchatApplication, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.util.debug.ReleaseManager", com/snapchat/android/SnapchatApplication, getClass().getClassLoader());
        c = linker.a("com.snapchat.android.util.debug.StrictModeHelper", com/snapchat/android/SnapchatApplication, getClass().getClassLoader());
        d = linker.a("com.snapchat.android.ads.AdManager", com/snapchat/android/SnapchatApplication, getClass().getClassLoader());
        e = linker.a("com.snapchat.android.discover.model.database.vtable.DiscoverRepository", com/snapchat/android/SnapchatApplication, getClass().getClassLoader());
        f = linker.a("com.snapchat.android.discover.controller.DiscoverMediaManager", com/snapchat/android/SnapchatApplication, getClass().getClassLoader());
        g = linker.a("com.snapchat.android.api.ScreenParameterProvider", com/snapchat/android/SnapchatApplication, getClass().getClassLoader());
        h = linker.a("com.snapchat.android.camera.transcoding.DeviceVideoEncodingResolutionSet", com/snapchat/android/SnapchatApplication, getClass().getClassLoader());
        i = linker.a("com.snapchat.android.util.debug.DeveloperSettings", com/snapchat/android/SnapchatApplication, getClass().getClassLoader());
        j = linker.a("com.snapchat.android.service.SnapchatServiceManager", com/snapchat/android/SnapchatApplication, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((SnapchatApplication)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
        set1.add(c);
        set1.add(d);
        set1.add(e);
        set1.add(f);
        set1.add(g);
        set1.add(h);
        set1.add(i);
        set1.add(j);
    }

    public Object get()
    {
        return a();
    }

    public ingResolutionSet()
    {
        super("com.snapchat.android.SnapchatApplication", "members/com.snapchat.android.SnapchatApplication", false, com/snapchat/android/SnapchatApplication);
    }
}
