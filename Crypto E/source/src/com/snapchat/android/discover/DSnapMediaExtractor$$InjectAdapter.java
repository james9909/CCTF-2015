// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover;

import com.snapchat.android.util.GsonWrapper;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.discover:
//            DSnapMediaExtractor

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;

    public DSnapMediaExtractor a()
    {
        DSnapMediaExtractor dsnapmediaextractor = new DSnapMediaExtractor();
        a(dsnapmediaextractor);
        return dsnapmediaextractor;
    }

    public void a(DSnapMediaExtractor dsnapmediaextractor)
    {
        dsnapmediaextractor.a = (GsonWrapper)a.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.GsonWrapper", com/snapchat/android/discover/DSnapMediaExtractor, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((DSnapMediaExtractor)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.discover.DSnapMediaExtractor", "members/com.snapchat.android.discover.DSnapMediaExtractor", true, com/snapchat/android/discover/DSnapMediaExtractor);
    }
}
