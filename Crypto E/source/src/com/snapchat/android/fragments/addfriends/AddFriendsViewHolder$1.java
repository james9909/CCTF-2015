// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.animation.Animator;
import android.view.View;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsViewHolder

class a
    implements android.animation.er
{

    final Runnable a;
    final AddFriendsViewHolder b;

    public void onAnimationCancel(Animator animator)
    {
        AddFriendsViewHolder.a(b).post(a);
    }

    public void onAnimationEnd(Animator animator)
    {
        AddFriendsViewHolder.a(b).post(a);
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    (AddFriendsViewHolder addfriendsviewholder, Runnable runnable)
    {
        b = addfriendsviewholder;
        a = runnable;
        super();
    }
}
