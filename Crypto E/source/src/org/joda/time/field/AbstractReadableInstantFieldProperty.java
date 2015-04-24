// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.field;

import java.io.Serializable;
import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;

// Referenced classes of package org.joda.time.field:
//            FieldUtils

public abstract class AbstractReadableInstantFieldProperty
    implements Serializable
{

    public AbstractReadableInstantFieldProperty()
    {
    }

    public String a(Locale locale)
    {
        return a().a(b(), locale);
    }

    public abstract DateTimeField a();

    public abstract long b();

    public String b(Locale locale)
    {
        return a().b(b(), locale);
    }

    public int c(Locale locale)
    {
        return a().a(locale);
    }

    public Chronology c()
    {
        throw new UnsupportedOperationException("The method getChronology() was added in v1.4 and needs to be implemented by subclasses of AbstractReadableInstantFieldProperty");
    }

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
            if (!(obj instanceof AbstractReadableInstantFieldProperty))
            {
                return false;
            }
            AbstractReadableInstantFieldProperty abstractreadableinstantfieldproperty = (AbstractReadableInstantFieldProperty)obj;
            if (f() != abstractreadableinstantfieldproperty.f() || !d().equals(abstractreadableinstantfieldproperty.d()) || !FieldUtils.a(c(), abstractreadableinstantfieldproperty.c()))
            {
                return false;
            }
        }
        return true;
    }

    public int f()
    {
        return a().a(b());
    }

    public int g()
    {
        return a().h();
    }

    public int h()
    {
        return a().i();
    }

    public int hashCode()
    {
        return 17 * f() + d().hashCode() + c().hashCode();
    }

    public String toString()
    {
        return (new StringBuilder()).append("Property[").append(e()).append("]").toString();
    }
}
