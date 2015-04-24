// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import com.snapchat.android.api2.ApiTaskFactory;
import com.snapchat.android.util.GsonWrapper;
import com.snapchat.android.util.debug.DeveloperSettings;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.util.crypto:
//            DeviceTokenManager, SlightlySecurePreferences

public final class  extends Binding
    implements Provider
{

    private Binding a;
    private Binding b;
    private Binding c;
    private Binding d;

    public DeviceTokenManager a()
    {
        return new DeviceTokenManager((SlightlySecurePreferences)a.get(), (GsonWrapper)b.get(), (ApiTaskFactory)c.get(), (DeveloperSettings)d.get());
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.crypto.SlightlySecurePreferences", com/snapchat/android/util/crypto/DeviceTokenManager, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.util.GsonWrapper", com/snapchat/android/util/crypto/DeviceTokenManager, getClass().getClassLoader());
        c = linker.a("com.snapchat.android.api2.ApiTaskFactory", com/snapchat/android/util/crypto/DeviceTokenManager, getClass().getClassLoader());
        d = linker.a("com.snapchat.android.util.debug.DeveloperSettings", com/snapchat/android/util/crypto/DeviceTokenManager, getClass().getClassLoader());
    }

    public void a(Set set, Set set1)
    {
        set.add(a);
        set.add(b);
        set.add(c);
        set.add(d);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.util.crypto.DeviceTokenManager", "members/com.snapchat.android.util.crypto.DeviceTokenManager", false, com/snapchat/android/util/crypto/DeviceTokenManager);
    }
}
