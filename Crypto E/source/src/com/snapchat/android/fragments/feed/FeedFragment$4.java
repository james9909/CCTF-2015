// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import android.view.ViewTreeObserver;
import android.widget.ListView;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedFragment

class a
    implements android.view.r.OnGlobalLayoutListener
{

    final FeedFragment a;

    public void onGlobalLayout()
    {
        ViewTreeObserver viewtreeobserver = FeedFragment.d(a).getViewTreeObserver();
        if (viewtreeobserver == null)
        {
            throw new NullPointerException();
        }
        if (android.os.DK_INT >= 16)
        {
            viewtreeobserver.removeOnGlobalLayoutListener(this);
        } else
        {
            viewtreeobserver.removeGlobalOnLayoutListener(this);
        }
        FeedFragment.e(a);
    }

    r(FeedFragment feedfragment)
    {
        a = feedfragment;
        super();
    }
}
