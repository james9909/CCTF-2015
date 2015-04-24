// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.Arrays;
import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;
import org.joda.time.IllegalFieldValueException;
import org.joda.time.IllegalInstantException;

public class DateTimeParserBucket
{
    static class SavedField
        implements Comparable
    {

        final DateTimeField a;
        final int b;
        final String c;
        final Locale d;

        public int a(SavedField savedfield)
        {
            DateTimeField datetimefield = savedfield.a;
            int l = DateTimeParserBucket.a(a.f(), datetimefield.f());
            if (l != 0)
            {
                return l;
            } else
            {
                return DateTimeParserBucket.a(a.e(), datetimefield.e());
            }
        }

        long a(long l, boolean flag)
        {
            long l1;
            if (c == null)
            {
                l1 = a.b(l, b);
            } else
            {
                l1 = a.a(l, c, d);
            }
            if (flag)
            {
                l1 = a.e(l1);
            }
            return l1;
        }

        public int compareTo(Object obj)
        {
            return a((SavedField)obj);
        }

        SavedField(DateTimeField datetimefield, int l)
        {
            a = datetimefield;
            b = l;
            c = null;
            d = null;
        }

        SavedField(DateTimeField datetimefield, String s, Locale locale)
        {
            a = datetimefield;
            b = 0;
            c = s;
            d = locale;
        }
    }

    class SavedState
    {

        final DateTimeZone a;
        final Integer b;
        final SavedField c[];
        final int d;
        final DateTimeParserBucket e;

        boolean a(DateTimeParserBucket datetimeparserbucket)
        {
            if (datetimeparserbucket != e)
            {
                return false;
            }
            DateTimeParserBucket.a(datetimeparserbucket, a);
            DateTimeParserBucket.a(datetimeparserbucket, b);
            DateTimeParserBucket.a(datetimeparserbucket, c);
            if (d < DateTimeParserBucket.d(datetimeparserbucket))
            {
                DateTimeParserBucket.a(datetimeparserbucket, true);
            }
            DateTimeParserBucket.a(datetimeparserbucket, d);
            return true;
        }

        SavedState()
        {
            e = DateTimeParserBucket.this;
            super();
            a = DateTimeParserBucket.a(DateTimeParserBucket.this);
            b = DateTimeParserBucket.b(DateTimeParserBucket.this);
            c = DateTimeParserBucket.c(DateTimeParserBucket.this);
            d = DateTimeParserBucket.d(DateTimeParserBucket.this);
        }
    }


    private final Chronology a;
    private final long b;
    private DateTimeZone c;
    private Integer d;
    private Locale e;
    private Integer f;
    private int g;
    private SavedField h[];
    private int i;
    private boolean j;
    private Object k;

    public DateTimeParserBucket(long l, Chronology chronology, Locale locale, Integer integer, int i1)
    {
        h = new SavedField[8];
        Chronology chronology1 = DateTimeUtils.a(chronology);
        b = l;
        c = chronology1.a();
        a = chronology1.b();
        if (locale == null)
        {
            locale = Locale.getDefault();
        }
        e = locale;
        f = integer;
        g = i1;
    }

    static int a(DurationField durationfield, DurationField durationfield1)
    {
        if (durationfield == null || !durationfield.b())
        {
            return durationfield1 != null && durationfield1.b() ? -1 : 0;
        }
        if (durationfield1 == null || !durationfield1.b())
        {
            return 1;
        } else
        {
            return -durationfield.compareTo(durationfield1);
        }
    }

    static int a(DateTimeParserBucket datetimeparserbucket, int l)
    {
        datetimeparserbucket.i = l;
        return l;
    }

    static Integer a(DateTimeParserBucket datetimeparserbucket, Integer integer)
    {
        datetimeparserbucket.d = integer;
        return integer;
    }

    static DateTimeZone a(DateTimeParserBucket datetimeparserbucket)
    {
        return datetimeparserbucket.c;
    }

    static DateTimeZone a(DateTimeParserBucket datetimeparserbucket, DateTimeZone datetimezone)
    {
        datetimeparserbucket.c = datetimezone;
        return datetimezone;
    }

    private void a(SavedField savedfield)
    {
        SavedField asavedfield[] = h;
        int l = i;
        SavedField asavedfield1[];
        if (l == asavedfield.length || j)
        {
            int i1;
            if (l == asavedfield.length)
            {
                i1 = l * 2;
            } else
            {
                i1 = asavedfield.length;
            }
            asavedfield1 = new SavedField[i1];
            System.arraycopy(asavedfield, 0, asavedfield1, 0, l);
            h = asavedfield1;
            j = false;
        } else
        {
            asavedfield1 = asavedfield;
        }
        k = null;
        asavedfield1[l] = savedfield;
        i = l + 1;
    }

