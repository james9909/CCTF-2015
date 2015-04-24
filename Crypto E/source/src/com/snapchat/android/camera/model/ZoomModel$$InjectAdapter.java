// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.model;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.camera.model:
//            ZoomModel

public final class  extends Binding
    implements Provider
{

    public ZoomModel a()
    {
        return new ZoomModel();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.camera.model.ZoomModel", "members/com.snapchat.android.camera.model.ZoomModel", false, com/snapchat/android/camera/model/ZoomModel);
    }
}
