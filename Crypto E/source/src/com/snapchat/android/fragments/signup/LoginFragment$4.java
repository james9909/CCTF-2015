// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.content.DialogInterface;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            LoginFragment

class a
    implements android.content.OnClickListener
{

    final LoginFragment a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
    }

    (LoginFragment loginfragment)
    {
        a = loginfragment;
        super();
    }
}
