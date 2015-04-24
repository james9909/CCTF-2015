// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.view.View;
import android.widget.TextView;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            BlockedUsersAdapter

public static class k extends android.support.v7.widget.er.ViewHolder
{

    public TextView i;
    public View j;
    public View k;

    public void t()
    {
        j.setVisibility(8);
        k.setVisibility(0);
    }

    public void u()
    {
        j.setVisibility(0);
        k.setVisibility(8);
    }

    public (View view)
    {
        super(view);
        i = (TextView)view.findViewById(0x7f0a006a);
        j = view.findViewById(0x7f0a006b);
        k = view.findViewById(0x7f0a006c);
    }
}
