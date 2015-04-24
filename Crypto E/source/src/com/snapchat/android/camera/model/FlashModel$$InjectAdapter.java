// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.model;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.camera.model:
//            FlashModel

public final class A extends Binding
    implements Provider
{

    public FlashModel a()
    {
        return new FlashModel();
    }

    public Object get()
    {
        return a();
    }

    public A()
    {
        super("com.snapchat.android.camera.model.FlashModel", "members/com.snapchat.android.camera.model.FlashModel", true, com/snapchat/android/camera/model/FlashModel);
    }
}
