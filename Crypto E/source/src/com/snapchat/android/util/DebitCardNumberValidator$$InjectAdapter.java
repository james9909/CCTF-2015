// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.util:
//            DebitCardNumberValidator

public final class  extends Binding
    implements Provider
{

    public DebitCardNumberValidator a()
    {
        return new DebitCardNumberValidator();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.util.DebitCardNumberValidator", "members/com.snapchat.android.util.DebitCardNumberValidator", false, com/snapchat/android/util/DebitCardNumberValidator);
    }
}
