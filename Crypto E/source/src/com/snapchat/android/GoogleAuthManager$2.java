// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.Context;
import com.google.android.gms.auth.GoogleAuthUtil;
import java.util.concurrent.Callable;

// Referenced classes of package com.snapchat.android:
//            GoogleAuthManager

class b
    implements Callable
{

    final Context a;
    final String b;
    final GoogleAuthManager c;

    public String a()
    {
        return GoogleAuthUtil.getToken(a, b, "audience:server:client_id:694893979329-l59f3phl42et9clpoo296d8raqoljl6p.apps.googleusercontent.com");
    }

    public Object call()
    {
        return a();
    }

    l(GoogleAuthManager googleauthmanager, Context context, String s)
    {
        c = googleauthmanager;
        a = context;
        b = s;
        super();
    }
}
