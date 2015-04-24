// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.internal.MatcherApi;
import com.google.i18n.phonenumbers.internal.RegexBasedMatcher;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

// Referenced classes of package com.google.i18n.phonenumbers:
//            CountryCodeToRegionCodeMap

public class ShortNumberInfo
{
    public static final class ShortNumberCost extends Enum
    {

        public static final ShortNumberCost a;
        public static final ShortNumberCost b;
        public static final ShortNumberCost c;
        public static final ShortNumberCost d;
        private static final ShortNumberCost e[];

        public static ShortNumberCost valueOf(String s)
        {
            return (ShortNumberCost)Enum.valueOf(com/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost, s);
        }

        public static ShortNumberCost[] values()
        {
            return (ShortNumberCost[])e.clone();
        }

        static 
        {
            a = new ShortNumberCost("TOLL_FREE", 0);
            b = new ShortNumberCost("STANDARD_RATE", 1);
            c = new ShortNumberCost("PREMIUM_RATE", 2);
            d = new ShortNumberCost("UNKNOWN_COST", 3);
            ShortNumberCost ashortnumbercost[] = new ShortNumberCost[4];
            ashortnumbercost[0] = a;
            ashortnumbercost[1] = b;
            ashortnumbercost[2] = c;
            ashortnumbercost[3] = d;
            e = ashortnumbercost;
        }

        private ShortNumberCost(String s, int i)
        {
            super(s, i);
        }
    }


    private static final Logger a = Logger.getLogger(com/google/i18n/phonenumbers/ShortNumberInfo.getName());
    private static final ShortNumberInfo b = new ShortNumberInfo(RegexBasedMatcher.a());
    private static final Set c;
    private final MatcherApi d;
    private final Map e = CountryCodeToRegionCodeMap.a();

    ShortNumberInfo(MatcherApi matcherapi)
    {
        d = matcherapi;
    }

    static 
    {
        c = new HashSet();
        c.add("BR");
        c.add("CL");
        c.add("NI");
    }

    // Unreferenced inner class com/google/i18n/phonenumbers/ShortNumberInfo$1

/* anonymous class */
    static class _cls1
    {

        static final int a[];

        static 
        {
            a = new int[ShortNumberCost.values().length];
            try
            {
                a[ShortNumberCost.c.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                a[ShortNumberCost.d.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                a[ShortNumberCost.b.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                a[ShortNumberCost.a.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3)
            {
                return;
            }
        }
    }

}
