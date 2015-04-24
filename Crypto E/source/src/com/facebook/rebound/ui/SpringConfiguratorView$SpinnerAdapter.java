// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.rebound.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.facebook.rebound.ui:
//            SpringConfiguratorView, Util

class b extends BaseAdapter
{

    final SpringConfiguratorView a;
    private final Context b;
    private final List c = new ArrayList();

    public void a()
    {
        c.clear();
        notifyDataSetChanged();
    }

    public void a(String s)
    {
        c.add(s);
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return c.size();
    }

    public Object getItem(int i)
    {
        return c.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        TextView textview;
        if (view == null)
        {
            textview = new TextView(b);
            textview.setLayoutParams(new android.widget.rAdapter.b(-1, -1));
            int j = Util.a(12F, a.getResources());
            textview.setPadding(j, j, j, j);
            textview.setTextColor(SpringConfiguratorView.j(a));
        } else
        {
            textview = (TextView)view;
        }
        textview.setText((CharSequence)c.get(i));
        return textview;
    }

    public (SpringConfiguratorView springconfiguratorview, Context context)
    {
        a = springconfiguratorview;
        super();
        b = context;
    }
}
