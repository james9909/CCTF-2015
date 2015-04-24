// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import org.joda.time.DurationFieldType;
import org.joda.time.PeriodType;
import org.joda.time.ReadablePeriod;

// Referenced classes of package org.joda.time.format:
//            PeriodFormatter, PeriodParser, PeriodPrinter, FormatUtils

public class PeriodFormatterBuilder
{
    static class Composite
        implements PeriodParser, PeriodPrinter
    {

        private final PeriodPrinter a[];
        private final PeriodParser b[];

        private void a(List list, List list1, List list2)
        {
            int k = list.size();
            int l = 0;
            while (l < k) 
            {
                Object obj = list.get(l);
                Object obj1;
                if (obj instanceof PeriodPrinter)
                {
                    if (obj instanceof Composite)
                    {
                        a(list1, ((Object []) (((Composite)obj).a)));
                    } else
                    {
                        list1.add(obj);
                    }
                }
                obj1 = list.get(l + 1);
                if (obj1 instanceof PeriodParser)
                {
                    if (obj1 instanceof Composite)
                    {
                        a(list2, ((Object []) (((Composite)obj1).b)));
                    } else
                    {
                        list2.add(obj1);
                    }
                }
                l += 2;
            }
        }

        private void a(List list, Object aobj[])
        {
            if (aobj != null)
            {
                for (int k = 0; k < aobj.length; k++)
                {
                    list.add(aobj[k]);
                }

            }
        }

        public int a(ReadablePeriod readableperiod, int k, Locale locale)
        {
            int l = 0;
            PeriodPrinter aperiodprinter[] = a;
            for (int i1 = aperiodprinter.length; l < k && --i1 >= 0; l += aperiodprinter[i1].a(readableperiod, 0x7fffffff, locale)) { }
            return l;
        }

        public int a(ReadablePeriod readableperiod, Locale locale)
        {
            int k = 0;
            PeriodPrinter aperiodprinter[] = a;
            for (int l = aperiodprinter.length; --l >= 0;)
            {
                k += aperiodprinter[l].a(readableperiod, locale);
            }

            return k;
        }

        public void a(StringBuffer stringbuffer, ReadablePeriod readableperiod, Locale locale)
        {
            PeriodPrinter aperiodprinter[] = a;
            int k = aperiodprinter.length;
            for (int l = 0; l < k; l++)
            {
                aperiodprinter[l].a(stringbuffer, readableperiod, locale);
            }

        }

        Composite(List list)
        {
            ArrayList arraylist = new ArrayList();
            ArrayList arraylist1 = new ArrayList();
            a(list, arraylist, arraylist1);
            if (arraylist.size() <= 0)
            {
                a = null;
            } else
            {
                a = (PeriodPrinter[])arraylist.toArray(new PeriodPrinter[arraylist.size()]);
            }
            if (arraylist1.size() <= 0)
            {
                b = null;
                return;
            } else
            {
                b = (PeriodParser[])arraylist1.toArray(new PeriodParser[arraylist1.size()]);
                return;
            }
        }
    }

    static class CompositeAffix
        implements PeriodFieldAffix
    {

        private final PeriodFieldAffix a;
        private final PeriodFieldAffix b;

        public int a(int k)
        {
            return a.a(k) + b.a(k);
        }

        public void a(StringBuffer stringbuffer, int k)
        {
            a.a(stringbuffer, k);
            b.a(stringbuffer, k);
        }

        CompositeAffix(PeriodFieldAffix periodfieldaffix, PeriodFieldAffix periodfieldaffix1)
        {
            a = periodfieldaffix;
            b = periodfieldaffix1;
        }
    }

