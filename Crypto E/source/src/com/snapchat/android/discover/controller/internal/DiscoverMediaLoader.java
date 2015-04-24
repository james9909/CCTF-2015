// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal;

import android.content.Context;
import com.snapchat.android.discover.controller.DiscoverMediaCategory;

// Referenced classes of package com.snapchat.android.discover.controller.internal:
//            DiscoverUserState

public interface DiscoverMediaLoader
{

    public abstract void a();

    public abstract void a(Context context);

    public abstract void a(DiscoverUserState discoveruserstate);

    public abstract void a(String s);

    public abstract void b();

    public abstract void c();

    public abstract void d();

    public abstract DiscoverMediaCategory e();
}
