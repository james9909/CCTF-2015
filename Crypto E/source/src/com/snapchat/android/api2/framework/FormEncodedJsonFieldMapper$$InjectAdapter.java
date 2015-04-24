// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.util.GsonWrapper;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.framework:
//            FormEncodedJsonFieldMapper

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding gson;
    private Binding supertype;

    public FormEncodedJsonFieldMapper a()
    {
        FormEncodedJsonFieldMapper formencodedjsonfieldmapper = new FormEncodedJsonFieldMapper((GsonWrapper)gson.get());
        a(formencodedjsonfieldmapper);
        return formencodedjsonfieldmapper;
    }

    public void a(FormEncodedJsonFieldMapper formencodedjsonfieldmapper)
    {
        supertype.a(formencodedjsonfieldmapper);
    }

    public void a(Linker linker)
    {
        gson = linker.a("com.snapchat.android.util.GsonWrapper", com/snapchat/android/api2/framework/FormEncodedJsonFieldMapper, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.api2.framework.AbstractFieldMapper", com/snapchat/android/api2/framework/FormEncodedJsonFieldMapper, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((FormEncodedJsonFieldMapper)obj);
    }

    public void a(Set set, Set set1)
    {
        set.add(gson);
        set1.add(supertype);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.framework.FormEncodedJsonFieldMapper", "members/com.snapchat.android.api2.framework.FormEncodedJsonFieldMapper", false, com/snapchat/android/api2/framework/FormEncodedJsonFieldMapper);
    }
}
