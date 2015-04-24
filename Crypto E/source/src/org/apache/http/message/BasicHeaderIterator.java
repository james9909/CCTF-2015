// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.message;

import java.util.NoSuchElementException;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.util.Args;

public class BasicHeaderIterator
    implements HeaderIterator
{

    protected final Header allHeaders[];
    protected int currentIndex;
    protected String headerName;

    public BasicHeaderIterator(Header aheader[], String s)
    {
        allHeaders = (Header[])Args.notNull(aheader, "Header array");
        headerName = s;
        currentIndex = findNext(-1);
    }

    protected boolean filterHeader(int i)
    {
        return headerName == null || headerName.equalsIgnoreCase(allHeaders[i].getName());
    }

    protected int findNext(int i)
    {
        if (i < -1)
        {
            return -1;
        }
        int j = -1 + allHeaders.length;
        boolean flag = false;
        int k;
        int l;
        for (k = i; !flag && k < j; k = l)
        {
            l = k + 1;
            flag = filterHeader(l);
        }

        if (!flag)
        {
            k = -1;
        }
        return k;
    }

    public boolean hasNext()
    {
        return currentIndex >= 0;
    }

    public final Object next()
    {
        return nextHeader();
    }

    public Header nextHeader()
    {
        int i = currentIndex;
        if (i < 0)
        {
            throw new NoSuchElementException("Iteration already finished.");
        } else
        {
            currentIndex = findNext(i);
            return allHeaders[i];
        }
    }

    public void remove()
    {
        throw new UnsupportedOperationException("Removing headers is not supported.");
    }
}
