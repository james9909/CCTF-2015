// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.builder;

import java.util.Collection;
import org.apache.commons.lang3.ClassUtils;

// Referenced classes of package org.apache.commons.lang3.builder:
//            ToStringStyle, ReflectionToStringBuilder

public class RecursiveToStringStyle extends ToStringStyle
{

    private static final long serialVersionUID = 1L;

    public RecursiveToStringStyle()
    {
    }

    protected boolean accept(Class class1)
    {
        return true;
    }

    public void appendDetail(StringBuffer stringbuffer, String s, Object obj)
    {
        if (!ClassUtils.isPrimitiveWrapper(obj.getClass()) && !java/lang/String.equals(obj.getClass()) && accept(obj.getClass()))
        {
            stringbuffer.append(ReflectionToStringBuilder.toString(obj, this));
            return;
        } else
        {
            super.appendDetail(stringbuffer, s, obj);
            return;
        }
    }

    protected void appendDetail(StringBuffer stringbuffer, String s, Collection collection)
    {
        appendClassName(stringbuffer, collection);
        appendIdentityHashCode(stringbuffer, collection);
        appendDetail(stringbuffer, s, collection.toArray());
    }
}
