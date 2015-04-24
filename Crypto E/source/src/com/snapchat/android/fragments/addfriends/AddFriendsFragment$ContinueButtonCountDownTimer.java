// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.os.Handler;
import android.widget.Button;
import com.snapchat.android.util.system.time.BlockingCountDownTimer;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsFragment

class b extends BlockingCountDownTimer
{

    final AddFriendsFragment a;
    private int b;

    public void a()
    {
        if (!a.isAdded())
        {
            return;
        } else
        {
            b = -1 + b;
            a.u.setText((new StringBuilder()).append(a.getString(0x7f0c0179)).append(" ").append(b).toString());
            return;
        }
    }

    public void b()
    {
        if (!a.isAdded())
        {
            return;
        } else
        {
            a.u.setText(0x7f0c0179);
            a.u.setEnabled(true);
            return;
        }
    }

    public (AddFriendsFragment addfriendsfragment)
    {
        a = addfriendsfragment;
        super(3, 1000L, new Handler());
        addfriendsfragment.u.setEnabled(false);
        b = 3;
        addfriendsfragment.u.setText((new StringBuilder()).append(addfriendsfragment.getString(0x7f0c0179)).append(" ").append(b).toString());
    }
}
