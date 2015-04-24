// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.database.DataSetObserver;

// Referenced classes of package com.snapchat.android.discover.ui:
//            ChannelGroupView

class a extends DataSetObserver
{

    final ChannelGroupView a;

    public void onChanged()
    {
        ChannelGroupView.a(a);
        a.requestLayout();
    }

    public void onInvalidated()
    {
        ChannelGroupView.a(a);
        a.requestLayout();
    }

    _cls9(ChannelGroupView channelgroupview)
    {
        a = channelgroupview;
        super();
    }
}
