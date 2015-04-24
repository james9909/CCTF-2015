// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.captcha;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CaptchaAdapter extends BaseAdapter
    implements android.widget.AdapterView.OnItemClickListener
{
    public static interface CaptchaAdapterInterface
    {

        public abstract void a(int i);
    }

    class CaptchaListEntry
    {

        final CaptchaAdapter a;
        private boolean b;
        private Bitmap c;

        static Bitmap a(CaptchaListEntry captchalistentry)
        {
            return captchalistentry.c;
        }

        static boolean a(CaptchaListEntry captchalistentry, boolean flag)
        {
            captchalistentry.b = flag;
            return flag;
        }

        static boolean b(CaptchaListEntry captchalistentry)
        {
            return captchalistentry.b;
        }

        CaptchaListEntry(Bitmap bitmap)
        {
            a = CaptchaAdapter.this;
            super();
            c = bitmap;
        }
    }


    private Context a;
    private LayoutInflater b;
    private CaptchaAdapterInterface c;
    private List d;

    public CaptchaAdapter(Context context, List list, CaptchaAdapterInterface captchaadapterinterface)
    {
        if (context == null)
        {
            throw new NullPointerException();
        }
        if (list == null)
        {
            throw new NullPointerException();
        }
        if (list.size() != 9)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Wrong number of images: ").append(list.size()).toString());
        }
        a = context;
        b = (LayoutInflater)context.getSystemService("layout_inflater");
        c = captchaadapterinterface;
        d = new ArrayList(9);
        for (int i = 0; i < 9; i++)
        {
            d.add(new CaptchaListEntry((Bitmap)list.get(i)));
        }

    }

    private void a(View view, CaptchaListEntry captchalistentry)
    {
        if (CaptchaListEntry.b(captchalistentry))
        {
            view.setBackgroundColor(a.getResources().getColor(0x7f080005));
            return;
        } else
        {
            view.setBackgroundDrawable(null);
            return;
        }
    }

    private int b()
    {
        Iterator iterator = d.iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            int j;
            if (CaptchaListEntry.b((CaptchaListEntry)iterator.next()))
            {
                j = i + 1;
            } else
            {
                j = i;
            }
            i = j;
        }
        return i;
    }

    public List a()
    {
        ArrayList arraylist = new ArrayList(d.size());
        for (Iterator iterator = d.iterator(); iterator.hasNext(); arraylist.add(Boolean.valueOf(CaptchaListEntry.b((CaptchaListEntry)iterator.next())))) { }
        return arraylist;
    }

    public int getCount()
    {
        return d.size();
    }

    public Object getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = b.inflate(0x7f040011, viewgroup, false);
        }
        if (view == null)
        {
            throw new NullPointerException("Failed to inflate captcha_item");
        } else
        {
            CaptchaListEntry captchalistentry = (CaptchaListEntry)d.get(i);
            ((ImageView)view.findViewById(0x7f0a00a1)).setImageBitmap(CaptchaListEntry.a(captchalistentry));
            a(view, captchalistentry);
            return view;
        }
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        CaptchaListEntry captchalistentry = (CaptchaListEntry)d.get(i);
        if (captchalistentry != null)
        {
            boolean flag;
            if (!CaptchaListEntry.b(captchalistentry))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            CaptchaListEntry.a(captchalistentry, flag);
            a(view, captchalistentry);
            if (c != null)
            {
                c.a(b());
                return;
            }
        }
    }
}
