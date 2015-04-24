// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.widget.AbsListView;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatWithFragment

class a
    implements android.widget.lListener
{

    final ChatWithFragment a;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        if (i != 0)
        {
            ViewUtils.a(a.getActivity(), ChatWithFragment.b(a));
        }
    }

    (ChatWithFragment chatwithfragment)
    {
        a = chatwithfragment;
        super();
    }
}
