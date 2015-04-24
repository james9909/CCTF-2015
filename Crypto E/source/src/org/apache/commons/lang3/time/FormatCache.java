// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

abstract class FormatCache
{
    static class MultipartKey
    {

        private int hashCode;
        private final Object keys[];

        public boolean equals(Object obj)
        {
            return Arrays.equals(keys, ((MultipartKey)obj).keys);
        }

        public int hashCode()
        {
            int i = 0;
            if (hashCode == 0)
            {
                Object aobj[] = keys;
                int j = aobj.length;
                for (int k = 0; k < j; k++)
                {
                    Object obj = aobj[k];
                    if (obj != null)
                    {
                        i = i * 7 + obj.hashCode();
                    }
                }

                hashCode = i;
            }
            return hashCode;
        }

        public transient MultipartKey(Object aobj[])
        {
            keys = aobj;
        }
    }


    static final int NONE = -1;
    private static final ConcurrentMap cDateTimeInstanceCache = new ConcurrentHashMap(7);
    private final ConcurrentMap cInstanceCache = new ConcurrentHashMap(7);

    FormatCache()
    {
    }

    private Format getDateTimeInstance(Integer integer, Integer integer1, TimeZone timezone, Locale locale)
    {
        if (locale == null)
        {
            locale = Locale.getDefault();
        }
        return getInstance(getPatternForStyle(integer, integer1, locale), timezone, locale);
    }

    static String getPatternForStyle(Integer integer, Integer integer1, Locale locale)
    {
        MultipartKey multipartkey;
        String s;
        multipartkey = new MultipartKey(new Object[] {
            integer, integer1, locale
        });
        s = (String)cDateTimeInstanceCache.get(multipartkey);
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_162;
        }
        if (integer != null) goto _L2; else goto _L1
_L1:
        DateFormat dateformat = DateFormat.getTimeInstance(integer1.intValue(), locale);
_L3:
        String s1;
        String s2;
        s1 = ((SimpleDateFormat)dateformat).toPattern();
        s2 = (String)cDateTimeInstanceCache.putIfAbsent(multipartkey, s1);
        if (s2 != null)
        {
            return s2;
        }
        break MISSING_BLOCK_LABEL_158;
_L2:
label0:
        {
            if (integer1 != null)
            {
                break label0;
            }
            DateFormat dateformat1;
            try
            {
                dateformat = DateFormat.getDateInstance(integer.intValue(), locale);
            }
            catch (ClassCastException classcastexception)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("No date time pattern for locale: ").append(locale).toString());
            }
        }
          goto _L3
        dateformat1 = DateFormat.getDateTimeInstance(integer.intValue(), integer1.intValue(), locale);
        dateformat = dateformat1;
          goto _L3
        s = s1;
        return s;
    }

    protected abstract Format createInstance(String s, TimeZone timezone, Locale locale);

    Format getDateInstance(int i, TimeZone timezone, Locale locale)
    {
        return getDateTimeInstance(Integer.valueOf(i), ((Integer) (null)), timezone, locale);
    }

    Format getDateTimeInstance(int i, int j, TimeZone timezone, Locale locale)
    {
        return getDateTimeInstance(Integer.valueOf(i), Integer.valueOf(j), timezone, locale);
    }

    public Format getInstance()
    {
        return getDateTimeInstance(3, 3, TimeZone.getDefault(), Locale.getDefault());
    }

    public Format getInstance(String s, TimeZone timezone, Locale locale)
    {
        Format format1;
label0:
        {
            if (s == null)
            {
                throw new NullPointerException("pattern must not be null");
            }
            if (timezone == null)
            {
                timezone = TimeZone.getDefault();
            }
            if (locale == null)
            {
                locale = Locale.getDefault();
            }
            MultipartKey multipartkey = new MultipartKey(new Object[] {
                s, timezone, locale
            });
            Format format = (Format)cInstanceCache.get(multipartkey);
            if (format == null)
            {
                format1 = createInstance(s, timezone, locale);
                format = (Format)cInstanceCache.putIfAbsent(multipartkey, format1);
                if (format == null)
                {
                    break label0;
                }
            }
            return format;
        }
        return format1;
    }

    Format getTimeInstance(int i, TimeZone timezone, Locale locale)
    {
        return getDateTimeInstance(((Integer) (null)), Integer.valueOf(i), timezone, locale);
    }

}
