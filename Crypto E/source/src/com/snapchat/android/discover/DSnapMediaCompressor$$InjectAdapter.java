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
//            DSnapMediaCompressor

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;

    public DSnapMediaCompressor a()
    {
        DSnapMediaCompressor dsnapmediacompressor = new DSnapMediaCompressor();
        a(dsnapmediacompressor);
        return dsnapmediacompressor;
    }

    public void a(DSnapMediaCompressor dsnapmediacompressor)
    {
        dsnapmediacompressor.a = (GsonWrapper)a.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.GsonWrapper", com/snapchat/android/discover/DSnapMediaCompressor, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((DSnapMediaCompressor)obj);
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
        super("com.snapchat.android.discover.DSnapMediaCompressor", "members/com.snapchat.android.discover.DSnapMediaCompressor", true, com/snapchat/android/discover/DSnapMediaCompressor);
    }
}
