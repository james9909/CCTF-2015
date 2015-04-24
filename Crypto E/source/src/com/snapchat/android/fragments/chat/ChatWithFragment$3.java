// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.model.Friend;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatWithFragment, ChatFragment

class a
    implements android.widget.lickListener
{

    final ChatWithFragment a;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        ChatFragment.a(((endViewHolder)view.getTag()).b.a());
        ((LandingPageActivity)a.getActivity()).a(0, false);
        a.getActivity().onBackPressed();
    }

    endViewHolder(ChatWithFragment chatwithfragment)
    {
        a = chatwithfragment;
        super();
    }
}
