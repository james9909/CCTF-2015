// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.tz;

import java.text.DateFormatSymbols;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.joda.time.DateTimeUtils;

// Referenced classes of package org.joda.time.tz:
//            NameProvider

public class DefaultNameProvider
    implements NameProvider
{

    private HashMap a;

    public DefaultNameProvider()
    {
        a = a();
    }

    private HashMap a()
    {
        return new HashMap(7);
    }

    private String[] c(Locale locale, String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        if (locale != null && s != null && s1 != null) goto _L2; else goto _L1
_L1:
        String as[] = null;
_L15:
        this;
        JVM INSTR monitorexit ;
        return as;
_L2:
        Map map = (Map)a.get(locale);
        if (map != null) goto _L4; else goto _L3
_L3:
        HashMap hashmap1;
        HashMap hashmap = a;
        hashmap1 = a();
        hashmap.put(locale, hashmap1);
        Object obj = hashmap1;
_L17:
        Object obj1 = (Map)((Map) (obj)).get(s);
        if (obj1 != null) goto _L6; else goto _L5
_L5:
        String as1[][];
        int i;
        obj1 = a();
        ((Map) (obj)).put(s, obj1);
        as1 = DateTimeUtils.a(Locale.ENGLISH).getZoneStrings();
        i = as1.length;
        int j = 0;
_L18:
        if (j >= i) goto _L8; else goto _L7
_L7:
        String as2[] = as1[j];
        if (as2 == null) goto _L10; else goto _L9
_L9:
        if (as2.length != 5 || !s.equals(as2[0])) goto _L10; else goto _L11
_L11:
        String as3[] = as2;
_L16:
        String as4[][];
        int k;
        as4 = DateTimeUtils.a(locale).getZoneStrings();
        k = as4.length;
        int l = 0;
_L19:
        String as5[];
        as5 = null;
        if (l >= k)
        {
            break MISSING_BLOCK_LABEL_221;
        }
        String as6[] = as4[l];
        if (as6 == null)
        {
            break MISSING_BLOCK_LABEL_431;
        }
        if (as6.length != 5 || !s.equals(as6[0]))
        {
            break MISSING_BLOCK_LABEL_431;
        }
        as5 = as6;
        if (as3 == null || as5 == null) goto _L6; else goto _L12
_L12:
        String s2 = as3[2];
        String as7[] = new String[2];
        as7[0] = as5[2];
        as7[1] = as5[1];
        ((Map) (obj1)).put(s2, as7);
        if (!as3[2].equals(as3[4])) goto _L14; else goto _L13
_L13:
        String s4 = (new StringBuilder()).append(as3[4]).append("-Summer").toString();
        String as9[] = new String[2];
        as9[0] = as5[4];
        as9[1] = as5[3];
        ((Map) (obj1)).put(s4, as9);
_L6:
        as = (String[])(String[])((Map) (obj1)).get(s1);
          goto _L15
_L14:
        String s3 = as3[4];
        String as8[] = new String[2];
        as8[0] = as5[4];
        as8[1] = as5[3];
        ((Map) (obj1)).put(s3, as8);
          goto _L6
        Exception exception;
        exception;
        throw exception;
_L8:
        as3 = null;
          goto _L16
_L4:
        obj = map;
          goto _L17
_L10:
        j++;
          goto _L18
        l++;
          goto _L19
    }

    public String a(Locale locale, String s, String s1)
    {
        String as[] = c(locale, s, s1);
        if (as == null)
        {
            return null;
        } else
        {
            return as[0];
        }
    }

    public String b(Locale locale, String s, String s1)
    {
        String as[] = c(locale, s, s1);
        if (as == null)
        {
            return null;
        } else
        {
            return as[1];
        }
    }
}
