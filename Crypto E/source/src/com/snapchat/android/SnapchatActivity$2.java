// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.os.Bundle;
import android.support.v4.content.Loader;
import com.snapchat.android.model.User;

// Referenced classes of package com.snapchat.android:
//            SnapchatActivity, UserLoader

class a
    implements android.support.v4.app.rCallbacks
{

    final SnapchatActivity a;

    public void a(Loader loader, User user)
    {
        a.p = user;
        a.a(user);
    }

    public Loader onCreateLoader(int i, Bundle bundle)
    {
        return new UserLoader(a);
    }

    public void onLoadFinished(Loader loader, Object obj)
    {
        a(loader, (User)obj);
    }

    public void onLoaderReset(Loader loader)
    {
    }

    derCallbacks(SnapchatActivity snapchatactivity)
    {
        a = snapchatactivity;
        super();
    }
}
