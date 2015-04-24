// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.emilsjolander.components.stickylistheaders;

import android.view.View;

// Referenced classes of package com.emilsjolander.components.stickylistheaders:
//            StickyListHeadersListView

class this._cls0
    implements Listener
{

    final StickyListHeadersListView this$0;

    public void onHeaderClick(View view, int i, long l)
    {
        if (StickyListHeadersListView.access$000(StickyListHeadersListView.this) != null)
        {
            StickyListHeadersListView.access$000(StickyListHeadersListView.this).onHeaderClick(StickyListHeadersListView.this, view, i, l, false);
        }
    }

    HeaderClickListener()
    {
        this$0 = StickyListHeadersListView.this;
        super();
    }
}