    static class FieldFormatter
        implements PeriodParser, PeriodPrinter
    {

        private final int a;
        private final int b;
        private final int c;
        private final boolean d;
        private final int e;
        private final FieldFormatter f[];
        private final PeriodFieldAffix g;
        private final PeriodFieldAffix h;

        int a()
        {
            return e;
        }

        public int a(ReadablePeriod readableperiod, int k, Locale locale)
        {
            while (k <= 0 || b != 4 && a(readableperiod) == 0x7fffffffffffffffL) 
            {
                return 0;
            }
            return 1;
        }

        public int a(ReadablePeriod readableperiod, Locale locale)
        {
            long l = a(readableperiod);
            int k;
            if (l == 0x7fffffffffffffffL)
            {
                k = 0;
            } else
            {
                k = Math.max(FormatUtils.a(l), a);
                if (e >= 8)
                {
                    int i1;
                    int j1;
                    if (l < 0L)
                    {
                        j1 = Math.max(k, 5);
                    } else
                    {
                        j1 = Math.max(k, 4);
                    }
                    k = j1 + 1;
                    if (e == 9 && Math.abs(l) % 1000L == 0L)
                    {
                        k -= 4;
                    }
                    l /= 1000L;
                }
                i1 = (int)l;
                if (g != null)
                {
                    k += g.a(i1);
                }
                if (h != null)
                {
                    return k + h.a(i1);
                }
            }
            return k;
        }

        long a(ReadablePeriod readableperiod)
        {
            PeriodType periodtype;
            if (b == 4)
            {
                periodtype = null;
            } else
            {
                periodtype = readableperiod.b();
            }
            if (periodtype == null || a(periodtype, e)) goto _L2; else goto _L1
_L1:
            return 0x7fffffffffffffffL;
_L2:
            e;
            JVM INSTR tableswitch 0 9: default 100
        //                       0 104
        //                       1 163
        //                       2 178
        //                       3 193
        //                       4 208
        //                       5 223
        //                       6 238
        //                       7 253
        //                       8 268
        //                       9 268;
               goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L12
_L3:
            return 0x7fffffffffffffffL;
_L4:
            long l1 = readableperiod.a(DurationFieldType.j());
_L17:
            if (l1 != 0L) goto _L14; else goto _L13
_L13:
            b;
            JVM INSTR tableswitch 1 5: default 160
        //                       1 366
        //                       2 304
        //                       3 160
        //                       4 160
        //                       5 26;
               goto _L14 _L15 _L16 _L14 _L14 _L1
_L15:
            continue; /* Loop/switch isn't completed */
_L14:
            return l1;
_L5:
            l1 = readableperiod.a(DurationFieldType.i());
              goto _L17
_L6:
            l1 = readableperiod.a(DurationFieldType.g());
              goto _L17
_L7:
            l1 = readableperiod.a(DurationFieldType.f());
              goto _L17
_L8:
            l1 = readableperiod.a(DurationFieldType.d());
              goto _L17
_L9:
            l1 = readableperiod.a(DurationFieldType.c());
              goto _L17
_L10:
            l1 = readableperiod.a(DurationFieldType.b());
              goto _L17
_L11:
            l1 = readableperiod.a(DurationFieldType.a());
              goto _L17
_L12:
            int k = readableperiod.a(DurationFieldType.b());
            int l = readableperiod.a(DurationFieldType.a());
            l1 = 1000L * (long)k + (long)l;
              goto _L17
_L16:
            if (!b(readableperiod) || f[e] != this) goto _L1; else goto _L18
_L18:
            int j1 = 1 + e;
_L21:
            if (j1 > 9) goto _L14; else goto _L19
_L19:
            if (a(periodtype, j1) && f[j1] != null) goto _L1; else goto _L20
_L20:
            j1++;
              goto _L21
            if (!b(readableperiod) || f[e] != this) goto _L1; else goto _L22
_L22:
            int i1 = -1 + Math.min(e, 8);
_L25:
            if (i1 < 0 || i1 > 9) goto _L14; else goto _L23
_L23:
            if (a(periodtype, i1) && f[i1] != null) goto _L1; else goto _L24
_L24:
            i1--;
              goto _L25
        }

        public void a(StringBuffer stringbuffer, ReadablePeriod readableperiod, Locale locale)
        {
            long l = a(readableperiod);
            if (l != 0x7fffffffffffffffL)
            {
                int k = (int)l;
                if (e >= 8)
                {
                    k = (int)(l / 1000L);
                }
                if (g != null)
                {
                    g.a(stringbuffer, k);
                }
                int i1 = stringbuffer.length();
                int j1 = a;
                if (j1 <= 1)
                {
                    FormatUtils.a(stringbuffer, k);
                } else
                {
                    FormatUtils.a(stringbuffer, k, j1);
                }
                if (e >= 8)
                {
                    int k1 = (int)(Math.abs(l) % 1000L);
                    if (e == 8 || k1 > 0)
                    {
                        if (l < 0L && l > -1000L)
                        {
                            stringbuffer.insert(i1, '-');
                        }
                        stringbuffer.append('.');
                        FormatUtils.a(stringbuffer, k1, 3);
                    }
                }
                if (h != null)
                {
                    h.a(stringbuffer, k);
                    return;
                }
            }
        }

        boolean a(PeriodType periodtype, int k)
        {
            k;
            JVM INSTR tableswitch 0 9: default 56
        //                       0 58
        //                       1 66
        //                       2 74
        //                       3 82
        //                       4 90
        //                       5 98
        //                       6 106
        //                       7 114
        //                       8 122
        //                       9 122;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L10
_L1:
            return false;
_L2:
            return periodtype.a(DurationFieldType.j());
_L3:
            return periodtype.a(DurationFieldType.i());
_L4:
            return periodtype.a(DurationFieldType.g());
_L5:
            return periodtype.a(DurationFieldType.f());
_L6:
            return periodtype.a(DurationFieldType.d());
_L7:
            return periodtype.a(DurationFieldType.c());
_L8:
            return periodtype.a(DurationFieldType.b());
_L9:
            return periodtype.a(DurationFieldType.a());
_L10:
            if (periodtype.a(DurationFieldType.b()) || periodtype.a(DurationFieldType.a()))
            {
                return true;
            }
            if (true) goto _L1; else goto _L11
_L11:
        }

        boolean b(ReadablePeriod readableperiod)
        {
            int k = readableperiod.c();
            for (int l = 0; l < k; l++)
            {
                if (readableperiod.c(l) != 0)
                {
                    return false;
                }
            }

            return true;
        }

        FieldFormatter(int k, int l, int i1, boolean flag, int j1, FieldFormatter afieldformatter[], PeriodFieldAffix periodfieldaffix, 
                PeriodFieldAffix periodfieldaffix1)
        {
            a = k;
            b = l;
            c = i1;
            d = flag;
            e = j1;
            f = afieldformatter;
            g = periodfieldaffix;
            h = periodfieldaffix1;
        }

        FieldFormatter(FieldFormatter fieldformatter, PeriodFieldAffix periodfieldaffix)
        {
            a = fieldformatter.a;
            b = fieldformatter.b;
            c = fieldformatter.c;
            d = fieldformatter.d;
            e = fieldformatter.e;
            f = fieldformatter.f;
            g = fieldformatter.g;
            if (fieldformatter.h != null)
            {
                periodfieldaffix = new CompositeAffix(fieldformatter.h, periodfieldaffix);
            }
            h = periodfieldaffix;
        }
    }

