// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.widget.BaseAdapter;
import com.snapchat.android.util.threading.ThreadUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class ListViewAdapterList
    implements List
{
    class IteratorWrapper
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

        IteratorWrapper(Iterator iterator1)
        {
            b = ListViewAdapterList.this;
            super();
            a = iterator1;
        }
    }


    private final List a;
    private BaseAdapter b;

    public ListViewAdapterList()
    {
        this(null);
    }

    private ListViewAdapterList(List list)
    {
        if (list == null)
        {
            a = new ArrayList();
            return;
        } else
        {
            a = list;
            return;
        }
    }

    public static ListViewAdapterList a(List list)
    {
        return new ListViewAdapterList(list);
    }

    protected void a()
    {
        ThreadUtils.a();
        if (b != null)
        {
            b.notifyDataSetChanged();
        }
    }

    public void a(BaseAdapter baseadapter)
    {
        b = baseadapter;
    }

    public void add(int i, Object obj)
    {
        a();
        a.add(i, obj);
    }

    public boolean add(Object obj)
    {
        a();
        return a.add(obj);
    }

    public boolean addAll(int i, Collection collection)
    {
        a();
        return a.addAll(i, collection);
    }

    public boolean addAll(Collection collection)
    {
        a();
        return a.addAll(collection);
    }

    public void clear()
    {
        a();
        a.clear();
    }

    public boolean contains(Object obj)
    {
        return a.contains(obj);
    }

    public boolean containsAll(Collection collection)
    {
        return a.containsAll(collection);
    }

    public Object get(int i)
    {
        return a.get(i);
    }

    public int indexOf(Object obj)
    {
        return a.indexOf(obj);
    }

    public boolean isEmpty()
    {
        return a.isEmpty();
    }

    public Iterator iterator()
    {
        return new IteratorWrapper(a.iterator());
    }

    public int lastIndexOf(Object obj)
    {
        return a.lastIndexOf(obj);
    }

    public ListIterator listIterator()
    {
        a();
        return a.listIterator();
    }

    public ListIterator listIterator(int i)
    {
        a();
        return a.listIterator(i);
    }

    public Object remove(int i)
    {
        a();
        return a.remove(i);
    }

    public boolean remove(Object obj)
    {
        a();
        return a.remove(obj);
    }

    public boolean removeAll(Collection collection)
    {
        a();
        return a.removeAll(collection);
    }

    public boolean retainAll(Collection collection)
    {
        a();
        return a.retainAll(collection);
    }

    public Object set(int i, Object obj)
    {
        a();
        return a.set(i, obj);
    }

    public int size()
    {
        return a.size();
    }

    public List subList(int i, int j)
    {
        a();
        return a.subList(i, j);
    }

    public Object[] toArray()
    {
        return a.toArray();
    }

    public Object[] toArray(Object aobj[])
    {
        return a.toArray(aobj);
    }
}
