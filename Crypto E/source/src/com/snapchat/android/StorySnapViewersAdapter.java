// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.snapchat.android.model.StorySnapNote;
import java.util.List;

public class StorySnapViewersAdapter extends ArrayAdapter
{
    class ViewHolder
    {

        TextView a;
        final StorySnapViewersAdapter b;

        ViewHolder()
        {
            b = StorySnapViewersAdapter.this;
            super();
        }
    }


    private List a;
    private Context b;

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ViewHolder viewholder;
        if (view == null)
        {
            view = ((LayoutInflater)b.getSystemService("layout_inflater")).inflate(0x7f04008d, viewgroup, false);
            ViewHolder viewholder1 = new ViewHolder();
            viewholder1.a = (TextView)view.findViewById(0x7f0a030d);
            view.setTag(viewholder1);
            viewholder = viewholder1;
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        viewholder.a.setText(((StorySnapNote)a.get(i)).b());
        return view;
    }
}
