// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

// Referenced classes of package org.apache.commons.lang3:
//            StringUtils

public class LocaleUtils
{
    static class SyncAvoid
    {

        private static final List AVAILABLE_LOCALE_LIST;
        private static final Set AVAILABLE_LOCALE_SET;

        static 
        {
            ArrayList arraylist = new ArrayList(Arrays.asList(Locale.getAvailableLocales()));
            AVAILABLE_LOCALE_LIST = Collections.unmodifiableList(arraylist);
            AVAILABLE_LOCALE_SET = Collections.unmodifiableSet(new HashSet(arraylist));
        }



        SyncAvoid()
        {
        }
    }


    private static final ConcurrentMap cCountriesByLanguage = new ConcurrentHashMap();
    private static final ConcurrentMap cLanguagesByCountry = new ConcurrentHashMap();

    public LocaleUtils()
    {
    }

    public static List availableLocaleList()
    {
        return SyncAvoid.AVAILABLE_LOCALE_LIST;
    }

    public static Set availableLocaleSet()
    {
        return SyncAvoid.AVAILABLE_LOCALE_SET;
    }

    public static List countriesByLanguage(String s)
    {
        List list;
        if (s == null)
        {
            list = Collections.emptyList();
        } else
        {
            list = (List)cCountriesByLanguage.get(s);
            if (list == null)
            {
                ArrayList arraylist = new ArrayList();
                List list1 = availableLocaleList();
                for (int i = 0; i < list1.size(); i++)
                {
                    Locale locale = (Locale)list1.get(i);
                    if (s.equals(locale.getLanguage()) && locale.getCountry().length() != 0 && locale.getVariant().isEmpty())
                    {
                        arraylist.add(locale);
                    }
                }

                List list2 = Collections.unmodifiableList(arraylist);
                cCountriesByLanguage.putIfAbsent(s, list2);
                return (List)cCountriesByLanguage.get(s);
            }
        }
        return list;
    }

    public static boolean isAvailableLocale(Locale locale)
    {
        return availableLocaleList().contains(locale);
    }

    public static List languagesByCountry(String s)
    {
        List list;
        if (s == null)
        {
            list = Collections.emptyList();
        } else
        {
            list = (List)cLanguagesByCountry.get(s);
            if (list == null)
            {
                ArrayList arraylist = new ArrayList();
                List list1 = availableLocaleList();
                for (int i = 0; i < list1.size(); i++)
                {
                    Locale locale = (Locale)list1.get(i);
                    if (s.equals(locale.getCountry()) && locale.getVariant().isEmpty())
                    {
                        arraylist.add(locale);
                    }
                }

                List list2 = Collections.unmodifiableList(arraylist);
                cLanguagesByCountry.putIfAbsent(s, list2);
                return (List)cLanguagesByCountry.get(s);
            }
        }
        return list;
    }

    public static List localeLookupList(Locale locale)
    {
        return localeLookupList(locale, locale);
    }

    public static List localeLookupList(Locale locale, Locale locale1)
    {
        ArrayList arraylist = new ArrayList(4);
        if (locale != null)
        {
            arraylist.add(locale);
            if (locale.getVariant().length() > 0)
            {
                arraylist.add(new Locale(locale.getLanguage(), locale.getCountry()));
            }
            if (locale.getCountry().length() > 0)
            {
                arraylist.add(new Locale(locale.getLanguage(), ""));
            }
            if (!arraylist.contains(locale1))
            {
                arraylist.add(locale1);
            }
        }
        return Collections.unmodifiableList(arraylist);
    }

    public static Locale toLocale(String s)
    {
        int i;
        String as[];
        if (s == null)
        {
            return null;
        }
        if (s.isEmpty())
        {
            return new Locale("", "");
        }
        if (s.contains("#"))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid locale format: ").append(s).toString());
        }
        i = s.length();
        if (i < 2)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid locale format: ").append(s).toString());
        }
        if (s.charAt(0) == '_')
        {
            if (i < 3)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Invalid locale format: ").append(s).toString());
            }
            char c = s.charAt(1);
            char c1 = s.charAt(2);
            if (!Character.isUpperCase(c) || !Character.isUpperCase(c1))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Invalid locale format: ").append(s).toString());
            }
            if (i == 3)
            {
                return new Locale("", s.substring(1, 3));
            }
            if (i < 5)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Invalid locale format: ").append(s).toString());
            }
            if (s.charAt(3) != '_')
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Invalid locale format: ").append(s).toString());
            } else
            {
                return new Locale("", s.substring(1, 3), s.substring(4));
            }
        }
        as = s.split("_", -1);
        -1 + as.length;
        JVM INSTR tableswitch 0 2: default 344
    //                   0 371
    //                   1 424
    //                   2 513;
           goto _L1 _L2 _L3 _L4
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Invalid locale format: ").append(s).toString());
_L2:
        if (StringUtils.isAllLowerCase(s) && (i == 2 || i == 3))
        {
            return new Locale(s);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid locale format: ").append(s).toString());
        }
_L3:
        if (StringUtils.isAllLowerCase(as[0]) && (as[0].length() == 2 || as[0].length() == 3) && as[1].length() == 2 && StringUtils.isAllUpperCase(as[1]))
        {
            return new Locale(as[0], as[1]);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid locale format: ").append(s).toString());
        }
_L4:
        if (StringUtils.isAllLowerCase(as[0]) && (as[0].length() == 2 || as[0].length() == 3) && (as[1].length() == 0 || as[1].length() == 2 && StringUtils.isAllUpperCase(as[1])) && as[2].length() > 0)
        {
            return new Locale(as[0], as[1], as[2]);
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

}
