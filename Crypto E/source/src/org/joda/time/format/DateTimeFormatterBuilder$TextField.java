// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.format;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeZone;
import org.joda.time.MutableDateTime;
import org.joda.time.ReadablePartial;

// Referenced classes of package org.joda.time.format:
//            DateTimeParser, DateTimePrinter, DateTimeParserBucket, DateTimeFormatterBuilder

static class c
    implements DateTimeParser, DateTimePrinter
{

    private static Map a = new HashMap();
    private final DateTimeFieldType b;
    private final boolean c;

    private String a(long l, Chronology chronology, Locale locale)
    {
        DateTimeField datetimefield = b.a(chronology);
        if (c)
        {
            return datetimefield.b(l, locale);
        } else
        {
            return datetimefield.a(l, locale);
        }
    }

    private String a(ReadablePartial readablepartial, Locale locale)
    {
        if (readablepartial.b(b))
        {
            DateTimeField datetimefield = b.a(readablepartial.c());
            if (c)
            {
                return datetimefield.b(readablepartial, locale);
            } else
            {
                return datetimefield.a(readablepartial, locale);
            }
        } else
        {
            return "\uFFFD";
        }
    }

    public int a()
    {
        return !c ? 20 : 6;
    }

    public int a(DateTimeParserBucket datetimeparserbucket, String s, int i)
    {
        Locale locale = datetimeparserbucket.b();
        Map map = a;
        map;
        JVM INSTR monitorenter ;
        Map map1 = (Map)a.get(locale);
        if (map1 != null) goto _L2; else goto _L1
_L1:
        HashMap hashmap;
        hashmap = new HashMap();
        a.put(locale, hashmap);
        Object obj = hashmap;
_L10:
        Object aobj[] = (Object[])((Map) (obj)).get(b);
        if (aobj != null) goto _L4; else goto _L3
_L3:
        Object obj1;
        org.joda.time.tField tfield;
        int j;
        int k;
        obj1 = new HashSet(32);
        tfield = (new MutableDateTime(0L, DateTimeZone.a)).a(b);
        j = tfield.b();
        k = tfield.b();
        int j1;
        if (k - j <= 32)
        {
            break MISSING_BLOCK_LABEL_147;
        }
        j1 = ~i;
        map;
        JVM INSTR monitorexit ;
        return j1;
        int l = tfield.b(locale);
_L6:
        if (j > k)
        {
            break; /* Loop/switch isn't completed */
        }
        tfield.b(j);
        ((Set) (obj1)).add(tfield.b(locale));
        ((Set) (obj1)).add(tfield.b(locale).toLowerCase(locale));
        ((Set) (obj1)).add(tfield.b(locale).toUpperCase(locale));
        ((Set) (obj1)).add(tfield.b(locale));
        ((Set) (obj1)).add(tfield.b(locale).toLowerCase(locale));
        ((Set) (obj1)).add(tfield.b(locale).toUpperCase(locale));
        j++;
        if (true) goto _L6; else goto _L5
_L5:
        if (!"en".equals(locale.getLanguage()) || b != DateTimeFieldType.w())
        {
            break MISSING_BLOCK_LABEL_353;
        }
        ((Set) (obj1)).add("BCE");
        ((Set) (obj1)).add("bce");
        ((Set) (obj1)).add("CE");
        ((Set) (obj1)).add("ce");
        l = 3;
        Object aobj1[] = new Object[2];
        aobj1[0] = obj1;
        aobj1[1] = Integer.valueOf(l);
        ((Map) (obj)).put(b, ((Object) (aobj1)));
_L7:
        map;
        JVM INSTR monitorexit ;
        int i1 = Math.min(s.length(), l + i);
_L8:
        if (i1 <= i)
        {
            break MISSING_BLOCK_LABEL_484;
        }
        String s1 = s.substring(i, i1);
        if (((Set) (obj1)).contains(s1))
        {
            datetimeparserbucket.a(b, s1, locale);
            return i1;
        }
        break MISSING_BLOCK_LABEL_478;
_L4:
        obj1 = (Set)aobj[0];
        l = ((Integer)aobj[1]).intValue();
          goto _L7
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        i1--;
          goto _L8
        return ~i;
_L2:
        obj = map1;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public void a(StringBuffer stringbuffer, long l, Chronology chronology, int i, DateTimeZone datetimezone, Locale locale)
    {
        try
        {
            stringbuffer.append(a(l, chronology, locale));
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            stringbuffer.append('\uFFFD');
        }
    }

    public void a(StringBuffer stringbuffer, ReadablePartial readablepartial, Locale locale)
    {
        try
        {
            stringbuffer.append(a(readablepartial, locale));
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            stringbuffer.append('\uFFFD');
        }
    }

    public int b()
    {
        return a();
    }


    (DateTimeFieldType datetimefieldtype, boolean flag)
    {
        b = datetimefieldtype;
        c = flag;
    }
}
