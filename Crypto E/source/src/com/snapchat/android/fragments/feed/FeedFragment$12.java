// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Filter;
import android.widget.ListView;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedFragment, FeedAdapter

class a
    implements TextWatcher
{

    final FeedFragment a;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        ViewTreeObserver viewtreeobserver = FeedFragment.d(a).getViewTreeObserver();
        if (viewtreeobserver == null)
        {
            throw new NullPointerException();
        }
        viewtreeobserver.addOnGlobalLayoutListener(FeedFragment.q(a));
        FeedFragment.l(a).getFilter().filter(charsequence.toString().trim());
        if (TextUtils.isEmpty(charsequence))
        {
            FeedFragment.r(a).setVisibility(4);
            return;
        } else
        {
            FeedFragment.r(a).setVisibility(0);
            return;
        }
    }

    _cls9(FeedFragment feedfragment)
    {
        a = feedfragment;
        super();
    }
}
