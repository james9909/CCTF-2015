// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.api.SharedStorySearchTask;
import com.snapchat.android.util.ScExecutors;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesFragment

class a
    implements TextWatcher
{

    final StoriesFragment a;
    final StoriesFragment b;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        if (TextUtils.isEmpty(charsequence))
        {
            StoriesFragment.f(b).setFastScrollAlwaysVisible(true);
            StoriesFragment.f(b).setFastScrollEnabled(true);
            StoriesFragment.g(b).setVisibility(4);
        } else
        {
            (new SharedStorySearchTask(charsequence.toString(), a)).executeOnExecutor(ScExecutors.b, new String[0]);
            StoriesFragment.f(b).setFastScrollAlwaysVisible(false);
            StoriesFragment.f(b).setFastScrollEnabled(false);
            StoriesFragment.g(b).setVisibility(0);
        }
        b.q();
        b.w();
    }

    HeadersListView(StoriesFragment storiesfragment, StoriesFragment storiesfragment1)
    {
        b = storiesfragment;
        a = storiesfragment1;
        super();
    }
}
