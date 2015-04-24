// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.support.v4.app.FragmentActivity;
import android.view.View;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements android.view.tener
{

    final ChatFragment a;

    public void onClick(View view)
    {
        a.getActivity().onBackPressed();
    }

    (ChatFragment chatfragment)
    {
        a = chatfragment;
        super();
    }
}
