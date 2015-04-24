// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.dev;

import android.support.v4.widget.DrawerLayout;
import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.snapchat.android.dev:
//            DbBrowserActivity

class a
    implements android.widget.ickListener
{

    final awerListAdapter a;
    final DbBrowserActivity b;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Object obj = a.getItem(i);
        if (obj instanceof com.snapchat.android.database.table.e)
        {
            com.snapchat.android.database.table.e e = (com.snapchat.android.database.table.e)obj;
            DbBrowserActivity.a(b, e);
            b.b();
        }
        DbBrowserActivity.b(b).closeDrawers();
    }

    awerListAdapter(DbBrowserActivity dbbrowseractivity, awerListAdapter awerlistadapter)
    {
        b = dbbrowseractivity;
        a = awerlistadapter;
        super();
    }
}
