// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.database.DataSetObserver;
import android.widget.BaseAdapter;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.ui:
//            ObservableAboveTheFoldListView

class <init> extends DataSetObserver
{

    final ObservableAboveTheFoldListView a;
    private BaseAdapter b;

    private Set a()
    {
        int i = b.getCount();
        HashSet hashset = new HashSet(i);
        for (int j = 0; j < i; j++)
        {
            Object obj = b.getItem(j);
            if (obj != null)
            {
                hashset.add(ObservableAboveTheFoldListView.a(a).a(obj));
            }
        }

        return hashset;
    }

    protected void a(BaseAdapter baseadapter)
    {
        if (b != null)
        {
            b.unregisterDataSetObserver(this);
        }
        b = baseadapter;
        b.registerDataSetObserver(this);
    }

    public void onChanged()
    {
        super.onChanged();
        if (b == null)
        {
            throw new NullPointerException("onChanged cannot be called without an adapter");
        } else
        {
            Set set = a();
            a.a.keySet().retainAll(set);
            return;
        }
    }

    private wInterface(ObservableAboveTheFoldListView observableabovethefoldlistview)
    {
        a = observableabovethefoldlistview;
        super();
    }

    a(ObservableAboveTheFoldListView observableabovethefoldlistview, a a1)
    {
        this(observableabovethefoldlistview);
    }
}
