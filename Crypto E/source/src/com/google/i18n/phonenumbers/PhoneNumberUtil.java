// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.i18n.phonenumbers:
//            RegexCache, CountryCodeToRegionCodeMap, NumberParseException, MetadataLoader, 
//            PhoneNumberMatcher

public class PhoneNumberUtil
{
    public static abstract class Leniency extends Enum
    {

        public static final Leniency a;
        public static final Leniency b;
        public static final Leniency c;
        public static final Leniency d;
        private static final Leniency e[];

        public static Leniency valueOf(String s1)
        {
            return (Leniency)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$Leniency, s1);
        }

        public static Leniency[] values()
        {
            return (Leniency[])e.clone();
        }

        abstract boolean a(Phonenumber.PhoneNumber phonenumber, String s1, PhoneNumberUtil phonenumberutil);

        static 
        {
            a = new Leniency("POSSIBLE", 0) {

                boolean a(Phonenumber.PhoneNumber phonenumber, String s1, PhoneNumberUtil phonenumberutil)
                {
                    return phonenumberutil.d(phonenumber);
                }

            };
            b = new Leniency("VALID", 1) {

                boolean a(Phonenumber.PhoneNumber phonenumber, String s1, PhoneNumberUtil phonenumberutil)
                {
                    if (!phonenumberutil.b(phonenumber) || !PhoneNumberMatcher.a(phonenumber, s1, phonenumberutil))
                    {
                        return false;
                    } else
                    {
                        return PhoneNumberMatcher.a(phonenumber, phonenumberutil);
                    }
                }

            };
            c = new Leniency("STRICT_GROUPING", 2) {

                boolean a(Phonenumber.PhoneNumber phonenumber, String s1, PhoneNumberUtil phonenumberutil)
                {
                    if (!phonenumberutil.b(phonenumber) || !PhoneNumberMatcher.a(phonenumber, s1, phonenumberutil) || PhoneNumberMatcher.a(phonenumber, s1) || !PhoneNumberMatcher.a(phonenumber, phonenumberutil))
                    {
                        return false;
                    } else
                    {
                        return PhoneNumberMatcher.a(phonenumber, s1, phonenumberutil, new PhoneNumberMatcher.NumberGroupingChecker(this) {

                            final Leniency._cls3 a;

                            public boolean a(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[])
                            {
                                return PhoneNumberMatcher.a(phonenumberutil, phonenumber, stringbuilder, as);
                            }

            
            {
                a = _pcls3;
                super();
            }
                        });
                    }
                }

            };
            d = new Leniency("EXACT_GROUPING", 3) {

                boolean a(Phonenumber.PhoneNumber phonenumber, String s1, PhoneNumberUtil phonenumberutil)
                {
                    if (!phonenumberutil.b(phonenumber) || !PhoneNumberMatcher.a(phonenumber, s1, phonenumberutil) || PhoneNumberMatcher.a(phonenumber, s1) || !PhoneNumberMatcher.a(phonenumber, phonenumberutil))
                    {
                        return false;
                    } else
                    {
                        return PhoneNumberMatcher.a(phonenumber, s1, phonenumberutil, new PhoneNumberMatcher.NumberGroupingChecker(this) {

                            final Leniency._cls4 a;

                            public boolean a(PhoneNumberUtil phonenumberutil, Phonenumber.PhoneNumber phonenumber, StringBuilder stringbuilder, String as[])
                            {
                                return PhoneNumberMatcher.b(phonenumberutil, phonenumber, stringbuilder, as);
                            }

            
            {
                a = _pcls4;
                super();
            }
                        });
                    }
                }

            };
            Leniency aleniency[] = new Leniency[4];
            aleniency[0] = a;
            aleniency[1] = b;
            aleniency[2] = c;
            aleniency[3] = d;
            e = aleniency;
        }

