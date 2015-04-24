// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.util.Iterator;

// Referenced classes of package com.snapchat.android.util:
//            ListViewAdapterList

class a
    implements Iterator
{

    final Iterator a;
    final ListViewAdapterList b;

    public boolean hasNext()
    {
        return a.hasNext();
    }

    public Object next()
    {
        return a.next();
    }

    public void remove()
    {
        b.a();
        a.remove();
    }

    (ListViewAdapterList listviewadapterlist, Iterator iterator)
    {
        b = listviewadapterlist;
        super();
        a = iterator;
    }
}
