// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.widget.CursorAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.snapchat.android.database.schema.HttpMetricSchema;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class HttpMetricsCursorAdapter extends CursorAdapter
{

    private LayoutInflater a;

    public HttpMetricsCursorAdapter(Context context)
    {
        super(context, null);
        a = (LayoutInflater)context.getSystemService("layout_inflater");
    }

    public void bindView(View view, Context context, Cursor cursor)
    {
        int i = cursor.getInt(HttpMetricSchema.i.b());
        boolean flag;
        long l;
        String s;
        long l1;
        String s1;
        TextView textview;
        int j;
        String s2;
        long l2;
        long l3;
        if (i >= 200 && i < 300)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l = cursor.getLong(HttpMetricSchema.b.b());
        s = (new SimpleDateFormat("[hh:mm:ss]")).format(new Date(l));
        ((TextView)view.findViewById(0x7f0a01fc)).setText(s);
        ((TextView)view.findViewById(0x7f0a01fb)).setText(cursor.getString(HttpMetricSchema.d.b()));
        l1 = cursor.getLong(HttpMetricSchema.g.b());
        ((TextView)view.findViewById(0x7f0a01fd)).setText((new StringBuilder()).append(l1).append(" ms").toString());
        s1 = cursor.getString(HttpMetricSchema.c.b());
        textview = (TextView)view.findViewById(0x7f0a01fa);
        textview.setText(s1);
        if (flag)
        {
            j = 0xff00bb00;
        } else
        {
            j = 0xffff0000;
        }
        textview.setBackgroundColor(j);
        s2 = cursor.getString(HttpMetricSchema.h.b());
        ((TextView)view.findViewById(0x7f0a01fe)).setText(s2);
        l2 = cursor.getLong(HttpMetricSchema.e.b());
        ((TextView)view.findViewById(0x7f0a01f8)).setText((new StringBuilder()).append(NumberFormat.getNumberInstance(Locale.US).format(l2)).append(" \u2191").toString());
        l3 = cursor.getLong(HttpMetricSchema.f.b());
        ((TextView)view.findViewById(0x7f0a01f9)).setText((new StringBuilder()).append(NumberFormat.getNumberInstance(Locale.US).format(l3)).append(" \u2193").toString());
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewgroup)
    {
        return a.inflate(0x7f040059, viewgroup, false);
    }
}
