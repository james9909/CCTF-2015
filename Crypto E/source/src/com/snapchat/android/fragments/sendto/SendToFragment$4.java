// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.sendto;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Filter;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;

// Referenced classes of package com.snapchat.android.fragments.sendto:
//            SendToFragment, SendToAdapter

class a
    implements TextWatcher
{

    final SendToFragment a;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        SendToFragment.k(a).getFilter().filter(charsequence.toString());
        if (TextUtils.isEmpty(charsequence))
        {
            SendToFragment.l(a).setFastScrollAlwaysVisible(true);
            SendToFragment.l(a).setFastScrollEnabled(true);
            SendToFragment.m(a).setVisibility(4);
            return;
        } else
        {
            SendToFragment.l(a).setFastScrollAlwaysVisible(false);
            SendToFragment.l(a).setFastScrollEnabled(false);
            SendToFragment.m(a).setVisibility(0);
            return;
        }
    }

    stHeadersListView(SendToFragment sendtofragment)
    {
        a = sendtofragment;
        super();
    }
}
