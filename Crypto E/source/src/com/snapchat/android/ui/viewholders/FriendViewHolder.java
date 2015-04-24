// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.viewholders;

import android.view.View;
import android.widget.TextView;

public class FriendViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder
{

    public final TextView L;

    public FriendViewHolder(View view)
    {
        this(view, (TextView)view.findViewById(0x7f0a004c));
    }

    protected FriendViewHolder(View view, TextView textview)
    {
        super(view);
        L = textview;
    }

    public void a(String s)
    {
        L.setText(s);
    }

    public void b(int i)
    {
        L.setTextColor(i);
    }
}
