// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.deeplink;

import android.content.DialogInterface;

// Referenced classes of package com.snapchat.android.deeplink:
//            DeepLinkAddFriendDialog

class a
    implements android.content.tener
{

    final String a;
    final DeepLinkAddFriendDialog b;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        b.a(a);
        dialoginterface.cancel();
    }

    (DeepLinkAddFriendDialog deeplinkaddfrienddialog, String s)
    {
        b = deeplinkaddfrienddialog;
        a = s;
        super();
    }
}
