// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Filter;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatWithFragment, ChatWithAdapter

class a
    implements TextWatcher
{

    final ChatWithFragment a;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        ChatWithFragment.c(a).getFilter().filter(charsequence.toString());
        if (TextUtils.isEmpty(charsequence))
        {
            ChatWithFragment.d(a).setFastScrollAlwaysVisible(true);
            ChatWithFragment.d(a).setFastScrollEnabled(true);
            ChatWithFragment.e(a).setVisibility(4);
            return;
        } else
        {
            ChatWithFragment.d(a).setFastScrollAlwaysVisible(false);
            ChatWithFragment.d(a).setFastScrollEnabled(false);
            ChatWithFragment.e(a).setVisibility(0);
            return;
        }
    }

    stHeadersListView(ChatWithFragment chatwithfragment)
    {
        a = chatwithfragment;
        super();
    }
}
