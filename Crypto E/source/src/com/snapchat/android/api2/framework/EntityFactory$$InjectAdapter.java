// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.util.GsonWrapper;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.framework:
//            EntityFactory, FormEncodedJsonFieldMapper, MultipartEncodedFieldMapper

public final class  extends Binding
    implements Provider
{

    private Binding formEncodedJsonFieldMapper;
    private Binding gson;
    private Binding multipartEncodedFieldMapper;

    public EntityFactory a()
    {
        return new EntityFactory((FormEncodedJsonFieldMapper)formEncodedJsonFieldMapper.get(), (MultipartEncodedFieldMapper)multipartEncodedFieldMapper.get(), (GsonWrapper)gson.get());
    }

    public void a(Linker linker)
    {
        formEncodedJsonFieldMapper = linker.a("com.snapchat.android.api2.framework.FormEncodedJsonFieldMapper", com/snapchat/android/api2/framework/EntityFactory, getClass().getClassLoader());
        multipartEncodedFieldMapper = linker.a("com.snapchat.android.api2.framework.MultipartEncodedFieldMapper", com/snapchat/android/api2/framework/EntityFactory, getClass().getClassLoader());
        gson = linker.a("com.snapchat.android.util.GsonWrapper", com/snapchat/android/api2/framework/EntityFactory, getClass().getClassLoader());
    }

    public void a(Set set, Set set1)
    {
        set.add(formEncodedJsonFieldMapper);
        set.add(multipartEncodedFieldMapper);
        set.add(gson);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.framework.EntityFactory", "members/com.snapchat.android.api2.framework.EntityFactory", false, com/snapchat/android/api2/framework/EntityFactory);
    }
}
