// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.dev;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import android.support.v4.widget.DrawerLayout;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.snapchat.android.database.schema.Schema;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.database.vtable.DbVirtualTable;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.snapchat.android.dev:
//            DbBrowserAdapter, SimpleCursorLoader

public class DbBrowserActivity extends FragmentActivity
    implements android.support.v4.app.LoaderManager.LoaderCallbacks
{
    class DrawerListAdapter extends ArrayAdapter
    {

        final DbBrowserActivity a;
        private int b;

        public View getView(int j, View view, ViewGroup viewgroup)
        {
            if (view == null)
            {
                view = a.getLayoutInflater().inflate(b, viewgroup, false);
            }
            Object obj = getItem(j);
            TextView textview = (TextView)view.findViewById(0x7f0a0175);
            if (obj instanceof com.snapchat.android.database.table.DbTable.DatabaseTable)
            {
                textview.setText(((com.snapchat.android.database.table.DbTable.DatabaseTable)obj).name());
            } else
            if (obj instanceof com.snapchat.android.database.vtable.DbVirtualTable.DatabaseVirtualTable)
            {
                textview.setText(((com.snapchat.android.database.vtable.DbVirtualTable.DatabaseVirtualTable)obj).name());
                return view;
            }
            return view;
        }

        public DrawerListAdapter(Context context, int j, List list)
        {
            a = DbBrowserActivity.this;
            super(context, j, list);
            b = j;
        }
    }


    private DrawerLayout a;
    private ListView b;
    private ListView c;
    private ListView d;
    private DbBrowserAdapter e;
    private TextView f;
    private TextView g;
    private com.snapchat.android.database.table.DbTable.DatabaseTable h;
    private com.snapchat.android.database.vtable.DbVirtualTable.DatabaseVirtualTable i;

    public DbBrowserActivity()
    {
        h = com.snapchat.android.database.table.DbTable.DatabaseTable.v;
        i = null;
    }

    static ListView a(DbBrowserActivity dbbrowseractivity)
    {
        return dbbrowseractivity.b;
    }

    private void a(Cursor cursor)
    {
        if (cursor != null && cursor.getCount() > 0)
        {
            b.setBackgroundColor(0);
            b.setAlpha(1.0F);
            return;
        } else
        {
            b.setBackgroundColor(0xffff0000);
            ObjectAnimator objectanimator = ObjectAnimator.ofFloat(b, "alpha", new float[] {
                0.0F, 1.0F
            });
            objectanimator.setDuration(250L);
            objectanimator.setRepeatMode(2);
            objectanimator.setRepeatCount(1);
            objectanimator.start();
            return;
        }
    }

    private void a(com.snapchat.android.database.table.DbTable.DatabaseTable databasetable)
    {
        h = databasetable;
        i = null;
    }

    private void a(com.snapchat.android.database.vtable.DbVirtualTable.DatabaseVirtualTable databasevirtualtable)
    {
        h = null;
        i = databasevirtualtable;
    }

    static void a(DbBrowserActivity dbbrowseractivity, com.snapchat.android.database.table.DbTable.DatabaseTable databasetable)
    {
        dbbrowseractivity.a(databasetable);
    }

    static void a(DbBrowserActivity dbbrowseractivity, com.snapchat.android.database.vtable.DbVirtualTable.DatabaseVirtualTable databasevirtualtable)
    {
        dbbrowseractivity.a(databasevirtualtable);
    }

    private void a(Schema aschema[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Schema\n\n");
        int j = aschema.length;
        for (int k = 0; k < j; k++)
        {
            Schema schema = aschema[k];
            stringbuilder.append(schema.b());
            stringbuilder.append(" ");
            stringbuilder.append(schema.c());
            stringbuilder.append(" : ");
            stringbuilder.append(schema.a());
            stringbuilder.append("\n");
        }

        g.setText(stringbuilder.toString());
    }

    private Cursor b(Cursor cursor)
    {
        if (cursor != null) goto _L2; else goto _L1
_L1:
        cursor = null;
_L4:
        return cursor;
_L2:
        if (TextUtils.equals(cursor.getColumnName(0), "_id")) goto _L4; else goto _L3
_L3:
        String as[];
        MatrixCursor matrixcursor;
        as = new String[1 + cursor.getColumnCount()];
        as[0] = "_id";
        for (int j = 0; j < cursor.getColumnCount(); j++)
        {
            as[j + 1] = cursor.getColumnName(j);
        }

        matrixcursor = new MatrixCursor(as);
        if (!cursor.moveToFirst()) goto _L6; else goto _L5
_L5:
        int k = 0;
_L9:
        int l;
        Object aobj[] = new Object[as.length];
        l = k + 1;
        aobj[0] = Integer.valueOf(k);
        for (int i1 = 0; i1 < cursor.getColumnCount(); i1++)
        {
            aobj[i1 + 1] = cursor.getString(i1);
        }

        matrixcursor.addRow(aobj);
        if (cursor.moveToNext()) goto _L7; else goto _L6
_L6:
        return matrixcursor;
_L7:
        k = l;
        if (true) goto _L9; else goto _L8
_L8:
    }

    static DrawerLayout b(DbBrowserActivity dbbrowseractivity)
    {
        return dbbrowseractivity.a;
    }

    protected void a()
    {
        getSupportLoaderManager().initLoader(0, null, this);
    }

    public void a(Loader loader, Cursor cursor)
    {
        switch (loader.getId())
        {
        default:
            return;

        case 0: // '\0'
            a(cursor);
            break;
        }
        if (cursor == null) goto _L2; else goto _L1
_L1:
        int j = cursor.getCount();
        if (h == null) goto _L4; else goto _L3
_L3:
        f.setText((new StringBuilder()).append(h.name()).append(" (").append(j).append(")").toString());
        Cursor cursor1;
        DbBrowserAdapter dbbrowseradapter;
        boolean flag;
        boolean flag1;
        if (j == 0)
        {
            g.setVisibility(0);
            b.setVisibility(8);
            a(h.a().d());
        } else
        {
            g.setVisibility(8);
            b.setVisibility(0);
        }
_L2:
        cursor1 = b(cursor);
        dbbrowseradapter = e;
        flag = cursor1 instanceof MatrixCursor;
        flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        dbbrowseradapter.a(flag1);
        e.swapCursor(b(cursor1));
        return;
_L4:
        if (i != null)
        {
            f.setText((new StringBuilder()).append(i.name()).append(" (").append(j).append(")").toString());
            if (j == 0)
            {
                g.setVisibility(0);
                b.setVisibility(8);
                a(i.a().c());
            } else
            {
                g.setVisibility(8);
                b.setVisibility(0);
            }
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    protected void b()
    {
        getSupportLoaderManager().restartLoader(0, null, this);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f04003c);
        a = (DrawerLayout)findViewById(0x7f0a016a);
        b = (ListView)findViewById(0x7f0a016d);
        g = (TextView)findViewById(0x7f0a016c);
        e = new DbBrowserAdapter(this);
        b.setAdapter(e);
        c = (ListView)findViewById(0x7f0a0170);
        f = (TextView)findViewById(0x7f0a016b);
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final DbBrowserActivity a;

            public void onClick(View view)
            {
                DbBrowserActivity.a(a).smoothScrollToPosition(0);
            }

            
            {
                a = DbBrowserActivity.this;
                super();
            }
        });
        d = (ListView)findViewById(0x7f0a0173);
        DrawerListAdapter drawerlistadapter = new DrawerListAdapter(this, 0x7f04003e, Arrays.asList((Object[])com.snapchat.android.database.table.DbTable.DatabaseTable.values()));
        c.setAdapter(drawerlistadapter);
        c.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener(drawerlistadapter) {

            final DrawerListAdapter a;
            final DbBrowserActivity b;

            public void onItemClick(AdapterView adapterview, View view, int j, long l)
            {
                Object obj = a.getItem(j);
                if (obj instanceof com.snapchat.android.database.table.DbTable.DatabaseTable)
                {
                    com.snapchat.android.database.table.DbTable.DatabaseTable databasetable = (com.snapchat.android.database.table.DbTable.DatabaseTable)obj;
                    DbBrowserActivity.a(b, databasetable);
                    b.b();
                }
                DbBrowserActivity.b(b).closeDrawers();
            }

            
            {
                b = DbBrowserActivity.this;
                a = drawerlistadapter;
                super();
            }
        });
        DrawerListAdapter drawerlistadapter1 = new DrawerListAdapter(this, 0x7f04003e, Arrays.asList((Object[])com.snapchat.android.database.vtable.DbVirtualTable.DatabaseVirtualTable.values()));
        d.setAdapter(drawerlistadapter1);
        d.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener(drawerlistadapter1) {

            final DrawerListAdapter a;
            final DbBrowserActivity b;

            public void onItemClick(AdapterView adapterview, View view, int j, long l)
            {
                Object obj = a.getItem(j);
                if (obj instanceof com.snapchat.android.database.vtable.DbVirtualTable.DatabaseVirtualTable)
                {
                    com.snapchat.android.database.vtable.DbVirtualTable.DatabaseVirtualTable databasevirtualtable = (com.snapchat.android.database.vtable.DbVirtualTable.DatabaseVirtualTable)obj;
                    DbBrowserActivity.a(b, databasevirtualtable);
                    b.b();
                }
                DbBrowserActivity.b(b).closeDrawers();
            }

            
            {
                b = DbBrowserActivity.this;
                a = drawerlistadapter;
                super();
            }
        });
        a();
        a.openDrawer(3);
    }

    public Loader onCreateLoader(int j, Bundle bundle)
    {
        switch (j)
        {
        default:
            return null;

        case 0: // '\0'
            break;
        }
        if (h != null)
        {
            return new SimpleCursorLoader(this, h.a());
        } else
        {
            return new SimpleCursorLoader(this, i.a());
        }
    }

    public void onLoadFinished(Loader loader, Object obj)
    {
        a(loader, (Cursor)obj);
    }

    public void onLoaderReset(Loader loader)
    {
        loader.reset();
    }
}
