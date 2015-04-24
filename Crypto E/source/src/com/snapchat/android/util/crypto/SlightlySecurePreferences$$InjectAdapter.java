// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.util.crypto:
//            SlightlySecurePreferences

public final class  extends Binding
    implements Provider
{

    public SlightlySecurePreferences a()
    {
        return new SlightlySecurePreferences();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.util.crypto.SlightlySecurePreferences", "members/com.snapchat.android.util.crypto.SlightlySecurePreferences", true, com/snapchat/android/util/crypto/SlightlySecurePreferences);
    }
}
