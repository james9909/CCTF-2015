// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.chrono;

import java.lang.ref.WeakReference;
import java.text.DateFormatSymbols;
import java.util.Locale;
import java.util.TreeMap;
import java.util.WeakHashMap;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeUtils;
import org.joda.time.IllegalFieldValueException;

class GJLocaleSymbols
{

    private static final GJLocaleSymbols a[] = new GJLocaleSymbols[64];
    private static WeakHashMap b = new WeakHashMap();
    private final WeakReference c;
    private final String d[];
    private final String e[];
    private final String f[];
    private final String g[];
    private final String h[];
    private final String i[];
    private final TreeMap j;
    private final TreeMap k;
    private final TreeMap l;
    private final int m;
    private final int n;
    private final int o;
    private final int p;
    private final int q;
    private final int r;

    private GJLocaleSymbols(Locale locale)
    {
        c = new WeakReference(locale);
        DateFormatSymbols dateformatsymbols = DateTimeUtils.a(locale);
        d = dateformatsymbols.getEras();
        e = b(dateformatsymbols.getWeekdays());
        f = b(dateformatsymbols.getShortWeekdays());
        g = a(dateformatsymbols.getMonths());
        h = a(dateformatsymbols.getShortMonths());
        i = dateformatsymbols.getAmPmStrings();
        Integer ainteger[] = new Integer[13];
        for (int i1 = 0; i1 < 13; i1++)
        {
            ainteger[i1] = Integer.valueOf(i1);
        }

        j = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        a(j, d, ainteger);
        if ("en".equals(locale.getLanguage()))
        {
            j.put("BCE", ainteger[0]);
            j.put("CE", ainteger[1]);
        }
        k = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        a(k, e, ainteger);
        a(k, f, ainteger);
        a(k, 1, 7, ainteger);
        l = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        a(l, g, ainteger);
        a(l, h, ainteger);
        a(l, 1, 12, ainteger);
        m = c(d);
        n = c(e);
        o = c(f);
        p = c(g);
        q = c(h);
        r = c(i);
    }

    public static GJLocaleSymbols a(Locale locale)
    {
        int i1;
        if (locale == null)
        {
            locale = Locale.getDefault();
        }
        i1 = 0x3f & System.identityHashCode(locale);
        GJLocaleSymbols gjlocalesymbols = a[i1];
        if (gjlocalesymbols != null && gjlocalesymbols.c.get() == locale)
        {
            return gjlocalesymbols;
        }
        WeakHashMap weakhashmap = b;
        weakhashmap;
        JVM INSTR monitorenter ;
        GJLocaleSymbols gjlocalesymbols1 = (GJLocaleSymbols)b.get(locale);
        if (gjlocalesymbols1 != null)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        gjlocalesymbols1 = new GJLocaleSymbols(locale);
        b.put(locale, gjlocalesymbols1);
        weakhashmap;
        JVM INSTR monitorexit ;
        a[i1] = gjlocalesymbols1;
        return gjlocalesymbols1;
        Exception exception;
        exception;
        weakhashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static void a(TreeMap treemap, int i1, int j1, Integer ainteger[])
    {
        for (; i1 <= j1; i1++)
        {
            treemap.put(String.valueOf(i1).intern(), ainteger[i1]);
        }

    }

    private static void a(TreeMap treemap, String as[], Integer ainteger[])
    {
        int i1 = as.length;
        do
        {
            if (--i1 < 0)
            {
                break;
            }
            String s = as[i1];
            if (s != null)
            {
                treemap.put(s, ainteger[i1]);
            }
        } while (true);
    }

    private static String[] a(String as[])
    {
        String as1[] = new String[13];
        for (int i1 = 1; i1 < 13; i1++)
        {
            as1[i1] = as[i1 - 1];
        }

        return as1;
    }

    private static String[] b(String as[])
    {
        String as1[] = new String[8];
        int i1 = 1;
        while (i1 < 8) 
        {
            int j1;
            if (i1 < 7)
            {
                j1 = i1 + 1;
            } else
            {
                j1 = 1;
            }
            as1[i1] = as[j1];
            i1++;
        }
        return as1;
    }

    private static int c(String as[])
    {
        int i1;
        int j1;
        i1 = 0;
        j1 = as.length;
_L2:
        int k1;
        int l1;
        k1 = j1 - 1;
        if (k1 < 0)
        {
            break; /* Loop/switch isn't completed */
        }
        String s = as[k1];
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        l1 = s.length();
        if (l1 <= i1)
        {
            break MISSING_BLOCK_LABEL_46;
        }
_L3:
        i1 = l1;
        j1 = k1;
        if (true) goto _L2; else goto _L1
_L1:
        return i1;
        l1 = i1;
          goto _L3
    }

    public int a()
    {
        return m;
    }

    public int a(String s)
    {
        Integer integer = (Integer)j.get(s);
        if (integer != null)
        {
            return integer.intValue();
        } else
        {
            throw new IllegalFieldValueException(DateTimeFieldType.w(), s);
        }
    }

    public String a(int i1)
    {
        return d[i1];
    }

    public int b()
    {
        return p;
    }

    public int b(String s)
    {
        Integer integer = (Integer)l.get(s);
        if (integer != null)
        {
            return integer.intValue();
        } else
        {
            throw new IllegalFieldValueException(DateTimeFieldType.r(), s);
        }
    }

    public String b(int i1)
    {
        return g[i1];
    }

    public int c()
    {
        return n;
    }

    public int c(String s)
    {
        Integer integer = (Integer)k.get(s);
        if (integer != null)
        {
            return integer.intValue();
        } else
        {
            throw new IllegalFieldValueException(DateTimeFieldType.l(), s);
        }
    }

    public String c(int i1)
    {
        return h[i1];
    }

    public int d()
    {
        return r;
    }

    public int d(String s)
    {
        String as[] = i;
        for (int i1 = as.length; --i1 >= 0;)
        {
            if (as[i1].equalsIgnoreCase(s))
            {
                return i1;
            }
        }

        throw new IllegalFieldValueException(DateTimeFieldType.k(), s);
    }

    public String d(int i1)
    {
        return e[i1];
    }

    public String e(int i1)
    {
        return f[i1];
    }

    public String f(int i1)
    {
        return i[i1];
    }

}