    private static void a(SavedField asavedfield[], int l)
    {
        int i1 = 0;
        if (l <= 10) goto _L2; else goto _L1
_L1:
        Arrays.sort(asavedfield, 0, l);
_L6:
        return;
_L4:
        i1++;
_L2:
        if (i1 >= l)
        {
            continue; /* Loop/switch isn't completed */
        }
        int j1 = i1;
        while (j1 > 0 && asavedfield[j1 - 1].a(asavedfield[j1]) > 0) 
        {
            SavedField savedfield = asavedfield[j1];
            asavedfield[j1] = asavedfield[j1 - 1];
            asavedfield[j1 - 1] = savedfield;
            j1--;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
    }

    static boolean a(DateTimeParserBucket datetimeparserbucket, boolean flag)
    {
        datetimeparserbucket.j = flag;
        return flag;
    }

    static SavedField[] a(DateTimeParserBucket datetimeparserbucket, SavedField asavedfield[])
    {
        datetimeparserbucket.h = asavedfield;
        return asavedfield;
    }

    static Integer b(DateTimeParserBucket datetimeparserbucket)
    {
        return datetimeparserbucket.d;
    }

    static SavedField[] c(DateTimeParserBucket datetimeparserbucket)
    {
        return datetimeparserbucket.h;
    }

    static int d(DateTimeParserBucket datetimeparserbucket)
    {
        return datetimeparserbucket.i;
    }

    public long a(boolean flag, String s)
    {
        SavedField asavedfield[];
        int l;
        asavedfield = h;
        l = i;
        if (j)
        {
            asavedfield = (SavedField[])(SavedField[])h.clone();
            h = asavedfield;
            j = false;
        }
        a(asavedfield, l);
        if (l <= 0) goto _L2; else goto _L1
_L1:
        DurationField durationfield;
        DurationField durationfield1;
        DurationField durationfield2;
        durationfield = DurationFieldType.i().a(a);
        durationfield1 = DurationFieldType.f().a(a);
        durationfield2 = asavedfield[0].a.e();
        if (a(durationfield2, durationfield) < 0 || a(durationfield2, durationfield1) > 0) goto _L2; else goto _L3
_L3:
        long l3;
        a(DateTimeFieldType.s(), g);
        l3 = a(flag, s);
_L7:
        return l3;
_L2:
        long l1;
        int j1;
        l1 = b;
        int i1 = 0;
        while (i1 < l) 
        {
            SavedField savedfield;
            boolean flag1;
            long l2;
            try
            {
                l1 = asavedfield[i1].a(l1, flag);
            }
            catch (IllegalFieldValueException illegalfieldvalueexception)
            {
                if (s != null)
                {
                    illegalfieldvalueexception.a((new StringBuilder()).append("Cannot parse \"").append(s).append('"').toString());
                }
                throw illegalfieldvalueexception;
            }
            i1++;
        }
          goto _L4
_L5:
        if (j1 >= l)
        {
            break MISSING_BLOCK_LABEL_254;
        }
        savedfield = asavedfield[j1];
        if (j1 == l - 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        l2 = savedfield.a(l1, flag1);
        l1 = l2;
        j1++;
          goto _L5
_L10:
        l3 = l1;
        if (d != null)
        {
            return l3 - (long)d.intValue();
        }
        if (c == null) goto _L7; else goto _L6
_L6:
        int k1;
        k1 = c.c(l3);
        l3 -= k1;
        if (k1 == c.b(l3)) goto _L7; else goto _L8
_L8:
        String s1 = (new StringBuilder()).append("Illegal instant due to time zone offset transition (").append(c).append(')').toString();
        if (s != null)
        {
            s1 = (new StringBuilder()).append("Cannot parse \"").append(s).append("\": ").append(s1).toString();
        }
        throw new IllegalInstantException(s1);
_L4:
        if (!flag) goto _L10; else goto _L9
_L9:
        j1 = 0;
          goto _L5
    }

    public Chronology a()
    {
        return a;
    }

    public void a(Integer integer)
    {
        k = null;
        d = integer;
    }

    public void a(DateTimeField datetimefield, int l)
    {
        a(new SavedField(datetimefield, l));
    }

    public void a(DateTimeFieldType datetimefieldtype, int l)
    {
        a(new SavedField(datetimefieldtype.a(a), l));
    }

    public void a(DateTimeFieldType datetimefieldtype, String s, Locale locale)
    {
        a(new SavedField(datetimefieldtype.a(a), s, locale));
    }

    public void a(DateTimeZone datetimezone)
    {
        k = null;
        c = datetimezone;
    }

    public boolean a(Object obj)
    {
        if ((obj instanceof SavedState) && ((SavedState)obj).a(this))
        {
            k = obj;
            return true;
        } else
        {
            return false;
        }
    }

    public Locale b()
    {
        return e;
    }

    public DateTimeZone c()
    {
        return c;
    }

    public Integer d()
    {
        return d;
    }

    public Integer e()
    {
        return f;
    }

    public Object f()
    {
        if (k == null)
        {
            k = new SavedState();
        }
        return k;
    }
}
