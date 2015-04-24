// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.system;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.util.system:
//            Clock

public final class  extends Binding
    implements Provider
{

    public Clock a()
    {
        return new Clock();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.util.system.Clock", "members/com.snapchat.android.util.system.Clock", false, com/snapchat/android/util/system/Clock);
    }
}
