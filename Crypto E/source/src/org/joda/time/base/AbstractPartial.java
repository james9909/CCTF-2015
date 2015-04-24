// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.base;

import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.ReadablePartial;
import org.joda.time.field.FieldUtils;

public abstract class AbstractPartial
    implements Comparable, ReadablePartial
{

    public AbstractPartial()
    {
    }

    public int a(DateTimeFieldType datetimefieldtype)
    {
        return a(d(datetimefieldtype));
    }

    public int a(ReadablePartial readablepartial)
    {
        if (this != readablepartial)
        {
            if (a() != readablepartial.a())
            {
                throw new ClassCastException("ReadablePartial objects must have matching field types");
            }
            int i = a();
            for (int j = 0; j < i; j++)
            {
                if (b(j) != readablepartial.b(j))
                {
                    throw new ClassCastException("ReadablePartial objects must have matching field types");
                }
            }

            int k = a();
            int l = 0;
            while (l < k) 
            {
                if (a(l) > readablepartial.a(l))
                {
                    return 1;
                }
                if (a(l) < readablepartial.a(l))
                {
                    return -1;
                }
                l++;
            }
        }
        return 0;
    }

    public abstract DateTimeField a(int i, Chronology chronology);

    public DateTimeFieldType b(int i)
    {
        return a(i, c()).a();
    }

    public boolean b(DateTimeFieldType datetimefieldtype)
    {
        return c(datetimefieldtype) != -1;
    }

    public int c(DateTimeFieldType datetimefieldtype)
    {
        int i = 0;
        for (int j = a(); i < j; i++)
        {
            if (b(i) == datetimefieldtype)
            {
                return i;
            }
        }

        return -1;
    }

    public DateTimeField c(int i)
    {
        return a(i, c());
    }

    public int compareTo(Object obj)
    {
        return a((ReadablePartial)obj);
    }

    protected int d(DateTimeFieldType datetimefieldtype)
    {
        int i = c(datetimefieldtype);
        if (i == -1)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Field '").append(datetimefieldtype).append("' is not supported").toString());
        } else
        {
            return i;
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        boolean flag1 = true;
_L4:
        return flag1;
_L2:
        boolean flag;
        flag = obj instanceof ReadablePartial;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        ReadablePartial readablepartial;
        int i;
        int j;
        readablepartial = (ReadablePartial)obj;
        i = a();
        j = readablepartial.a();
        flag1 = false;
        if (i != j) goto _L4; else goto _L5
_L5:
        int k;
        int l;
        k = a();
        l = 0;
_L8:
        int i1;
        int j1;
        if (l >= k)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        i1 = a(l);
        j1 = readablepartial.a(l);
        flag1 = false;
        if (i1 != j1) goto _L4; else goto _L6
_L6:
        DateTimeFieldType datetimefieldtype;
        DateTimeFieldType datetimefieldtype1;
        datetimefieldtype = b(l);
        datetimefieldtype1 = readablepartial.b(l);
        flag1 = false;
        if (datetimefieldtype != datetimefieldtype1) goto _L4; else goto _L7
_L7:
        l++;
          goto _L8
        return FieldUtils.a(c(), readablepartial.c());
    }

    public int hashCode()
    {
        int i = 157;
        int j = 0;
        for (int k = a(); j < k; j++)
        {
            i = 23 * (i * 23 + a(j)) + b(j).hashCode();
        }

        return i + c().hashCode();
    }
}