    static class Literal
        implements PeriodParser, PeriodPrinter
    {

        static final Literal a = new Literal("");
        private final String b;

        public int a(ReadablePeriod readableperiod, int k, Locale locale)
        {
            return 0;
        }

        public int a(ReadablePeriod readableperiod, Locale locale)
        {
            return b.length();
        }

        public void a(StringBuffer stringbuffer, ReadablePeriod readableperiod, Locale locale)
        {
            stringbuffer.append(b);
        }


        Literal(String s)
        {
            b = s;
        }
    }

    static interface PeriodFieldAffix
    {

        public abstract int a(int k);

        public abstract void a(StringBuffer stringbuffer, int k);
    }

    static class PluralAffix
        implements PeriodFieldAffix
    {

        private final String a;
        private final String b;

        public int a(int k)
        {
            String s;
            if (k == 1)
            {
                s = a;
            } else
            {
                s = b;
            }
            return s.length();
        }

        public void a(StringBuffer stringbuffer, int k)
        {
            String s;
            if (k == 1)
            {
                s = a;
            } else
            {
                s = b;
            }
            stringbuffer.append(s);
        }
    }

    static class Separator
        implements PeriodParser, PeriodPrinter
    {

        private final String a;
        private final String b;
        private final String c[];
        private final boolean d;
        private final boolean e;
        private final PeriodPrinter f;
        private volatile PeriodPrinter g;
        private final PeriodParser h;
        private volatile PeriodParser i;

        static PeriodParser a(Separator separator)
        {
            return separator.i;
        }

        static PeriodPrinter b(Separator separator)
        {
            return separator.g;
        }

        public int a(ReadablePeriod readableperiod, int k, Locale locale)
        {
            int l = f.a(readableperiod, k, locale);
            if (l < k)
            {
                l += g.a(readableperiod, k, locale);
            }
            return l;
        }

        public int a(ReadablePeriod readableperiod, Locale locale)
        {
            PeriodPrinter periodprinter;
            PeriodPrinter periodprinter1;
            int k;
            periodprinter = f;
            periodprinter1 = g;
            k = periodprinter.a(readableperiod, locale) + periodprinter1.a(readableperiod, locale);
            if (!d) goto _L2; else goto _L1
_L1:
            if (periodprinter.a(readableperiod, 1, locale) <= 0) goto _L4; else goto _L3
_L3:
            if (!e) goto _L6; else goto _L5
_L5:
            int l = periodprinter1.a(readableperiod, 2, locale);
            int i1;
            if (l > 0)
            {
                String s;
                if (l > 1)
                {
                    s = a;
                } else
                {
                    s = b;
                }
                i1 = k + s.length();
            } else
            {
                i1 = k;
            }
            k = i1;
_L4:
            return k;
_L6:
            return k + a.length();
_L2:
            if (e && periodprinter1.a(readableperiod, 1, locale) > 0)
            {
                return k + a.length();
            }
            if (true) goto _L4; else goto _L7
_L7:
        }

        Separator a(PeriodPrinter periodprinter, PeriodParser periodparser)
        {
            g = periodprinter;
            i = periodparser;
            return this;
        }

        public void a(StringBuffer stringbuffer, ReadablePeriod readableperiod, Locale locale)
        {
            PeriodPrinter periodprinter;
            PeriodPrinter periodprinter1;
            periodprinter = f;
            periodprinter1 = g;
            periodprinter.a(stringbuffer, readableperiod, locale);
            if (!d) goto _L2; else goto _L1
_L1:
            if (periodprinter.a(readableperiod, 1, locale) > 0)
            {
                if (e)
                {
                    int k = periodprinter1.a(readableperiod, 2, locale);
                    if (k > 0)
                    {
                        String s;
                        if (k > 1)
                        {
                            s = a;
                        } else
                        {
                            s = b;
                        }
                        stringbuffer.append(s);
                    }
                } else
                {
                    stringbuffer.append(a);
                }
            }
_L4:
            periodprinter1.a(stringbuffer, readableperiod, locale);
            return;
_L2:
            if (e && periodprinter1.a(readableperiod, 1, locale) > 0)
            {
                stringbuffer.append(a);
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        Separator(String s, String s1, String as[], PeriodPrinter periodprinter, PeriodParser periodparser, boolean flag, boolean flag1)
        {
            a = s;
            b = s1;
            if ((s1 == null || s.equals(s1)) && (as == null || as.length == 0))
            {
                c = (new String[] {
                    s
                });
            } else
            {
                TreeSet treeset = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                treeset.add(s);
                treeset.add(s1);
                if (as != null)
                {
                    for (int k = as.length; --k >= 0;)
                    {
                        treeset.add(as[k]);
                    }

                }
                ArrayList arraylist = new ArrayList(treeset);
                Collections.reverse(arraylist);
                c = (String[])arraylist.toArray(new String[arraylist.size()]);
            }
            f = periodprinter;
            h = periodparser;
            d = flag;
            e = flag1;
        }
    }

    static class SimpleAffix
        implements PeriodFieldAffix
    {

        private final String a;

        public int a(int k)
        {
            return a.length();
        }

        public void a(StringBuffer stringbuffer, int k)
        {
            stringbuffer.append(a);
        }

        SimpleAffix(String s)
        {
            a = s;
        }
    }


    private int a;
    private int b;
    private int c;
    private boolean d;
    private PeriodFieldAffix e;
    private List f;
    private boolean g;
    private boolean h;
    private FieldFormatter i[];

    public PeriodFormatterBuilder()
    {
        b();
    }

    private static PeriodFormatter a(List list, boolean flag, boolean flag1)
    {
        if (flag && flag1)
        {
            throw new IllegalStateException("Builder has created neither a printer nor a parser");
        }
        int k = list.size();
        if (k >= 2 && (list.get(0) instanceof Separator))
        {
            Separator separator = (Separator)list.get(0);
            if (Separator.a(separator) == null && Separator.b(separator) == null)
            {
                PeriodFormatter periodformatter = a(list.subList(2, k), flag, flag1);
                Separator separator1 = separator.a(periodformatter.a(), periodformatter.b());
                return new PeriodFormatter(separator1, separator1);
            }
        }
        Object aobj[] = a(list);
        if (flag)
        {
            return new PeriodFormatter(null, (PeriodParser)aobj[1]);
        }
        if (flag1)
        {
            return new PeriodFormatter((PeriodPrinter)aobj[0], null);
        } else
        {
            return new PeriodFormatter((PeriodPrinter)aobj[0], (PeriodParser)aobj[1]);
        }
    }

    private PeriodFormatterBuilder a(String s, String s1, String as[], boolean flag, boolean flag1)
    {
        List list;
        int k;
        if (s == null || s1 == null)
        {
            throw new IllegalArgumentException();
        }
        j();
        list = f;
        if (list.size() == 0)
        {
            if (flag1 && !flag)
            {
                Separator separator2 = new Separator(s, s1, as, Literal.a, Literal.a, flag, flag1);
                a(((PeriodPrinter) (separator2)), ((PeriodParser) (separator2)));
            }
            return this;
        }
        k = list.size();
_L3:
        int l;
        l = k - 1;
        if (l < 0)
        {
            break MISSING_BLOCK_LABEL_248;
        }
        if (!(list.get(l) instanceof Separator)) goto _L2; else goto _L1
_L1:
        List list1;
        Separator separator;
        separator = (Separator)list.get(l);
        list1 = list.subList(l + 1, list.size());
_L4:
        if (separator != null && list1.size() == 0)
        {
            throw new IllegalStateException("Cannot have two adjacent separators");
        } else
        {
            Object aobj[] = a(list1);
            list1.clear();
            Separator separator1 = new Separator(s, s1, as, (PeriodPrinter)aobj[0], (PeriodParser)aobj[1], flag, flag1);
            list1.add(separator1);
            list1.add(separator1);
            return this;
        }
_L2:
        k = l - 1;
          goto _L3
        list1 = list;
        separator = null;
          goto _L4
    }

    private PeriodFormatterBuilder a(PeriodFieldAffix periodfieldaffix)
    {
        Object obj;
        Object obj1;
        if (f.size() > 0)
        {
            Object obj2 = f.get(-2 + f.size());
            Object obj3 = f.get(-1 + f.size());
            obj = obj2;
            obj1 = obj3;
        } else
        {
            obj = null;
            obj1 = null;
        }
        if (obj == null || obj1 == null || obj != obj1 || !(obj instanceof FieldFormatter))
        {
            throw new IllegalStateException("No field to apply suffix to");
        } else
        {
            j();
            FieldFormatter fieldformatter = new FieldFormatter((FieldFormatter)obj, periodfieldaffix);
            f.set(-2 + f.size(), fieldformatter);
            f.set(-1 + f.size(), fieldformatter);
            i[fieldformatter.a()] = fieldformatter;
            return this;
        }
    }

    private PeriodFormatterBuilder a(PeriodPrinter periodprinter, PeriodParser periodparser)
    {
        boolean flag = true;
        f.add(periodprinter);
        f.add(periodparser);
        boolean flag1 = g;
        boolean flag2;
        boolean flag3;
        if (periodprinter == null)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        g = flag2 | flag1;
        flag3 = h;
        if (periodparser != null)
        {
            flag = false;
        }
        h = flag3 | flag;
        return this;
    }

    private void a(int k)
    {
        a(k, a);
    }

    private void a(int k, int l)
    {
        FieldFormatter fieldformatter = new FieldFormatter(l, b, c, d, k, i, e, null);
        a(((PeriodPrinter) (fieldformatter)), ((PeriodParser) (fieldformatter)));
        i[k] = fieldformatter;
        e = null;
    }

    private static Object[] a(List list)
    {
        Object aobj[];
        switch (list.size())
        {
        default:
            Composite composite = new Composite(list);
            return (new Object[] {
                composite, composite
            });

        case 0: // '\0'
            Object aobj1[] = new Object[2];
            aobj1[0] = Literal.a;
            aobj1[1] = Literal.a;
            return aobj1;

        case 1: // '\001'
            aobj = new Object[2];
            break;
        }
        aobj[0] = list.get(0);
        aobj[1] = list.get(1);
        return aobj;
    }

    private void j()
    {
        if (e != null)
        {
            throw new IllegalStateException("Prefix not followed by field");
        } else
        {
            e = null;
            return;
        }
    }

    public PeriodFormatter a()
    {
        PeriodFormatter periodformatter = a(f, g, h);
        i = (FieldFormatter[])(FieldFormatter[])i.clone();
        return periodformatter;
    }

    public PeriodFormatterBuilder a(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Literal must not be null");
        } else
        {
            j();
            Literal literal = new Literal(s);
            a(((PeriodPrinter) (literal)), ((PeriodParser) (literal)));
            return this;
        }
    }

    public PeriodFormatterBuilder b(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            return a(new SimpleAffix(s));
        }
    }

    public void b()
    {
        a = 1;
        b = 2;
        c = 10;
        d = false;
        e = null;
        if (f == null)
        {
            f = new ArrayList();
        } else
        {
            f.clear();
        }
        g = false;
        h = false;
        i = new FieldFormatter[10];
    }

    public PeriodFormatterBuilder c()
    {
        a(0);
        return this;
    }

    public PeriodFormatterBuilder c(String s)
    {
        return a(s, s, null, false, true);
    }

    public PeriodFormatterBuilder d()
    {
        a(1);
        return this;
    }

    public PeriodFormatterBuilder e()
    {
        a(2);
        return this;
    }

    public PeriodFormatterBuilder f()
    {
        a(3);
        return this;
    }

    public PeriodFormatterBuilder g()
    {
        a(4);
        return this;
    }

    public PeriodFormatterBuilder h()
    {
        a(5);
        return this;
    }

    public PeriodFormatterBuilder i()
    {
        a(9);
        return this;
    }
}
