// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.field:
//            FieldUtils

public abstract class AbstractPartialFieldProperty
{

    protected AbstractPartialFieldProperty()
    {
    }

    public abstract DateTimeField a();

    public abstract ReadablePartial b();

    public abstract int c();

    public DateTimeFieldType d()
    {
        return a().a();
    }

    public String e()
    {
        return a().b();
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof AbstractPartialFieldProperty))
            {
                return false;
            }
            AbstractPartialFieldProperty abstractpartialfieldproperty = (AbstractPartialFieldProperty)obj;
            if (c() != abstractpartialfieldproperty.c() || d() != abstractpartialfieldproperty.d() || !FieldUtils.a(b().c(), abstractpartialfieldproperty.b().c()))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 13 * (13 * (247 + c()) + d().hashCode()) + b().c().hashCode();
    }

    public String toString()
    {
        return (new StringBuilder()).append("Property[").append(e()).append("]").toString();
    }
}
