// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.view.View;
import android.widget.AbsListView;
import android.widget.Button;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.database.schema.HttpMetricSchema;
import com.snapchat.android.database.table.HttpMetricsTable;

// Referenced classes of package com.snapchat.android:
//            HttpMetricsCursorAdapter

public class HttpMetricsActivity extends FragmentActivity
    implements android.support.v4.app.LoaderManager.LoaderCallbacks, android.view.View.OnClickListener
{

    private AbsListView a;
    private HttpMetricsCursorAdapter b;
    private Button c;
    private Button d;
    private Button e;
    private Button f;
    private Button g;
    private String h;

    public HttpMetricsActivity()
    {
        h = (new StringBuilder()).append(HttpMetricSchema.b.c()).append(" DESC").toString();
    }

    protected void a()
    {
        getSupportLoaderManager().initLoader(900, null, this);
    }

    public void a(Loader loader, Cursor cursor)
    {
        loader.getId();
        JVM INSTR tableswitch 900 900: default 24
    //                   900 25;
           goto _L1 _L2
_L1:
        return;
_L2:
        if (cursor != null)
        {
            b.swapCursor(cursor);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected void b()
    {
        getSupportLoaderManager().restartLoader(900, null, this);
    }

    public void onClick(View view)
    {
        if (view == d)
        {
            h = (new StringBuilder()).append(HttpMetricSchema.b.c()).append(" DESC").toString();
            b();
        } else
        {
            if (view == e)
            {
                h = (new StringBuilder()).append(HttpMetricSchema.g.c()).append(" DESC").toString();
                b();
                return;
            }
            if (view == f)
            {
                h = (new StringBuilder()).append(HttpMetricSchema.f.c()).append(" DESC").toString();
                b();
                return;
            }
            if (view == g)
            {
                h = (new StringBuilder()).append(HttpMetricSchema.e.c()).append(" DESC").toString();
                b();
                return;
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f040058);
        a = (AbsListView)findViewById(0x7f0a01f7);
        b = new HttpMetricsCursorAdapter(this);
        c = (Button)findViewById(0x7f0a01f6);
        c.setOnClickListener(new android.view.View.OnClickListener() {

            final HttpMetricsActivity a;

            public void onClick(View view)
            {
                HttpMetricsTable.a(a);
            }

            
            {
                a = HttpMetricsActivity.this;
                super();
            }
        });
        d = (Button)findViewById(0x7f0a01f2);
        d.setOnClickListener(this);
        e = (Button)findViewById(0x7f0a01f3);
        e.setOnClickListener(this);
        f = (Button)findViewById(0x7f0a01f5);
        f.setOnClickListener(this);
        g = (Button)findViewById(0x7f0a01f4);
        g.setOnClickListener(this);
        a.setAdapter(b);
        a();
    }

    public Loader onCreateLoader(int i, Bundle bundle)
    {
        switch (i)
        {
        default:
            return null;

        case 900: 
            return new CursorLoader(this, SnapchatProvider.a, HttpMetricsTable.a, null, null, h);
        }
    }

    public void onLoadFinished(Loader loader, Object obj)
    {
        a(loader, (Cursor)obj);
    }

    public void onLoaderReset(Loader loader)
    {
    }
}
