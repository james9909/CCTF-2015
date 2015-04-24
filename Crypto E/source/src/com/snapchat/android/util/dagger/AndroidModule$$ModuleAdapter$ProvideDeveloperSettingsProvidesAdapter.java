// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.dagger;

import com.snapchat.android.util.debug.DeveloperSettings;
import dagger.internal.ProvidesBinding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.util.dagger:
//            AndroidModule

public static final class c extends ProvidesBinding
    implements Provider
{

    private final AndroidModule c;

    public DeveloperSettings a()
    {
        return c.h();
    }

    public Object get()
    {
        return a();
    }

    public (AndroidModule androidmodule)
    {
        super("com.snapchat.android.util.debug.DeveloperSettings", true, "com.snapchat.android.util.dagger.AndroidModule", "provideDeveloperSettings");
        c = androidmodule;
        c(true);
    }
}