        private Leniency(String s1, int i1)
        {
            super(s1, i1);
        }

    }

    public static final class MatchType extends Enum
    {

        public static final MatchType a;
        public static final MatchType b;
        public static final MatchType c;
        public static final MatchType d;
        public static final MatchType e;
        private static final MatchType f[];

        public static MatchType valueOf(String s1)
        {
            return (MatchType)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$MatchType, s1);
        }

        public static MatchType[] values()
        {
            return (MatchType[])f.clone();
        }

        static 
        {
            a = new MatchType("NOT_A_NUMBER", 0);
            b = new MatchType("NO_MATCH", 1);
            c = new MatchType("SHORT_NSN_MATCH", 2);
            d = new MatchType("NSN_MATCH", 3);
            e = new MatchType("EXACT_MATCH", 4);
            MatchType amatchtype[] = new MatchType[5];
            amatchtype[0] = a;
            amatchtype[1] = b;
            amatchtype[2] = c;
            amatchtype[3] = d;
            amatchtype[4] = e;
            f = amatchtype;
        }

        private MatchType(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    public static final class PhoneNumberFormat extends Enum
    {

        public static final PhoneNumberFormat a;
        public static final PhoneNumberFormat b;
        public static final PhoneNumberFormat c;
        public static final PhoneNumberFormat d;
        private static final PhoneNumberFormat e[];

        public static PhoneNumberFormat valueOf(String s1)
        {
            return (PhoneNumberFormat)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat, s1);
        }

        public static PhoneNumberFormat[] values()
        {
            return (PhoneNumberFormat[])e.clone();
        }

        static 
        {
            a = new PhoneNumberFormat("E164", 0);
            b = new PhoneNumberFormat("INTERNATIONAL", 1);
            c = new PhoneNumberFormat("NATIONAL", 2);
            d = new PhoneNumberFormat("RFC3966", 3);
            PhoneNumberFormat aphonenumberformat[] = new PhoneNumberFormat[4];
            aphonenumberformat[0] = a;
            aphonenumberformat[1] = b;
            aphonenumberformat[2] = c;
            aphonenumberformat[3] = d;
            e = aphonenumberformat;
        }

        private PhoneNumberFormat(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    public static final class PhoneNumberType extends Enum
    {

        public static final PhoneNumberType a;
        public static final PhoneNumberType b;
        public static final PhoneNumberType c;
        public static final PhoneNumberType d;
        public static final PhoneNumberType e;
        public static final PhoneNumberType f;
        public static final PhoneNumberType g;
        public static final PhoneNumberType h;
        public static final PhoneNumberType i;
        public static final PhoneNumberType j;
        public static final PhoneNumberType k;
        public static final PhoneNumberType l;
        private static final PhoneNumberType m[];

        public static PhoneNumberType valueOf(String s1)
        {
            return (PhoneNumberType)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType, s1);
        }

        public static PhoneNumberType[] values()
        {
            return (PhoneNumberType[])m.clone();
        }

        static 
        {
            a = new PhoneNumberType("FIXED_LINE", 0);
            b = new PhoneNumberType("MOBILE", 1);
            c = new PhoneNumberType("FIXED_LINE_OR_MOBILE", 2);
            d = new PhoneNumberType("TOLL_FREE", 3);
            e = new PhoneNumberType("PREMIUM_RATE", 4);
            f = new PhoneNumberType("SHARED_COST", 5);
            g = new PhoneNumberType("VOIP", 6);
            h = new PhoneNumberType("PERSONAL_NUMBER", 7);
            i = new PhoneNumberType("PAGER", 8);
            j = new PhoneNumberType("UAN", 9);
            k = new PhoneNumberType("VOICEMAIL", 10);
            l = new PhoneNumberType("UNKNOWN", 11);
            PhoneNumberType aphonenumbertype[] = new PhoneNumberType[12];
            aphonenumbertype[0] = a;
            aphonenumbertype[1] = b;
            aphonenumbertype[2] = c;
            aphonenumbertype[3] = d;
            aphonenumbertype[4] = e;
            aphonenumbertype[5] = f;
            aphonenumbertype[6] = g;
            aphonenumbertype[7] = h;
            aphonenumbertype[8] = i;
            aphonenumbertype[9] = j;
            aphonenumbertype[10] = k;
            aphonenumbertype[11] = l;
            m = aphonenumbertype;
        }

        private PhoneNumberType(String s1, int i1)
        {
            super(s1, i1);
        }
    }

    public static final class ValidationResult extends Enum
    {

        public static final ValidationResult a;
        public static final ValidationResult b;
        public static final ValidationResult c;
        public static final ValidationResult d;
        private static final ValidationResult e[];

        public static ValidationResult valueOf(String s1)
        {
            return (ValidationResult)Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult, s1);
        }

        public static ValidationResult[] values()
        {
            return (ValidationResult[])e.clone();
        }

        static 
        {
            a = new ValidationResult("IS_POSSIBLE", 0);
            b = new ValidationResult("INVALID_COUNTRY_CODE", 1);
            c = new ValidationResult("TOO_SHORT", 2);
            d = new ValidationResult("TOO_LONG", 3);
            ValidationResult avalidationresult[] = new ValidationResult[4];
            avalidationresult[0] = a;
            avalidationresult[1] = b;
            avalidationresult[2] = c;
            avalidationresult[3] = d;
            e = avalidationresult;
        }

        private ValidationResult(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private static final Pattern A = Pattern.compile("\\(?\\$1\\)?");
    private static PhoneNumberUtil B = null;
    static final MetadataLoader a = new MetadataLoader() {

        public InputStream a(String s12)
        {
            return com/google/i18n/phonenumbers/PhoneNumberUtil.getResourceAsStream(s12);
        }

    };
    static final Pattern b = Pattern.compile("[+\uFF0B]+");
    static final Pattern c = Pattern.compile("[\\\\/] *x");
    static final Pattern d = Pattern.compile("[[\\P{N}&&\\P{L}]&&[^#]]+$");
    static final String e = g("x\uFF58#\uFF03~\uFF5E");
    static final Pattern f = Pattern.compile("(\\D+)");
    private static final Logger g = Logger.getLogger(com/google/i18n/phonenumbers/PhoneNumberUtil.getName());
    private static final Map h;
    private static final Map i;
    private static final Map j;
    private static final Map k;
    private static final Map l;
    private static final Pattern m = Pattern.compile("[\\d]+(?:[~\u2053\u223C\uFF5E][\\d]+)?");
    private static final String n;
    private static final Pattern o = Pattern.compile("[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E]+");
    private static final Pattern p = Pattern.compile("(\\p{Nd})");
    private static final Pattern q = Pattern.compile("[+\uFF0B\\p{Nd}]");
    private static final Pattern r = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
    private static final String s;
    private static final String t;
    private static final Pattern u;
    private static final Pattern v;
    private static final Pattern w = Pattern.compile("(\\$\\d)");
    private static final Pattern x = Pattern.compile("\\$NP");
    private static final Pattern y = Pattern.compile("\\$FG");
    private static final Pattern z = Pattern.compile("\\$CC");
    private final Map C;
    private final Set D = new HashSet(35);
    private final Map E = Collections.synchronizedMap(new HashMap());
    private final Map F = Collections.synchronizedMap(new HashMap());
    private final RegexCache G = new RegexCache(100);
    private final Set H = new HashSet(320);
    private final Set I = new HashSet();
    private final String J;
    private final MetadataLoader K;

    PhoneNumberUtil(String s1, MetadataLoader metadataloader, Map map)
    {
        J = s1;
        K = metadataloader;
        C = map;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            List list = (List)entry.getValue();
            if (list.size() == 1 && "001".equals(list.get(0)))
            {
                I.add(entry.getKey());
            } else
            {
                H.addAll(list);
            }
        }

        if (H.remove("001"))
        {
            g.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        D.addAll((Collection)map.get(Integer.valueOf(1)));
    }

    private PhoneNumberType a(String s1, Phonemetadata.PhoneMetadata phonemetadata)
    {
        if (!b(s1, phonemetadata.a()))
        {
            return PhoneNumberType.l;
        }
        if (b(s1, phonemetadata.e()))
        {
            return PhoneNumberType.e;
        }
        if (b(s1, phonemetadata.d()))
        {
            return PhoneNumberType.d;
        }
        if (b(s1, phonemetadata.f()))
        {
            return PhoneNumberType.f;
        }
        if (b(s1, phonemetadata.h()))
        {
            return PhoneNumberType.g;
        }
        if (b(s1, phonemetadata.g()))
        {
            return PhoneNumberType.h;
        }
        if (b(s1, phonemetadata.i()))
        {
            return PhoneNumberType.i;
        }
        if (b(s1, phonemetadata.j()))
        {
            return PhoneNumberType.j;
        }
        if (b(s1, phonemetadata.k()))
        {
            return PhoneNumberType.k;
        }
        if (b(s1, phonemetadata.b()))
        {
            if (phonemetadata.s())
            {
                return PhoneNumberType.c;
            }
            if (b(s1, phonemetadata.c()))
            {
                return PhoneNumberType.c;
            } else
            {
                return PhoneNumberType.a;
            }
        }
        if (!phonemetadata.s() && b(s1, phonemetadata.c()))
        {
            return PhoneNumberType.b;
        } else
        {
            return PhoneNumberType.l;
        }
    }

    private ValidationResult a(Pattern pattern, String s1)
    {
        Matcher matcher = pattern.matcher(s1);
        if (matcher.matches())
        {
            return ValidationResult.a;
        }
        if (matcher.lookingAt())
        {
            return ValidationResult.d;
        } else
        {
            return ValidationResult.c;
        }
    }

    public static PhoneNumberUtil a()
    {
        com/google/i18n/phonenumbers/PhoneNumberUtil;
        JVM INSTR monitorenter ;
        PhoneNumberUtil phonenumberutil;
        if (B == null)
        {
            a(a(a));
        }
        phonenumberutil = B;
        com/google/i18n/phonenumbers/PhoneNumberUtil;
        JVM INSTR monitorexit ;
        return phonenumberutil;
        Exception exception;
        exception;
        throw exception;
    }

    public static PhoneNumberUtil a(MetadataLoader metadataloader)
    {
        if (metadataloader == null)
        {
            throw new IllegalArgumentException("metadataLoader could not be null.");
        } else
        {
            return new PhoneNumberUtil("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto", metadataloader, CountryCodeToRegionCodeMap.a());
        }
    }

    private Phonemetadata.PhoneMetadata a(int i1, String s1)
    {
        if ("001".equals(s1))
        {
            return a(i1);
        } else
        {
            return f(s1);
        }
    }

    private static Phonemetadata.PhoneMetadataCollection a(ObjectInputStream objectinputstream)
    {
        Phonemetadata.PhoneMetadataCollection phonemetadatacollection = new Phonemetadata.PhoneMetadataCollection();
        phonemetadatacollection.readExternal(objectinputstream);
        objectinputstream.close();
        return phonemetadatacollection;
        IOException ioexception3;
        ioexception3;
        g.log(Level.WARNING, "error closing input stream (ignored)", ioexception3);
        return phonemetadatacollection;
        Exception exception3;
        exception3;
        return phonemetadatacollection;
        IOException ioexception1;
        ioexception1;
        g.log(Level.WARNING, "error reading input (ignored)", ioexception1);
        objectinputstream.close();
        return phonemetadatacollection;
        IOException ioexception2;
        ioexception2;
        g.log(Level.WARNING, "error closing input stream (ignored)", ioexception2);
        return phonemetadatacollection;
        Exception exception2;
        exception2;
        return phonemetadatacollection;
        Exception exception;
        exception;
        objectinputstream.close();
        return phonemetadatacollection;
        IOException ioexception;
        ioexception;
        g.log(Level.WARNING, "error closing input stream (ignored)", ioexception);
        return phonemetadatacollection;
        Exception exception1;
        exception1;
        return phonemetadatacollection;
    }

    private String a(Phonenumber.PhoneNumber phonenumber, List list)
    {
label0:
        {
            String s1 = a(phonenumber);
            Iterator iterator = list.iterator();
            String s2;
            Phonemetadata.PhoneMetadata phonemetadata;
label1:
            do
            {
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    s2 = (String)iterator.next();
                    phonemetadata = f(s2);
                    if (!phonemetadata.x())
                    {
                        continue label1;
                    }
                } while (!G.a(phonemetadata.y()).matcher(s1).lookingAt());
                return s2;
            } while (a(s1, phonemetadata) == PhoneNumberType.l);
            return s2;
        }
        return null;
    }

    static String a(String s1)
    {
        Matcher matcher = q.matcher(s1);
        if (matcher.find())
        {
            String s2 = s1.substring(matcher.start());
            Matcher matcher1 = d.matcher(s2);
            if (matcher1.find())
            {
                String s3 = s2.substring(0, matcher1.start());
                Logger logger = g;
                Level level = Level.FINER;
                String s4 = String.valueOf(s3);
                Matcher matcher2;
                String s5;
                if (s4.length() != 0)
                {
                    s5 = "Stripped trailing characters: ".concat(s4);
                } else
                {
                    s5 = new String("Stripped trailing characters: ");
                }
                logger.log(level, s5);
                s2 = s3;
            }
            matcher2 = c.matcher(s2);
            if (matcher2.find())
            {
                s2 = s2.substring(0, matcher2.start());
            }
            return s2;
        } else
        {
            return "";
        }
    }

    private String a(String s1, Phonemetadata.NumberFormat numberformat, PhoneNumberFormat phonenumberformat, String s2)
    {
        String s3 = numberformat.b();
        Matcher matcher = G.a(numberformat.a()).matcher(s1);
        String s5;
        if (phonenumberformat == PhoneNumberFormat.c && s2 != null && s2.length() > 0 && numberformat.f().length() > 0)
        {
            String s6 = numberformat.f();
            String s7 = z.matcher(s6).replaceFirst(s2);
            s5 = matcher.replaceAll(w.matcher(s3).replaceFirst(s7));
        } else
        {
            String s4 = numberformat.d();
            if (phonenumberformat == PhoneNumberFormat.c && s4 != null && s4.length() > 0)
            {
                s5 = matcher.replaceAll(w.matcher(s3).replaceFirst(s4));
            } else
            {
                s5 = matcher.replaceAll(s3);
            }
        }
        if (phonenumberformat == PhoneNumberFormat.d)
        {
            Matcher matcher1 = o.matcher(s5);
            if (matcher1.lookingAt())
            {
                s5 = matcher1.replaceFirst("");
            }
            s5 = matcher1.reset(s5).replaceAll("-");
        }
        return s5;
    }

    private String a(String s1, Phonemetadata.PhoneMetadata phonemetadata, PhoneNumberFormat phonenumberformat)
    {
        return a(s1, phonemetadata, phonenumberformat, ((String) (null)));
    }

    private String a(String s1, Phonemetadata.PhoneMetadata phonemetadata, PhoneNumberFormat phonenumberformat, String s2)
    {
        List list;
        Phonemetadata.NumberFormat numberformat;
        if (phonemetadata.v().size() == 0 || phonenumberformat == PhoneNumberFormat.c)
        {
            list = phonemetadata.t();
        } else
        {
            list = phonemetadata.v();
        }
        numberformat = a(list, s1);
        if (numberformat == null)
        {
            return s1;
        } else
        {
            return a(s1, numberformat, phonenumberformat, s2);
        }
    }

    private static String a(String s1, Map map, boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder(s1.length());
        int i1 = 0;
        while (i1 < s1.length()) 
        {
            char c1 = s1.charAt(i1);
            Character character = (Character)map.get(Character.valueOf(Character.toUpperCase(c1)));
            if (character != null)
            {
                stringbuilder.append(character);
            } else
            if (!flag)
            {
                stringbuilder.append(c1);
            }
            i1++;
        }
        return stringbuilder.toString();
    }

    static StringBuilder a(String s1, boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder(s1.length());
        char ac[] = s1.toCharArray();
        int i1 = ac.length;
        int j1 = 0;
        while (j1 < i1) 
        {
            char c1 = ac[j1];
            int k1 = Character.digit(c1, 10);
            if (k1 != -1)
            {
                stringbuilder.append(k1);
            } else
            if (flag)
            {
                stringbuilder.append(c1);
            }
            j1++;
        }
        return stringbuilder;
    }

    private void a(int i1, PhoneNumberFormat phonenumberformat, StringBuilder stringbuilder)
    {
        static class _cls3
        {

            static final int a[];
            static final int b[];
            static final int c[];

            static 
            {
                c = new int[PhoneNumberType.values().length];
                try
                {
                    c[PhoneNumberType.e.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    c[PhoneNumberType.d.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    c[PhoneNumberType.b.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    c[PhoneNumberType.a.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    c[PhoneNumberType.c.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    c[PhoneNumberType.f.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    c[PhoneNumberType.g.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    c[PhoneNumberType.h.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    c[PhoneNumberType.i.ordinal()] = 9;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    c[PhoneNumberType.j.ordinal()] = 10;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    c[PhoneNumberType.k.ordinal()] = 11;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                b = new int[PhoneNumberFormat.values().length];
                try
                {
                    b[PhoneNumberFormat.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    b[PhoneNumberFormat.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror12) { }
                try
                {
                    b[PhoneNumberFormat.d.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror13) { }
                try
                {
                    b[PhoneNumberFormat.c.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror14) { }
                a = new int[Phonenumber.PhoneNumber.CountryCodeSource.values().length];
                try
                {
                    a[Phonenumber.PhoneNumber.CountryCodeSource.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror15) { }
                try
                {
                    a[Phonenumber.PhoneNumber.CountryCodeSource.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror16) { }
                try
                {
                    a[Phonenumber.PhoneNumber.CountryCodeSource.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror17) { }
                try
                {
                    a[Phonenumber.PhoneNumber.CountryCodeSource.d.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror18)
                {
                    return;
                }
            }
        }

        switch (_cls3.b[phonenumberformat.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            stringbuilder.insert(0, i1).insert(0, '+');
            return;

        case 2: // '\002'
            stringbuilder.insert(0, " ").insert(0, i1).insert(0, '+');
            return;

        case 3: // '\003'
            stringbuilder.insert(0, "-").insert(0, i1).insert(0, '+').insert(0, "tel:");
            break;
        }
    }

    static void a(PhoneNumberUtil phonenumberutil)
    {
        com/google/i18n/phonenumbers/PhoneNumberUtil;
        JVM INSTR monitorenter ;
        B = phonenumberutil;
        com/google/i18n/phonenumbers/PhoneNumberUtil;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void a(Phonenumber.PhoneNumber phonenumber, Phonemetadata.PhoneMetadata phonemetadata, PhoneNumberFormat phonenumberformat, StringBuilder stringbuilder)
    {
label0:
        {
            if (phonenumber.e() && phonenumber.f().length() > 0)
            {
                if (phonenumberformat != PhoneNumberFormat.d)
                {
                    break label0;
                }
                stringbuilder.append(";ext=").append(phonenumber.f());
            }
            return;
        }
        if (phonemetadata.o())
        {
            stringbuilder.append(phonemetadata.p()).append(phonenumber.f());
            return;
        } else
        {
            stringbuilder.append(" ext. ").append(phonenumber.f());
            return;
        }
    }

    static void a(String s1, Phonenumber.PhoneNumber phonenumber)
    {
        if (s1.length() > 1 && s1.charAt(0) == '0')
        {
            phonenumber.a(true);
            int i1;
            for (i1 = 1; i1 < -1 + s1.length() && s1.charAt(i1) == '0'; i1++) { }
            if (i1 != 1)
            {
                phonenumber.b(i1);
            }
        }
    }

    private void a(String s1, String s2, boolean flag, boolean flag1, Phonenumber.PhoneNumber phonenumber)
    {
        StringBuilder stringbuilder;
        Phonemetadata.PhoneMetadata phonemetadata;
        StringBuilder stringbuilder1;
        if (s1 == null)
        {
            throw new NumberParseException(NumberParseException.ErrorType.b, "The phone number supplied was null.");
        }
        if (s1.length() > 250)
        {
            throw new NumberParseException(NumberParseException.ErrorType.e, "The string supplied was too long to parse.");
        }
        stringbuilder = new StringBuilder();
        a(s1, stringbuilder);
        if (!b(stringbuilder.toString()))
        {
            throw new NumberParseException(NumberParseException.ErrorType.b, "The string supplied did not seem to be a phone number.");
        }
        if (flag1 && !d(stringbuilder.toString(), s2))
        {
            throw new NumberParseException(NumberParseException.ErrorType.a, "Missing or invalid default region.");
        }
        if (flag)
        {
            phonenumber.b(s1);
        }
        String s3 = b(stringbuilder);
        if (s3.length() > 0)
        {
            phonenumber.a(s3);
        }
        phonemetadata = f(s2);
        stringbuilder1 = new StringBuilder();
        int k1 = a(stringbuilder.toString(), phonemetadata, stringbuilder1, flag, phonenumber);
        int i1 = k1;
_L1:
        NumberParseException numberparseexception;
        Matcher matcher;
        if (i1 != 0)
        {
            String s4 = b(i1);
            if (!s4.equals(s2))
            {
                phonemetadata = a(i1, s4);
            }
        } else
        {
            a(stringbuilder);
            stringbuilder1.append(stringbuilder);
            if (s2 != null)
            {
                phonenumber.a(phonemetadata.l());
            } else
            if (flag)
            {
                phonenumber.q();
            }
        }
        if (stringbuilder1.length() < 2)
        {
            throw new NumberParseException(NumberParseException.ErrorType.d, "The string supplied is too short to be a phone number.");
        }
        break MISSING_BLOCK_LABEL_381;
        numberparseexception;
        matcher = b.matcher(stringbuilder.toString());
        if (numberparseexception.a() == NumberParseException.ErrorType.a && matcher.lookingAt())
        {
            i1 = a(stringbuilder.substring(matcher.end()), phonemetadata, stringbuilder1, flag, phonenumber);
            if (i1 == 0)
            {
                throw new NumberParseException(NumberParseException.ErrorType.a, "Could not interpret numbers after plus-sign.");
            }
        } else
        {
            throw new NumberParseException(numberparseexception.a(), numberparseexception.getMessage());
        }
          goto _L1
        if (phonemetadata != null)
        {
            StringBuilder stringbuilder2 = new StringBuilder();
            StringBuilder stringbuilder3 = new StringBuilder(stringbuilder1);
            a(stringbuilder3, phonemetadata, stringbuilder2);
            if (!a(phonemetadata, stringbuilder3.toString()))
            {
                if (flag)
                {
                    phonenumber.c(stringbuilder2.toString());
                }
                stringbuilder1 = stringbuilder3;
            }
        }
        int j1 = stringbuilder1.length();
        if (j1 < 2)
        {
            throw new NumberParseException(NumberParseException.ErrorType.d, "The string supplied is too short to be a phone number.");
        }
        if (j1 > 17)
        {
            throw new NumberParseException(NumberParseException.ErrorType.e, "The string supplied is too long to be a phone number.");
        } else
        {
            a(stringbuilder1.toString(), phonenumber);
            phonenumber.a(Long.parseLong(stringbuilder1.toString()));
            return;
        }
    }

    private void a(String s1, StringBuilder stringbuilder)
    {
        int i1 = s1.indexOf(";phone-context=");
        if (i1 > 0)
        {
            int k1 = i1 + ";phone-context=".length();
            int i2;
            if (s1.charAt(k1) == '+')
            {
                int j2 = s1.indexOf(';', k1);
                int j1;
                int l1;
                if (j2 > 0)
                {
                    stringbuilder.append(s1.substring(k1, j2));
                } else
                {
                    stringbuilder.append(s1.substring(k1));
                }
            }
            l1 = s1.indexOf("tel:");
            if (l1 >= 0)
            {
                i2 = l1 + "tel:".length();
            } else
            {
                i2 = 0;
            }
            stringbuilder.append(s1.substring(i2, i1));
        } else
        {
            stringbuilder.append(a(s1));
        }
        j1 = stringbuilder.indexOf(";isub=");
        if (j1 > 0)
        {
            stringbuilder.delete(j1, stringbuilder.length());
        }
    }

    static void a(StringBuilder stringbuilder)
    {
        String s1 = c(stringbuilder.toString());
        stringbuilder.replace(0, stringbuilder.length(), s1);
    }

    private boolean a(Phonemetadata.PhoneMetadata phonemetadata, String s1)
    {
        return a(G.a(phonemetadata.a().b()), s1) == ValidationResult.c;
    }

    private boolean a(Pattern pattern, StringBuilder stringbuilder)
    {
        int i1;
label0:
        {
            Matcher matcher = pattern.matcher(stringbuilder);
            if (matcher.lookingAt())
            {
                i1 = matcher.end();
                Matcher matcher1 = p.matcher(stringbuilder.substring(i1));
                if (!matcher1.find() || !d(matcher1.group(1)).equals("0"))
                {
                    break label0;
                }
            }
            return false;
        }
        stringbuilder.delete(0, i1);
        return true;
    }

    private boolean b(Phonenumber.PhoneNumber phonenumber, Phonenumber.PhoneNumber phonenumber1)
    {
        String s1 = String.valueOf(phonenumber.d());
        String s2 = String.valueOf(phonenumber1.d());
        return s1.endsWith(s2) || s2.endsWith(s1);
    }

    static boolean b(String s1)
    {
        if (s1.length() < 2)
        {
            return false;
        } else
        {
            return v.matcher(s1).matches();
        }
    }

    static String c(String s1)
    {
        if (r.matcher(s1).matches())
        {
            return a(s1, k, true);
        } else
        {
            return d(s1);
        }
    }

    private boolean c(int i1)
    {
        return C.containsKey(Integer.valueOf(i1));
    }

    public static String d(String s1)
    {
        return a(s1, false).toString();
    }

    private boolean d(String s1, String s2)
    {
        return h(s2) || s1 != null && s1.length() != 0 && b.matcher(s1).lookingAt();
    }

    static boolean e(String s1)
    {
        return s1.length() == 0 || A.matcher(s1).matches();
    }

    private static String g(String s1)
    {
        String s2 = String.valueOf(String.valueOf(";ext=(\\p{Nd}{1,7})|[ \240\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\363))?n?|\uFF45?\uFF58\uFF54\uFF4E?|["));
        String s3 = String.valueOf(String.valueOf(s1));
        String s4 = String.valueOf(String.valueOf("(\\p{Nd}{1,7})"));
        String s5 = String.valueOf(String.valueOf("\\p{Nd}"));
        return (new StringBuilder(48 + s2.length() + s3.length() + s4.length() + s5.length())).append(s2).append(s3).append("]|int|anexo|\uFF49\uFF4E\uFF54)").append("[:\\.\uFF0E]?[ \240\\t,-]*").append(s4).append("#?|").append("[- ]+(").append(s5).append("{1,5})#").toString();
    }

    private boolean h(String s1)
    {
        return s1 != null && H.contains(s1);
    }

    private int i(String s1)
    {
        Phonemetadata.PhoneMetadata phonemetadata = f(s1);
        if (phonemetadata == null)
        {
            String s2 = String.valueOf(s1);
            String s3;
            if (s2.length() != 0)
            {
                s3 = "Invalid region code: ".concat(s2);
            } else
            {
                s3 = new String("Invalid region code: ");
            }
            throw new IllegalArgumentException(s3);
        } else
        {
            return phonemetadata.l();
        }
    }

    int a(String s1, Phonemetadata.PhoneMetadata phonemetadata, StringBuilder stringbuilder, boolean flag, Phonenumber.PhoneNumber phonenumber)
    {
        if (s1.length() == 0)
        {
            return 0;
        }
        StringBuilder stringbuilder1 = new StringBuilder(s1);
        String s2 = "NonMatch";
        if (phonemetadata != null)
        {
            s2 = phonemetadata.m();
        }
        Phonenumber.PhoneNumber.CountryCodeSource countrycodesource = a(stringbuilder1, s2);
        if (flag)
        {
            phonenumber.a(countrycodesource);
        }
        if (countrycodesource != Phonenumber.PhoneNumber.CountryCodeSource.d)
        {
            if (stringbuilder1.length() <= 2)
            {
                throw new NumberParseException(NumberParseException.ErrorType.c, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
            }
            int j1 = a(stringbuilder1, stringbuilder);
            if (j1 != 0)
            {
                phonenumber.a(j1);
                return j1;
            } else
            {
                throw new NumberParseException(NumberParseException.ErrorType.a, "Country calling code supplied was not recognised.");
            }
        }
        if (phonemetadata != null)
        {
            int i1 = phonemetadata.l();
            String s3 = String.valueOf(i1);
            String s4 = stringbuilder1.toString();
            if (s4.startsWith(s3))
            {
                StringBuilder stringbuilder2 = new StringBuilder(s4.substring(s3.length()));
                Phonemetadata.PhoneNumberDesc phonenumberdesc = phonemetadata.a();
                Pattern pattern = G.a(phonenumberdesc.a());
                a(stringbuilder2, phonemetadata, ((StringBuilder) (null)));
                Pattern pattern1 = G.a(phonenumberdesc.b());
                if (!pattern.matcher(stringbuilder1).matches() && pattern.matcher(stringbuilder2).matches() || a(pattern1, stringbuilder1.toString()) == ValidationResult.d)
                {
                    stringbuilder.append(stringbuilder2);
                    if (flag)
                    {
                        phonenumber.a(Phonenumber.PhoneNumber.CountryCodeSource.c);
                    }
                    phonenumber.a(i1);
                    return i1;
                }
            }
        }
        phonenumber.a(0);
        return 0;
    }

    int a(StringBuilder stringbuilder, StringBuilder stringbuilder1)
    {
        if (stringbuilder.length() == 0 || stringbuilder.charAt(0) == '0')
        {
            return 0;
        }
        int i1 = stringbuilder.length();
        for (int j1 = 1; j1 <= 3 && j1 <= i1; j1++)
        {
            int k1 = Integer.parseInt(stringbuilder.substring(0, j1));
            if (C.containsKey(Integer.valueOf(k1)))
            {
                stringbuilder1.append(stringbuilder.substring(j1));
                return k1;
            }
        }

        return 0;
    }

    public MatchType a(Phonenumber.PhoneNumber phonenumber, Phonenumber.PhoneNumber phonenumber1)
    {
        Phonenumber.PhoneNumber phonenumber2 = new Phonenumber.PhoneNumber();
        phonenumber2.a(phonenumber);
        Phonenumber.PhoneNumber phonenumber3 = new Phonenumber.PhoneNumber();
        phonenumber3.a(phonenumber1);
        phonenumber2.n();
        phonenumber2.q();
        phonenumber2.t();
        phonenumber3.n();
        phonenumber3.q();
        phonenumber3.t();
        if (phonenumber2.e() && phonenumber2.f().length() == 0)
        {
            phonenumber2.g();
        }
        if (phonenumber3.e() && phonenumber3.f().length() == 0)
        {
            phonenumber3.g();
        }
        if (phonenumber2.e() && phonenumber3.e() && !phonenumber2.f().equals(phonenumber3.f()))
        {
            return MatchType.b;
        }
        int i1 = phonenumber2.b();
        int j1 = phonenumber3.b();
        if (i1 != 0 && j1 != 0)
        {
            if (phonenumber2.b(phonenumber3))
            {
                return MatchType.e;
            }
            if (i1 == j1 && b(phonenumber2, phonenumber3))
            {
                return MatchType.c;
            } else
            {
                return MatchType.b;
            }
        }
        phonenumber2.a(j1);
        if (phonenumber2.b(phonenumber3))
        {
            return MatchType.d;
        }
        if (b(phonenumber2, phonenumber3))
        {
            return MatchType.c;
        } else
        {
            return MatchType.b;
        }
    }

    Phonemetadata.NumberFormat a(List list, String s1)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            Phonemetadata.NumberFormat numberformat = (Phonemetadata.NumberFormat)iterator.next();
            int i1 = numberformat.c();
            if ((i1 == 0 || G.a(numberformat.a(i1 - 1)).matcher(s1).lookingAt()) && G.a(numberformat.a()).matcher(s1).matches())
            {
                return numberformat;
            }
        }

        return null;
    }

    Phonemetadata.PhoneMetadata a(int i1)
    {
label0:
        {
            synchronized (F)
            {
                if (C.containsKey(Integer.valueOf(i1)))
                {
                    break label0;
                }
            }
            return null;
        }
        if (!F.containsKey(Integer.valueOf(i1)))
        {
            a(J, "001", i1, K);
        }
        map;
        JVM INSTR monitorexit ;
        return (Phonemetadata.PhoneMetadata)F.get(Integer.valueOf(i1));
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    Phonenumber.PhoneNumber.CountryCodeSource a(StringBuilder stringbuilder, String s1)
    {
        if (stringbuilder.length() == 0)
        {
            return Phonenumber.PhoneNumber.CountryCodeSource.d;
        }
        Matcher matcher = b.matcher(stringbuilder);
        if (matcher.lookingAt())
        {
            stringbuilder.delete(0, matcher.end());
            a(stringbuilder);
            return Phonenumber.PhoneNumber.CountryCodeSource.a;
        }
        Pattern pattern = G.a(s1);
        a(stringbuilder);
        if (a(pattern, stringbuilder))
        {
            return Phonenumber.PhoneNumber.CountryCodeSource.b;
        } else
        {
            return Phonenumber.PhoneNumber.CountryCodeSource.d;
        }
    }

    public Iterable a(CharSequence charsequence, String s1, Leniency leniency, long l1)
    {
        return new Iterable(charsequence, s1, leniency, l1) {

            final CharSequence a;
            final String b;
            final Leniency c;
            final long d;
            final PhoneNumberUtil e;

            public Iterator iterator()
            {
                return new PhoneNumberMatcher(e, a, b, c, d);
            }

            
            {
                e = PhoneNumberUtil.this;
                a = charsequence;
                b = s1;
                c = leniency;
                d = l1;
                super();
            }
        };
    }

    public String a(Phonenumber.PhoneNumber phonenumber)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (phonenumber.i())
        {
            char ac[] = new char[phonenumber.k()];
            Arrays.fill(ac, '0');
            stringbuilder.append(new String(ac));
        }
        stringbuilder.append(phonenumber.d());
        return stringbuilder.toString();
    }

    public String a(Phonenumber.PhoneNumber phonenumber, PhoneNumberFormat phonenumberformat)
    {
        if (phonenumber.d() == 0L && phonenumber.l())
        {
            String s1 = phonenumber.m();
            if (s1.length() > 0)
            {
                return s1;
            }
        }
        StringBuilder stringbuilder = new StringBuilder(20);
        a(phonenumber, phonenumberformat, stringbuilder);
        return stringbuilder.toString();
    }

    String a(String s1, Phonemetadata.NumberFormat numberformat, PhoneNumberFormat phonenumberformat)
    {
        return a(s1, numberformat, phonenumberformat, ((String) (null)));
    }

    public void a(Phonenumber.PhoneNumber phonenumber, PhoneNumberFormat phonenumberformat, StringBuilder stringbuilder)
    {
        stringbuilder.setLength(0);
        int i1 = phonenumber.b();
        String s1 = a(phonenumber);
        if (phonenumberformat == PhoneNumberFormat.a)
        {
            stringbuilder.append(s1);
            a(i1, PhoneNumberFormat.a, stringbuilder);
            return;
        }
        if (!c(i1))
        {
            stringbuilder.append(s1);
            return;
        } else
        {
            Phonemetadata.PhoneMetadata phonemetadata = a(i1, b(i1));
            stringbuilder.append(a(s1, phonemetadata, phonenumberformat));
            a(phonenumber, phonemetadata, phonenumberformat, stringbuilder);
            a(i1, phonenumberformat, stringbuilder);
            return;
        }
    }

    void a(String s1, String s2, int i1, MetadataLoader metadataloader)
    {
        boolean flag;
        String s6;
        InputStream inputstream;
        flag = "001".equals(s2);
        String s3 = String.valueOf(String.valueOf(s1));
        String s4;
        String s5;
        if (flag)
        {
            s4 = String.valueOf(i1);
        } else
        {
            s4 = s2;
        }
        s5 = String.valueOf(String.valueOf(s4));
        s6 = (new StringBuilder(1 + s3.length() + s5.length())).append(s3).append("_").append(s5).toString();
        inputstream = metadataloader.a(s6);
        if (inputstream == null)
        {
            Logger logger3 = g;
            Level level3 = Level.SEVERE;
            String s17 = String.valueOf(s6);
            String s18;
            String s19;
            String s20;
            if (s17.length() != 0)
            {
                s18 = "missing metadata: ".concat(s17);
            } else
            {
                s18 = new String("missing metadata: ");
            }
            logger3.log(level3, s18);
            s19 = String.valueOf(s6);
            if (s19.length() != 0)
            {
                s20 = "missing metadata: ".concat(s19);
            } else
            {
                s20 = new String("missing metadata: ");
            }
            throw new IllegalStateException(s20);
        }
        List list = a(new ObjectInputStream(inputstream)).a();
        if (!list.isEmpty()) goto _L2; else goto _L1
_L1:
        Logger logger2;
        Level level2;
        String s13;
        logger2 = g;
        level2 = Level.SEVERE;
        s13 = String.valueOf(s6);
        if (s13.length() == 0) goto _L4; else goto _L3
_L3:
        String s14 = "empty metadata: ".concat(s13);
_L7:
        String s15;
        logger2.log(level2, s14);
        s15 = String.valueOf(s6);
        if (s15.length() == 0) goto _L6; else goto _L5
_L5:
        String s16 = "empty metadata: ".concat(s15);
_L8:
        IOException ioexception;
        Logger logger;
        Level level;
        String s7;
        String s8;
        String s9;
        String s10;
        throw new IllegalStateException(s16);
_L4:
        try
        {
            s14 = new String("empty metadata: ");
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            logger = g;
            level = Level.SEVERE;
            s7 = String.valueOf(s6);
            Phonemetadata.PhoneMetadata phonemetadata;
            Logger logger1;
            Level level1;
            String s11;
            String s12;
            if (s7.length() != 0)
            {
                s8 = "cannot load/parse metadata: ".concat(s7);
            } else
            {
                s8 = new String("cannot load/parse metadata: ");
            }
            logger.log(level, s8, ioexception);
            s9 = String.valueOf(s6);
            if (s9.length() != 0)
            {
                s10 = "cannot load/parse metadata: ".concat(s9);
            } else
            {
                s10 = new String("cannot load/parse metadata: ");
            }
            throw new RuntimeException(s10, ioexception);
        }
          goto _L7
_L6:
        s16 = new String("empty metadata: ");
          goto _L8
_L2:
        if (list.size() <= 1) goto _L10; else goto _L9
_L9:
        logger1 = g;
        level1 = Level.WARNING;
        s11 = String.valueOf(s6);
        if (s11.length() == 0)
        {
            break MISSING_BLOCK_LABEL_522;
        }
        s12 = "invalid metadata (too many entries): ".concat(s11);
_L11:
        logger1.log(level1, s12);
_L10:
        phonemetadata = (Phonemetadata.PhoneMetadata)list.get(0);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_537;
        }
        F.put(Integer.valueOf(i1), phonemetadata);
        return;
        s12 = new String("invalid metadata (too many entries): ");
          goto _L11
        E.put(s2, phonemetadata);
        return;
          goto _L7
    }

    public void a(String s1, String s2, Phonenumber.PhoneNumber phonenumber)
    {
        a(s1, s2, false, true, phonenumber);
    }

    public boolean a(Phonenumber.PhoneNumber phonenumber, String s1)
    {
        int i1 = phonenumber.b();
        for (Phonemetadata.PhoneMetadata phonemetadata = a(i1, s1); phonemetadata == null || !"001".equals(s1) && i1 != i(s1) || a(a(phonenumber), phonemetadata) == PhoneNumberType.l;)
        {
            return false;
        }

        return true;
    }

    boolean a(String s1, Phonemetadata.PhoneNumberDesc phonenumberdesc)
    {
        return G.a(phonenumberdesc.b()).matcher(s1).matches();
    }

    public boolean a(String s1, String s2)
    {
        boolean flag;
        try
        {
            flag = d(b(s1, s2));
        }
        catch (NumberParseException numberparseexception)
        {
            return false;
        }
        return flag;
    }

    boolean a(StringBuilder stringbuilder, Phonemetadata.PhoneMetadata phonemetadata, StringBuilder stringbuilder1)
    {
        int i1;
        String s1;
        i1 = stringbuilder.length();
        s1 = phonemetadata.q();
        if (i1 != 0 && s1.length() != 0) goto _L2; else goto _L1
_L1:
        Matcher matcher;
        return false;
_L2:
        Pattern pattern;
        boolean flag;
        int j1;
        String s2;
        if (!(matcher = G.a(s1).matcher(stringbuilder)).lookingAt())
        {
            continue; /* Loop/switch isn't completed */
        }
        pattern = G.a(phonemetadata.a().a());
        flag = pattern.matcher(stringbuilder).matches();
        j1 = matcher.groupCount();
        s2 = phonemetadata.r();
        if (s2 != null && s2.length() != 0 && matcher.group(j1) != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!flag || pattern.matcher(stringbuilder.substring(matcher.end())).matches())
        {
            if (stringbuilder1 != null && j1 > 0 && matcher.group(j1) != null)
            {
                stringbuilder1.append(matcher.group(1));
            }
            stringbuilder.delete(0, matcher.end());
            return true;
        }
        if (true) goto _L1; else goto _L3
_L3:
        StringBuilder stringbuilder2 = new StringBuilder(stringbuilder);
        stringbuilder2.replace(0, i1, matcher.replaceFirst(s2));
        if (!flag || pattern.matcher(stringbuilder2.toString()).matches())
        {
            if (stringbuilder1 != null && j1 > 1)
            {
                stringbuilder1.append(matcher.group(1));
            }
            stringbuilder.replace(0, stringbuilder.length(), stringbuilder2.toString());
            return true;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public MatchType b(Phonenumber.PhoneNumber phonenumber, String s1)
    {
        MatchType matchtype2 = a(phonenumber, b(s1, "ZZ"));
        MatchType matchtype1 = matchtype2;
_L1:
        return matchtype1;
        NumberParseException numberparseexception;
        numberparseexception;
        String s2;
        if (numberparseexception.a() != NumberParseException.ErrorType.a)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        s2 = b(phonenumber.b());
label0:
        {
            if (s2.equals("ZZ"))
            {
                break label0;
            }
            matchtype1 = a(phonenumber, b(s1, s2));
            if (matchtype1 == MatchType.e)
            {
                return MatchType.d;
            }
        }
          goto _L1
        MatchType matchtype;
        Phonenumber.PhoneNumber phonenumber1 = new Phonenumber.PhoneNumber();
        a(s1, ((String) (null)), false, false, phonenumber1);
        matchtype = a(phonenumber, phonenumber1);
        return matchtype;
        NumberParseException numberparseexception1;
        numberparseexception1;
        return MatchType.a;
    }

    public Phonenumber.PhoneNumber b(String s1, String s2)
    {
        Phonenumber.PhoneNumber phonenumber = new Phonenumber.PhoneNumber();
        a(s1, s2, phonenumber);
        return phonenumber;
    }

    public String b(int i1)
    {
        List list = (List)C.get(Integer.valueOf(i1));
        if (list == null)
        {
            return "ZZ";
        } else
        {
            return (String)list.get(0);
        }
    }

    public String b(String s1, boolean flag)
    {
        Phonemetadata.PhoneMetadata phonemetadata = f(s1);
        String s2;
        if (phonemetadata == null)
        {
            Logger logger = g;
            Level level = Level.WARNING;
            if (s1 == null)
            {
                s1 = "null";
            }
            String s3 = String.valueOf(String.valueOf(s1));
            logger.log(level, (new StringBuilder(43 + s3.length())).append("Invalid or missing region code (").append(s3).append(") provided.").toString());
            s2 = null;
        } else
        {
            s2 = phonemetadata.n();
            if (s2.length() == 0)
            {
                return null;
            }
            if (flag)
            {
                return s2.replace("~", "");
            }
        }
        return s2;
    }

    String b(StringBuilder stringbuilder)
    {
        Matcher matcher = u.matcher(stringbuilder);
        if (matcher.find() && b(stringbuilder.substring(0, matcher.start())))
        {
            int i1 = 1;
            for (int j1 = matcher.groupCount(); i1 <= j1; i1++)
            {
                if (matcher.group(i1) != null)
                {
                    String s1 = matcher.group(i1);
                    stringbuilder.delete(matcher.start(), stringbuilder.length());
                    return s1;
                }
            }

        }
        return "";
    }

    public void b(String s1, String s2, Phonenumber.PhoneNumber phonenumber)
    {
        a(s1, s2, true, true, phonenumber);
    }

    public boolean b(Phonenumber.PhoneNumber phonenumber)
    {
        return a(phonenumber, c(phonenumber));
    }

    boolean b(String s1, Phonemetadata.PhoneNumberDesc phonenumberdesc)
    {
        Matcher matcher = G.a(phonenumberdesc.a()).matcher(s1);
        return a(s1, phonenumberdesc) && matcher.matches();
    }

    public Phonenumber.PhoneNumber c(String s1, String s2)
    {
        Phonenumber.PhoneNumber phonenumber = new Phonenumber.PhoneNumber();
        b(s1, s2, phonenumber);
        return phonenumber;
    }

    public String c(Phonenumber.PhoneNumber phonenumber)
    {
        int i1 = phonenumber.b();
        List list = (List)C.get(Integer.valueOf(i1));
        if (list == null)
        {
            String s1 = a(phonenumber);
            Logger logger = g;
            Level level = Level.WARNING;
            String s2 = String.valueOf(String.valueOf(s1));
            logger.log(level, (new StringBuilder(54 + s2.length())).append("Missing/invalid country_code (").append(i1).append(") for number ").append(s2).toString());
            return null;
        }
        if (list.size() == 1)
        {
            return (String)list.get(0);
        } else
        {
            return a(phonenumber, list);
        }
    }

    public boolean d(Phonenumber.PhoneNumber phonenumber)
    {
        return e(phonenumber) == ValidationResult.a;
    }

    public ValidationResult e(Phonenumber.PhoneNumber phonenumber)
    {
        String s1 = a(phonenumber);
        int i1 = phonenumber.b();
        if (!c(i1))
        {
            return ValidationResult.b;
        } else
        {
            Phonemetadata.PhoneMetadata phonemetadata = a(i1, b(i1));
            return a(G.a(phonemetadata.a().b()), s1);
        }
    }

    Phonemetadata.PhoneMetadata f(String s1)
    {
        if (!h(s1))
        {
            return null;
        }
        synchronized (E)
        {
            if (!E.containsKey(s1))
            {
                a(J, s1, 0, K);
            }
        }
        return (Phonemetadata.PhoneMetadata)E.get(s1);
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static 
    {
        HashMap hashmap = new HashMap();
        hashmap.put(Integer.valueOf(52), "1");
        hashmap.put(Integer.valueOf(54), "9");
        h = Collections.unmodifiableMap(hashmap);
        HashMap hashmap1 = new HashMap();
        hashmap1.put(Character.valueOf('0'), Character.valueOf('0'));
        hashmap1.put(Character.valueOf('1'), Character.valueOf('1'));
        hashmap1.put(Character.valueOf('2'), Character.valueOf('2'));
        hashmap1.put(Character.valueOf('3'), Character.valueOf('3'));
        hashmap1.put(Character.valueOf('4'), Character.valueOf('4'));
        hashmap1.put(Character.valueOf('5'), Character.valueOf('5'));
        hashmap1.put(Character.valueOf('6'), Character.valueOf('6'));
        hashmap1.put(Character.valueOf('7'), Character.valueOf('7'));
        hashmap1.put(Character.valueOf('8'), Character.valueOf('8'));
        hashmap1.put(Character.valueOf('9'), Character.valueOf('9'));
        HashMap hashmap2 = new HashMap(40);
        hashmap2.put(Character.valueOf('A'), Character.valueOf('2'));
        hashmap2.put(Character.valueOf('B'), Character.valueOf('2'));
        hashmap2.put(Character.valueOf('C'), Character.valueOf('2'));
        hashmap2.put(Character.valueOf('D'), Character.valueOf('3'));
        hashmap2.put(Character.valueOf('E'), Character.valueOf('3'));
        hashmap2.put(Character.valueOf('F'), Character.valueOf('3'));
        hashmap2.put(Character.valueOf('G'), Character.valueOf('4'));
        hashmap2.put(Character.valueOf('H'), Character.valueOf('4'));
        hashmap2.put(Character.valueOf('I'), Character.valueOf('4'));
        hashmap2.put(Character.valueOf('J'), Character.valueOf('5'));
        hashmap2.put(Character.valueOf('K'), Character.valueOf('5'));
        hashmap2.put(Character.valueOf('L'), Character.valueOf('5'));
        hashmap2.put(Character.valueOf('M'), Character.valueOf('6'));
        hashmap2.put(Character.valueOf('N'), Character.valueOf('6'));
        hashmap2.put(Character.valueOf('O'), Character.valueOf('6'));
        hashmap2.put(Character.valueOf('P'), Character.valueOf('7'));
        hashmap2.put(Character.valueOf('Q'), Character.valueOf('7'));
        hashmap2.put(Character.valueOf('R'), Character.valueOf('7'));
        hashmap2.put(Character.valueOf('S'), Character.valueOf('7'));
        hashmap2.put(Character.valueOf('T'), Character.valueOf('8'));
        hashmap2.put(Character.valueOf('U'), Character.valueOf('8'));
        hashmap2.put(Character.valueOf('V'), Character.valueOf('8'));
        hashmap2.put(Character.valueOf('W'), Character.valueOf('9'));
        hashmap2.put(Character.valueOf('X'), Character.valueOf('9'));
        hashmap2.put(Character.valueOf('Y'), Character.valueOf('9'));
        hashmap2.put(Character.valueOf('Z'), Character.valueOf('9'));
        j = Collections.unmodifiableMap(hashmap2);
        HashMap hashmap3 = new HashMap(100);
        hashmap3.putAll(j);
        hashmap3.putAll(hashmap1);
        k = Collections.unmodifiableMap(hashmap3);
        HashMap hashmap4 = new HashMap();
        hashmap4.putAll(hashmap1);
        hashmap4.put(Character.valueOf('+'), Character.valueOf('+'));
        hashmap4.put(Character.valueOf('*'), Character.valueOf('*'));
        i = Collections.unmodifiableMap(hashmap4);
        HashMap hashmap5 = new HashMap();
        char c1;
        for (Iterator iterator = j.keySet().iterator(); iterator.hasNext(); hashmap5.put(Character.valueOf(c1), Character.valueOf(c1)))
        {
            c1 = ((Character)iterator.next()).charValue();
            hashmap5.put(Character.valueOf(Character.toLowerCase(c1)), Character.valueOf(c1));
        }

        hashmap5.putAll(hashmap1);
        hashmap5.put(Character.valueOf('-'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\uFF0D'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2010'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2011'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2012'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2013'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2014'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2015'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('\u2212'), Character.valueOf('-'));
        hashmap5.put(Character.valueOf('/'), Character.valueOf('/'));
        hashmap5.put(Character.valueOf('\uFF0F'), Character.valueOf('/'));
        hashmap5.put(Character.valueOf(' '), Character.valueOf(' '));
        hashmap5.put(Character.valueOf('\u3000'), Character.valueOf(' '));
        hashmap5.put(Character.valueOf('\u2060'), Character.valueOf(' '));
        hashmap5.put(Character.valueOf('.'), Character.valueOf('.'));
        hashmap5.put(Character.valueOf('\uFF0E'), Character.valueOf('.'));
        l = Collections.unmodifiableMap(hashmap5);
        String s1 = String.valueOf(Arrays.toString(j.keySet().toArray()).replaceAll("[, \\[\\]]", ""));
        String s2 = String.valueOf(Arrays.toString(j.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", ""));
        String s3;
        String s4;
        String s5;
        String s6;
        String s7;
        String s8;
        String s9;
        String s10;
        String s11;
        if (s2.length() != 0)
        {
            s3 = s1.concat(s2);
        } else
        {
            s3 = new String(s1);
        }
        n = s3;
        s4 = String.valueOf(String.valueOf("\\p{Nd}{2}|[+\uFF0B]*+(?:[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E*"));
        s5 = String.valueOf(String.valueOf(n));
        s6 = String.valueOf(String.valueOf("\\p{Nd}"));
        s = (new StringBuilder(2 + s4.length() + s5.length() + s6.length())).append(s4).append(s5).append(s6).append("]*").toString();
        s7 = String.valueOf("x\uFF58#\uFF03~\uFF5E");
        if (s7.length() != 0)
        {
            s8 = ",".concat(s7);
        } else
        {
            s8 = new String(",");
        }
        t = g(s8);
        s9 = String.valueOf(String.valueOf(t));
        u = Pattern.compile((new StringBuilder(5 + s9.length())).append("(?:").append(s9).append(")$").toString(), 66);
        s10 = String.valueOf(String.valueOf(s));
        s11 = String.valueOf(String.valueOf(t));
        v = Pattern.compile((new StringBuilder(5 + s10.length() + s11.length())).append(s10).append("(?:").append(s11).append(")?").toString(), 66);
    }
}
