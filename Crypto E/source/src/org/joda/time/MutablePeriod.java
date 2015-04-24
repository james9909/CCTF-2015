// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import org.joda.time.base.BasePeriod;

// Referenced classes of package org.joda.time:
//            ReadWritablePeriod

public class MutablePeriod extends BasePeriod
    implements Serializable, Cloneable, ReadWritablePeriod
{

    public MutablePeriod()
    {
        super(0L, null, null);
    }

    public Object clone()
    {
        Object obj;
        try
        {
            obj = super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new InternalError("Clone error");
        }
        return obj;
    }
}
