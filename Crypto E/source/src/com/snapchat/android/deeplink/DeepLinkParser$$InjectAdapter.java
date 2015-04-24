// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.deeplink;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.deeplink:
//            DeepLinkParser

public final class A extends Binding
    implements Provider
{

    public DeepLinkParser a()
    {
        return new DeepLinkParser();
    }

    public Object get()
    {
        return a();
    }

    public A()
    {
        super("com.snapchat.android.deeplink.DeepLinkParser", "members/com.snapchat.android.deeplink.DeepLinkParser", false, com/snapchat/android/deeplink/DeepLinkParser);
    }
}
