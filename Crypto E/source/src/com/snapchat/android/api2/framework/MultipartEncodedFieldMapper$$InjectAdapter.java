// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.framework:
//            MultipartEncodedFieldMapper

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding supertype;

    public MultipartEncodedFieldMapper a()
    {
        MultipartEncodedFieldMapper multipartencodedfieldmapper = new MultipartEncodedFieldMapper();
        a(multipartencodedfieldmapper);
        return multipartencodedfieldmapper;
    }

    public void a(MultipartEncodedFieldMapper multipartencodedfieldmapper)
    {
        supertype.a(multipartencodedfieldmapper);
    }

    public void a(Linker linker)
    {
        supertype = linker.a("members/com.snapchat.android.api2.framework.AbstractFieldMapper", com/snapchat/android/api2/framework/MultipartEncodedFieldMapper, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((MultipartEncodedFieldMapper)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(supertype);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.framework.MultipartEncodedFieldMapper", "members/com.snapchat.android.api2.framework.MultipartEncodedFieldMapper", false, com/snapchat/android/api2/framework/MultipartEncodedFieldMapper);
    }
}
