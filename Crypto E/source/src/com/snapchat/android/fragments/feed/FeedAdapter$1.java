// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import android.animation.Animator;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedAdapter

class a
    implements android.animation.torListener
{

    final edViewHolder a;
    final FeedAdapter b;

    public void onAnimationCancel(Animator animator)
    {
    }

    public void onAnimationEnd(Animator animator)
    {
        a.b();
    }

    public void onAnimationRepeat(Animator animator)
    {
    }

    public void onAnimationStart(Animator animator)
    {
    }

    edViewHolder(FeedAdapter feedadapter, edViewHolder edviewholder)
    {
        b = feedadapter;
        a = edviewholder;
        super();
    }
}
