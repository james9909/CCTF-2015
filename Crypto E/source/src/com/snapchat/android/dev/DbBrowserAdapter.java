// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.dev;

import android.content.Context;
import android.database.Cursor;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import android.widget.TextView;

public class DbBrowserAdapter extends CursorAdapter
{

    private LayoutInflater a;
    private boolean b;

    public DbBrowserAdapter(Context context)
    {
        super(context, null);
        b = false;
        a = (LayoutInflater)context.getSystemService("layout_inflater");
    }

    public void a(boolean flag)
    {
        b = flag;
    }

    public void bindView(View view, Context context, Cursor cursor)
    {
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder();
        TextView textview = (TextView)view.findViewById(0x7f0a0174);
        int i = 0;
        while (i < cursor.getColumnCount()) 
        {
            if (b || !TextUtils.equals(cursor.getColumnName(i), "_id"))
            {
                spannablestringbuilder.append("[");
                int j = spannablestringbuilder.length();
                spannablestringbuilder.append(cursor.getColumnName(i));
                spannablestringbuilder.setSpan(new ForegroundColorSpan(0xff0000ff), j, spannablestringbuilder.length(), 0);
                spannablestringbuilder.setSpan(new StyleSpan(1), j, spannablestringbuilder.length(), 0);
                spannablestringbuilder.append((new StringBuilder()).append(":").append(cursor.getString(i)).append("]").toString());
                if (i < -1 + cursor.getColumnCount())
                {
                    spannablestringbuilder.append("\n");
                }
            }
            i++;
        }
        float f;
        if (cursor.getPosition() % 2 == 0)
        {
            f = 0.8F;
        } else
        {
            f = 1.0F;
        }
        view.setAlpha(f);
        textview.setText(spannablestringbuilder);
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewgroup)
    {
        return a.inflate(0x7f04003d, viewgroup, false);
    }
}
