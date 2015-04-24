// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import java.util.Comparator;
import org.joda.time.convert.ConverterManager;
import org.joda.time.convert.InstantConverter;

// Referenced classes of package org.joda.time:
//            DateTimeFieldType, Chronology, DateTimeField

public class DateTimeComparator
    implements Serializable, Comparator
{

    private static final DateTimeComparator a = new DateTimeComparator(null, null);
    private static final DateTimeComparator b = new DateTimeComparator(DateTimeFieldType.n(), null);
    private static final DateTimeComparator c = new DateTimeComparator(null, DateTimeFieldType.n());
    private final DateTimeFieldType d;
    private final DateTimeFieldType e;

    protected DateTimeComparator(DateTimeFieldType datetimefieldtype, DateTimeFieldType datetimefieldtype1)
    {
        d = datetimefieldtype;
        e = datetimefieldtype1;
    }

    public DateTimeFieldType a()
    {
        return d;
    }

    public DateTimeFieldType b()
    {
        return e;
    }

    public int compare(Object obj, Object obj1)
    {
        InstantConverter instantconverter = ConverterManager.a().a(obj);
        Chronology chronology = instantconverter.b(obj, (Chronology)null);
        long l = instantconverter.a(obj, chronology);
        InstantConverter instantconverter1 = ConverterManager.a().a(obj1);
        Chronology chronology1 = instantconverter1.b(obj1, (Chronology)null);
        long l1 = instantconverter1.a(obj1, chronology1);
        if (d != null)
        {
            l = d.a(chronology).e(l);
            l1 = d.a(chronology1).e(l1);
        }
        if (e != null)
        {
            l = e.a(chronology).j(l);
            l1 = e.a(chronology1).j(l1);
        }
        if (l < l1)
        {
            return -1;
        }
        return l <= l1 ? 0 : 1;
    }

    public boolean equals(Object obj)
    {
        boolean flag1;
label0:
        {
            boolean flag = obj instanceof DateTimeComparator;
            flag1 = false;
            if (!flag)
            {
                break label0;
            }
            DateTimeComparator datetimecomparator = (DateTimeComparator)obj;
            if (d != datetimecomparator.a())
            {
                DateTimeFieldType datetimefieldtype1 = d;
                flag1 = false;
                if (datetimefieldtype1 == null)
                {
                    break label0;
                }
                boolean flag3 = d.equals(datetimecomparator.a());
                flag1 = false;
                if (!flag3)
                {
                    break label0;
                }
            }
            if (e != datetimecomparator.b())
            {
                DateTimeFieldType datetimefieldtype = e;
                flag1 = false;
                if (datetimefieldtype == null)
                {
                    break label0;
                }
                boolean flag2 = e.equals(datetimecomparator.b());
                flag1 = false;
                if (!flag2)
                {
                    break label0;
                }
            }
            flag1 = true;
        }
        return flag1;
    }

    public int hashCode()
    {
        int i;
        DateTimeFieldType datetimefieldtype;
        int j;
        if (d == null)
        {
            i = 0;
        } else
        {
            i = d.hashCode();
        }
        datetimefieldtype = e;
        j = 0;
        if (datetimefieldtype != null)
        {
            j = e.hashCode();
        }
        return i + j * 123;
    }

    public String toString()
    {
        if (d == e)
        {
            StringBuilder stringbuilder2 = (new StringBuilder()).append("DateTimeComparator[");
            String s2;
            if (d == null)
            {
                s2 = "";
            } else
            {
                s2 = d.x();
            }
            return stringbuilder2.append(s2).append("]").toString();
        }
        StringBuilder stringbuilder = (new StringBuilder()).append("DateTimeComparator[");
        String s;
        StringBuilder stringbuilder1;
        String s1;
        if (d == null)
        {
            s = "";
        } else
        {
            s = d.x();
        }
        stringbuilder1 = stringbuilder.append(s).append("-");
        if (e == null)
        {
            s1 = "";
        } else
        {
            s1 = e.x();
        }
        return stringbuilder1.append(s1).append("]").toString();
    }

}
