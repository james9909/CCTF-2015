// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.builder;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package org.apache.commons.lang3.builder:
//            ToStringStyle, ToStringBuilder, Diff

public class DiffResult
    implements Iterable
{

    private static final String DIFFERS_STRING = "differs from";
    public static final String OBJECTS_SAME_STRING = "";
    private final List diffs;
    private final Object lhs;
    private final Object rhs;
    private final ToStringStyle style;

    DiffResult(Object obj, Object obj1, List list, ToStringStyle tostringstyle)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException("Left hand object cannot be null");
        }
        if (obj1 == null)
        {
            throw new IllegalArgumentException("Right hand object cannot be null");
        }
        if (list == null)
        {
            throw new IllegalArgumentException("List of differences cannot be null");
        }
        diffs = list;
        lhs = obj;
        rhs = obj1;
        if (tostringstyle == null)
        {
            style = ToStringStyle.DEFAULT_STYLE;
            return;
        } else
        {
            style = tostringstyle;
            return;
        }
    }

    public List getDiffs()
    {
        return Collections.unmodifiableList(diffs);
    }

    public int getNumberOfDiffs()
    {
        return diffs.size();
    }

    public ToStringStyle getToStringStyle()
    {
        return style;
    }

    public Iterator iterator()
    {
        return diffs.iterator();
    }

    public String toString()
    {
        return toString(style);
    }

    public String toString(ToStringStyle tostringstyle)
    {
        if (diffs.size() == 0)
        {
            return "";
        }
        ToStringBuilder tostringbuilder = new ToStringBuilder(lhs, tostringstyle);
        ToStringBuilder tostringbuilder1 = new ToStringBuilder(rhs, tostringstyle);
        Diff diff;
        for (Iterator iterator1 = diffs.iterator(); iterator1.hasNext(); tostringbuilder1.append(diff.getFieldName(), diff.getRight()))
        {
            diff = (Diff)iterator1.next();
            tostringbuilder.append(diff.getFieldName(), diff.getLeft());
        }

        Object aobj[] = new Object[3];
        aobj[0] = tostringbuilder.build();
        aobj[1] = "differs from";
        aobj[2] = tostringbuilder1.build();
        return String.format("%s %s %s", aobj);
    }
}
