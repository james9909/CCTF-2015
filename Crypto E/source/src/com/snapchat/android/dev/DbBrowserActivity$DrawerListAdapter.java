// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.dev;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.List;

// Referenced classes of package com.snapchat.android.dev:
//            DbBrowserActivity

class b extends ArrayAdapter
{

    final DbBrowserActivity a;
    private int b;

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = a.getLayoutInflater().inflate(b, viewgroup, false);
        }
        Object obj = getItem(i);
        TextView textview = (TextView)view.findViewById(0x7f0a0175);
        if (obj instanceof com.snapchat.android.database.table.)
        {
            textview.setText(((com.snapchat.android.database.table.)obj).());
        } else
        if (obj instanceof com.snapchat.android.database.vtable.)
        {
            textview.setText(((com.snapchat.android.database.vtable.)obj).name());
            return view;
        }
        return view;
    }

    public irtualTable(DbBrowserActivity dbbrowseractivity, Context context, int i, List list)
    {
        a = dbbrowseractivity;
        super(context, i, list);
        b = i;
    }
}
