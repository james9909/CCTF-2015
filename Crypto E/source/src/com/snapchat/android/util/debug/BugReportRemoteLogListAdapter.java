// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

public class BugReportRemoteLogListAdapter extends ArrayAdapter
{

    private Context a;
    private int b;
    private String c[];
    private int d;

    public BugReportRemoteLogListAdapter(Context context, int i, String as[])
    {
        super(context, i, as);
        a = context;
        b = i;
        c = as;
        d = (int)a.getResources().getDimension(0x7f090021);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1 = ((Activity)a).getLayoutInflater().inflate(b, viewgroup, false);
        TextView textview = (TextView)view1.findViewById(0x7f0a0080);
        textview.setText(c[i]);
        if (c[i].length() == 1)
        {
            textview.setPadding(d, 0, 0, 0);
        }
        return view1;
    }
}
