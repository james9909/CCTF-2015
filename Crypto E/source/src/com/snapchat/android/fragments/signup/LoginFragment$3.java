// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;


// Referenced classes of package com.snapchat.android.fragments.signup:
//            LoginFragment

class a
    implements Runnable
{

    final String a;
    final LoginFragment b;

    public void run()
    {
        b.a(a);
    }

    (LoginFragment loginfragment, String s)
    {
        b = loginfragment;
        a = s;
        super();
    }
}
