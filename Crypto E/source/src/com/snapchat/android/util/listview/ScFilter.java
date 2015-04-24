// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.listview;

import android.widget.Filter;
import com.snapchat.android.util.debug.ExceptionReporter;
import java.util.List;

public abstract class ScFilter extends Filter
{
    public static interface ScFilterInterface
    {

        public abstract void a(List list);
    }


    public final ExceptionReporter a;
    protected final ScFilterInterface b;

    public ScFilter(ExceptionReporter exceptionreporter, ScFilterInterface scfilterinterface)
    {
        a = exceptionreporter;
        b = scfilterinterface;
    }

    public abstract List a(String s);

    public void a(Exception exception)
    {
        try
        {
            a.b(exception);
            return;
        }
        catch (Exception exception1)
        {
            throw new Error(exception1);
        }
    }

    protected final android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
    {
        if (charsequence == null)
        {
            return null;
        }
        android.widget.Filter.FilterResults filterresults = new android.widget.Filter.FilterResults();
        try
        {
            filterresults.values = a(charsequence.toString());
        }
        catch (Exception exception)
        {
            a(exception);
            return filterresults;
        }
        return filterresults;
    }

    protected final void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
    {
        List list;
        if (filterresults == null)
        {
            list = null;
        } else
        {
            list = (List)filterresults.values;
        }
        b.a(list);
    }
}
