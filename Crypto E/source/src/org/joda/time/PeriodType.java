// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package org.joda.time:
//            DurationFieldType

public class PeriodType
    implements Serializable
{

    static int a = 0;
    static int b = 1;
    static int c = 2;
    static int d = 3;
    static int e = 4;
    static int f = 5;
    static int g = 6;
    static int h = 7;
    private static final Map i = new HashMap(32);
    private static PeriodType j;
    private static PeriodType k;
    private static PeriodType l;
    private static PeriodType m;
    private static PeriodType n;
    private static PeriodType o;
    private static PeriodType p;
    private static PeriodType q;
    private static PeriodType r;
    private final String s;
    private final DurationFieldType t[];
    private final int u[];

    protected PeriodType(String s1, DurationFieldType adurationfieldtype[], int ai[])
    {
        s = s1;
        t = adurationfieldtype;
        u = ai;
    }

    public static PeriodType a()
    {
        PeriodType periodtype = j;
        if (periodtype == null)
        {
            DurationFieldType adurationfieldtype[] = new DurationFieldType[8];
            adurationfieldtype[0] = DurationFieldType.j();
            adurationfieldtype[1] = DurationFieldType.i();
            adurationfieldtype[2] = DurationFieldType.g();
            adurationfieldtype[3] = DurationFieldType.f();
            adurationfieldtype[4] = DurationFieldType.d();
            adurationfieldtype[5] = DurationFieldType.c();
            adurationfieldtype[6] = DurationFieldType.b();
            adurationfieldtype[7] = DurationFieldType.a();
            periodtype = new PeriodType("Standard", adurationfieldtype, new int[] {
                0, 1, 2, 3, 4, 5, 6, 7
            });
            j = periodtype;
        }
        return periodtype;
    }

    public static PeriodType b()
    {
        PeriodType periodtype = k;
        if (periodtype == null)
        {
            DurationFieldType adurationfieldtype[] = new DurationFieldType[4];
            adurationfieldtype[0] = DurationFieldType.d();
            adurationfieldtype[1] = DurationFieldType.c();
            adurationfieldtype[2] = DurationFieldType.b();
            adurationfieldtype[3] = DurationFieldType.a();
            periodtype = new PeriodType("Time", adurationfieldtype, new int[] {
                -1, -1, -1, -1, 0, 1, 2, 3
            });
            k = periodtype;
        }
        return periodtype;
    }

    public static PeriodType c()
    {
        PeriodType periodtype = l;
        if (periodtype == null)
        {
            DurationFieldType adurationfieldtype[] = new DurationFieldType[1];
            adurationfieldtype[0] = DurationFieldType.j();
            periodtype = new PeriodType("Years", adurationfieldtype, new int[] {
                0, -1, -1, -1, -1, -1, -1, -1
            });
            l = periodtype;
        }
        return periodtype;
    }

    public static PeriodType d()
    {
        PeriodType periodtype = m;
        if (periodtype == null)
        {
            DurationFieldType adurationfieldtype[] = new DurationFieldType[1];
            adurationfieldtype[0] = DurationFieldType.i();
            periodtype = new PeriodType("Months", adurationfieldtype, new int[] {
                -1, 0, -1, -1, -1, -1, -1, -1
            });
            m = periodtype;
        }
        return periodtype;
    }

    public static PeriodType e()
    {
        PeriodType periodtype = n;
        if (periodtype == null)
        {
            DurationFieldType adurationfieldtype[] = new DurationFieldType[1];
            adurationfieldtype[0] = DurationFieldType.g();
            periodtype = new PeriodType("Weeks", adurationfieldtype, new int[] {
                -1, -1, 0, -1, -1, -1, -1, -1
            });
            n = periodtype;
        }
        return periodtype;
    }

    public static PeriodType f()
    {
        PeriodType periodtype = o;
        if (periodtype == null)
        {
            DurationFieldType adurationfieldtype[] = new DurationFieldType[1];
            adurationfieldtype[0] = DurationFieldType.f();
            periodtype = new PeriodType("Days", adurationfieldtype, new int[] {
                -1, -1, -1, 0, -1, -1, -1, -1
            });
            o = periodtype;
        }
        return periodtype;
    }

    public static PeriodType g()
    {
        PeriodType periodtype = p;
        if (periodtype == null)
        {
            DurationFieldType adurationfieldtype[] = new DurationFieldType[1];
            adurationfieldtype[0] = DurationFieldType.d();
            periodtype = new PeriodType("Hours", adurationfieldtype, new int[] {
                -1, -1, -1, -1, 0, -1, -1, -1
            });
            p = periodtype;
        }
        return periodtype;
    }

    public static PeriodType h()
    {
        PeriodType periodtype = q;
        if (periodtype == null)
        {
            DurationFieldType adurationfieldtype[] = new DurationFieldType[1];
            adurationfieldtype[0] = DurationFieldType.c();
            periodtype = new PeriodType("Minutes", adurationfieldtype, new int[] {
                -1, -1, -1, -1, -1, 0, -1, -1
            });
            q = periodtype;
        }
        return periodtype;
    }

    public static PeriodType i()
    {
        PeriodType periodtype = r;
        if (periodtype == null)
        {
            DurationFieldType adurationfieldtype[] = new DurationFieldType[1];
            adurationfieldtype[0] = DurationFieldType.b();
            periodtype = new PeriodType("Seconds", adurationfieldtype, new int[] {
                -1, -1, -1, -1, -1, -1, 0, -1
            });
            r = periodtype;
        }
        return periodtype;
    }

    public DurationFieldType a(int i1)
    {
        return t[i1];
    }

    public boolean a(DurationFieldType durationfieldtype)
    {
        return b(durationfieldtype) >= 0;
    }

    public int b(DurationFieldType durationfieldtype)
    {
        int i1 = 0;
        for (int j1 = k(); i1 < j1; i1++)
        {
            if (t[i1] == durationfieldtype)
            {
                return i1;
            }
        }

        return -1;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof PeriodType))
        {
            return false;
        } else
        {
            PeriodType periodtype = (PeriodType)obj;
            return Arrays.equals(t, periodtype.t);
        }
    }

    public int hashCode()
    {
        int i1 = 0;
        int j1 = 0;
        for (; i1 < t.length; i1++)
        {
            j1 += t[i1].hashCode();
        }

        return j1;
    }

    public String j()
    {
        return s;
    }

    public int k()
    {
        return t.length;
    }

    public String toString()
    {
        return (new StringBuilder()).append("PeriodType[").append(j()).append("]").toString();
    }

}
