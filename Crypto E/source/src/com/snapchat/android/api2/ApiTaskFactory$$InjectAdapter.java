// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2:
//            ApiTaskFactory

public final class  extends Binding
    implements Provider
{

    public ApiTaskFactory a()
    {
        return new ApiTaskFactory();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.ApiTaskFactory", "members/com.snapchat.android.api2.ApiTaskFactory", false, com/snapchat/android/api2/ApiTaskFactory);
    }
}
