// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.view.View;
import com.snapchat.android.ui.ChatCameraButton;
import com.snapchat.android.ui.here.HereTooltip;
import com.snapchat.android.ui.here.StreamView;
import com.snapchat.android.util.ViewUtils;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class b
    implements android.view.Listener
{

    final boolean a;
    final boolean b;
    final ChatFragment c;

    public boolean onLongClick(View view)
    {
        if (ChatFragment.i(c).getIsEmoji() || ChatFragment.i(c).getCashtagDetected() || ChatFragment.i(c).getCashSwipeDetected())
        {
            return false;
        }
        if (a)
        {
            ViewUtils.a(c.getActivity(), ChatFragment.k(c));
            c.d.c();
            ChatFragment.n(c).b();
        } else
        if (b)
        {
            ChatFragment.n(c).a();
        } else
        {
            ChatFragment.v(c);
        }
        return true;
    }

    _cls9(ChatFragment chatfragment, boolean flag, boolean flag1)
    {
        c = chatfragment;
        a = flag;
        b = flag1;
        super();
    }
}
