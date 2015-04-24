// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time;

import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.joda.time.chrono.BaseChronology;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.DateTimeFormatterBuilder;
import org.joda.time.format.FormatUtils;
import org.joda.time.tz.DefaultNameProvider;
import org.joda.time.tz.FixedDateTimeZone;
import org.joda.time.tz.NameProvider;
import org.joda.time.tz.Provider;
import org.joda.time.tz.UTCProvider;
import org.joda.time.tz.ZoneInfoProvider;

// Referenced classes of package org.joda.time:
//            IllegalInstantException, Chronology

public abstract class DateTimeZone
    implements Serializable
{
    static final class Stub
        implements Serializable
    {
    }


    public static final DateTimeZone a = new FixedDateTimeZone("UTC", "UTC", 0, 0);
    private static Provider b;
    private static NameProvider c;
    private static Set d;
    private static volatile DateTimeZone e;
    private static DateTimeFormatter f;
    private static Map g;
    private static Map h;
    private final String i;

    public DateTimeZone(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Id must not be null");
        } else
        {
            i = s;
            return;
        }
    }

    public static DateTimeZone a()
    {
        DateTimeZone datetimezone = e;
        if (datetimezone != null) goto _L2; else goto _L1
_L1:
        org/joda/time/DateTimeZone;
        JVM INSTR monitorenter ;
        DateTimeZone datetimezone1 = e;
        if (datetimezone1 != null) goto _L4; else goto _L3
_L3:
        datetimezone1 = null;
        String s = System.getProperty("user.timezone");
        datetimezone1 = null;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        DateTimeZone datetimezone3 = a(s);
        datetimezone1 = datetimezone3;
_L7:
        if (datetimezone1 != null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        DateTimeZone datetimezone2 = a(TimeZone.getDefault());
        datetimezone1 = datetimezone2;
_L6:
        if (datetimezone1 != null)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        datetimezone1 = a;
        e = datetimezone1;
_L4:
        org/joda/time/DateTimeZone;
        JVM INSTR monitorexit ;
        return datetimezone1;
        Exception exception;
        exception;
        org/joda/time/DateTimeZone;
        JVM INSTR monitorexit ;
        throw exception;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        if (true) goto _L6; else goto _L5
_L5:
        RuntimeException runtimeexception;
        runtimeexception;
        datetimezone1 = null;
        if (true) goto _L7; else goto _L2
_L2:
        return datetimezone;
    }

    public static DateTimeZone a(int j)
    {
        if (j < 0xfad9a401 || j > 0x5265bff)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Millis out of range: ").append(j).toString());
        } else
        {
            return a(b(j), j);
        }
    }

    public static DateTimeZone a(String s)
    {
        DateTimeZone datetimezone;
        if (s == null)
        {
            datetimezone = a();
        } else
        {
            if (s.equals("UTC"))
            {
                return a;
            }
            datetimezone = b.a(s);
            if (datetimezone == null)
            {
                if (s.startsWith("+") || s.startsWith("-"))
                {
                    int j = c(s);
                    if ((long)j == 0L)
                    {
                        return a;
                    } else
                    {
                        return a(b(j), j);
                    }
                } else
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("The datetime zone id '").append(s).append("' is not recognised").toString());
                }
            }
        }
        return datetimezone;
    }

    private static DateTimeZone a(String s, int j)
    {
        org/joda/time/DateTimeZone;
        JVM INSTR monitorenter ;
        if (j != 0) goto _L2; else goto _L1
_L1:
        Object obj = a;
_L4:
        org/joda/time/DateTimeZone;
        JVM INSTR monitorexit ;
        return ((DateTimeZone) (obj));
_L2:
        Reference reference;
        if (g == null)
        {
            g = new HashMap();
        }
        reference = (Reference)g.get(s);
        if (reference == null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        obj = (DateTimeZone)reference.get();
        if (obj != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = new FixedDateTimeZone(s, null, j, j);
        g.put(s, new SoftReference(obj));
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public static DateTimeZone a(TimeZone timezone)
    {
        DateTimeZone datetimezone;
        if (timezone == null)
        {
            datetimezone = a();
        } else
        {
            String s = timezone.getID();
            if (s.equals("UTC"))
            {
                return a;
            }
            String s1 = b(s);
            datetimezone = null;
            if (s1 != null)
            {
                datetimezone = b.a(s1);
            }
            if (datetimezone == null)
            {
                datetimezone = b.a(s);
            }
            if (datetimezone == null)
            {
                if (s1 == null)
                {
                    String s2 = timezone.getID();
                    if (s2.startsWith("GMT+") || s2.startsWith("GMT-"))
                    {
                        int j = c(s2.substring(3));
                        if ((long)j == 0L)
                        {
                            return a;
                        } else
                        {
                            return a(b(j), j);
                        }
                    }
                }
                throw new IllegalArgumentException((new StringBuilder()).append("The datetime zone id '").append(s).append("' is not recognised").toString());
            }
        }
        return datetimezone;
    }

    private static void a(NameProvider nameprovider)
    {
        if (nameprovider == null)
        {
            nameprovider = f();
        }
        c = nameprovider;
    }

    private static void a(Provider provider)
    {
        if (provider == null)
        {
            provider = e();
        }
        Set set = provider.a();
        if (set == null || set.size() == 0)
        {
            throw new IllegalArgumentException("The provider doesn't have any available ids");
        }
        if (!set.contains("UTC"))
        {
            throw new IllegalArgumentException("The provider doesn't support UTC");
        }
        if (!a.equals(provider.a("UTC")))
        {
            throw new IllegalArgumentException("Invalid UTC zone provided");
        } else
        {
            b = provider;
            d = set;
            return;
        }
    }

    private static String b(int j)
    {
        StringBuffer stringbuffer = new StringBuffer();
        int k;
        int l;
        int i1;
        int j1;
        if (j >= 0)
        {
            stringbuffer.append('+');
        } else
        {
            stringbuffer.append('-');
            j = -j;
        }
        k = j / 0x36ee80;
        FormatUtils.a(stringbuffer, k, 2);
        l = j - k * 0x36ee80;
        i1 = l / 60000;
        stringbuffer.append(':');
        FormatUtils.a(stringbuffer, i1, 2);
        j1 = l - i1 * 60000;
        if (j1 == 0)
        {
            return stringbuffer.toString();
        }
        int k1 = j1 / 1000;
        stringbuffer.append(':');
        FormatUtils.a(stringbuffer, k1, 2);
        int l1 = j1 - k1 * 1000;
        if (l1 == 0)
        {
            return stringbuffer.toString();
        } else
        {
            stringbuffer.append('.');
            FormatUtils.a(stringbuffer, l1, 3);
            return stringbuffer.toString();
        }
    }

    private static String b(String s)
    {
        org/joda/time/DateTimeZone;
        JVM INSTR monitorenter ;
        Object obj = h;
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_426;
        }
        obj = new HashMap();
        ((Map) (obj)).put("GMT", "UTC");
        ((Map) (obj)).put("WET", "WET");
        ((Map) (obj)).put("CET", "CET");
        ((Map) (obj)).put("MET", "CET");
        ((Map) (obj)).put("ECT", "CET");
        ((Map) (obj)).put("EET", "EET");
        ((Map) (obj)).put("MIT", "Pacific/Apia");
        ((Map) (obj)).put("HST", "Pacific/Honolulu");
        ((Map) (obj)).put("AST", "America/Anchorage");
        ((Map) (obj)).put("PST", "America/Los_Angeles");
        ((Map) (obj)).put("MST", "America/Denver");
        ((Map) (obj)).put("PNT", "America/Phoenix");
        ((Map) (obj)).put("CST", "America/Chicago");
        ((Map) (obj)).put("EST", "America/New_York");
        ((Map) (obj)).put("IET", "America/Indiana/Indianapolis");
        ((Map) (obj)).put("PRT", "America/Puerto_Rico");
        ((Map) (obj)).put("CNT", "America/St_Johns");
        ((Map) (obj)).put("AGT", "America/Argentina/Buenos_Aires");
        ((Map) (obj)).put("BET", "America/Sao_Paulo");
        ((Map) (obj)).put("ART", "Africa/Cairo");
        ((Map) (obj)).put("CAT", "Africa/Harare");
        ((Map) (obj)).put("EAT", "Africa/Addis_Ababa");
        ((Map) (obj)).put("NET", "Asia/Yerevan");
        ((Map) (obj)).put("PLT", "Asia/Karachi");
        ((Map) (obj)).put("IST", "Asia/Kolkata");
        ((Map) (obj)).put("BST", "Asia/Dhaka");
        ((Map) (obj)).put("VST", "Asia/Ho_Chi_Minh");
        ((Map) (obj)).put("CTT", "Asia/Shanghai");
        ((Map) (obj)).put("JST", "Asia/Tokyo");
        ((Map) (obj)).put("ACT", "Australia/Darwin");
        ((Map) (obj)).put("AET", "Australia/Sydney");
        ((Map) (obj)).put("SST", "Pacific/Guadalcanal");
        ((Map) (obj)).put("NST", "Pacific/Auckland");
        h = ((Map) (obj));
        String s1 = (String)((Map) (obj)).get(s);
        org/joda/time/DateTimeZone;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public static Set b()
    {
        return d;
    }

    private static int c(String s)
    {
        BaseChronology basechronology = new BaseChronology() {

            public Chronology a(DateTimeZone datetimezone)
            {
                return this;
            }

            public DateTimeZone a()
            {
                return null;
            }

            public Chronology b()
            {
                return this;
            }

            public String toString()
            {
                return getClass().getName();
            }

        };
        return -(int)g().a(basechronology).a(s);
    }

    private static Provider e()
    {
        String s = System.getProperty("org.joda.time.DateTimeZone.Provider");
        if (s == null) goto _L2; else goto _L1
_L1:
        Provider provider1 = (Provider)Class.forName(s).newInstance();
_L5:
        Provider provider = provider1;
_L7:
        if (provider != null) goto _L4; else goto _L3
_L3:
        Object obj = new ZoneInfoProvider("org/joda/time/tz/data");
_L6:
        if (obj == null)
        {
            obj = new UTCProvider();
        }
        return ((Provider) (obj));
        Exception exception1;
        exception1;
        Thread thread1 = Thread.currentThread();
        thread1.getThreadGroup().uncaughtException(thread1, exception1);
_L2:
        provider1 = null;
          goto _L5
        Exception exception;
        exception;
        Thread thread = Thread.currentThread();
        thread.getThreadGroup().uncaughtException(thread, exception);
_L4:
        obj = provider;
          goto _L6
        SecurityException securityexception;
        securityexception;
        provider = null;
          goto _L7
    }

    private static NameProvider f()
    {
        String s = System.getProperty("org.joda.time.DateTimeZone.NameProvider");
        if (s == null) goto _L2; else goto _L1
_L1:
        Object obj = (NameProvider)Class.forName(s).newInstance();
_L4:
        if (obj == null)
        {
            obj = new DefaultNameProvider();
        }
        return ((NameProvider) (obj));
        Exception exception;
        exception;
        Thread thread = Thread.currentThread();
        thread.getThreadGroup().uncaughtException(thread, exception);
_L2:
        obj = null;
        continue; /* Loop/switch isn't completed */
        SecurityException securityexception;
        securityexception;
        obj = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static DateTimeFormatter g()
    {
        org/joda/time/DateTimeZone;
        JVM INSTR monitorenter ;
        DateTimeFormatter datetimeformatter;
        if (f == null)
        {
            f = (new DateTimeFormatterBuilder()).a(null, true, 2, 4).a();
        }
        datetimeformatter = f;
        org/joda/time/DateTimeZone;
        JVM INSTR monitorexit ;
        return datetimeformatter;
        Exception exception;
        exception;
        throw exception;
    }

    public long a(long l, boolean flag)
    {
        long l1;
        int j;
        int k;
        l1 = 0x7fffffffffffffffL;
        j = b(l);
        k = b(l - (long)j);
        if (j == k || !flag && j >= 0) goto _L2; else goto _L1
_L1:
        long l3 = e(l - (long)j);
        if (l3 == l - (long)j)
        {
            l3 = l1;
        }
        long l4 = e(l - (long)k);
        int i1;
        long l2;
        if (l4 != l - (long)k)
        {
            l1 = l4;
        }
        if (l3 == l1) goto _L2; else goto _L3
_L3:
        if (flag)
        {
            throw new IllegalInstantException(l, c());
        }
        i1 = j;
_L5:
        l2 = l - (long)i1;
        if ((l ^ l2) < 0L && (l ^ (long)i1) < 0L)
        {
            throw new ArithmeticException("Subtracting time zone offset caused overflow");
        } else
        {
            return l2;
        }
_L2:
        i1 = k;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public long a(long l, boolean flag, long l1)
    {
        int j = b(l1);
        long l2 = l - (long)j;
        if (b(l2) == j)
        {
            return l2;
        } else
        {
            return a(l, flag);
        }
    }

    public long a(DateTimeZone datetimezone, long l)
    {
        DateTimeZone datetimezone1;
        if (datetimezone == null)
        {
            datetimezone1 = a();
        } else
        {
            datetimezone1 = datetimezone;
        }
        if (datetimezone1 == this)
        {
            return l;
        } else
        {
            return datetimezone1.a(d(l), false, l);
        }
    }

    public abstract String a(long l);

    public String a(long l, Locale locale)
    {
        if (locale == null)
        {
            locale = Locale.getDefault();
        }
        String s = a(l);
        String s1;
        if (s == null)
        {
            s1 = i;
        } else
        {
            s1 = c.a(locale, i, s);
            if (s1 == null)
            {
                return b(b(l));
            }
        }
        return s1;
    }

    public abstract int b(long l);

    public String b(long l, Locale locale)
    {
        if (locale == null)
        {
            locale = Locale.getDefault();
        }
        String s = a(l);
        String s1;
        if (s == null)
        {
            s1 = i;
        } else
        {
            s1 = c.b(locale, i, s);
            if (s1 == null)
            {
                return b(b(l));
            }
        }
        return s1;
    }

    public int c(long l)
    {
        int j = b(l);
        long l1 = l - (long)j;
        int k = b(l1);
        if (j != k)
        {
            if (j - k < 0 && e(l1) != e(l - (long)k))
            {
                return j;
            }
        } else
        if (j >= 0)
        {
            long l2 = f(l1);
            if (l2 < l1)
            {
                int i1 = b(l2);
                int j1 = i1 - j;
                if (l1 - l2 <= (long)j1)
                {
                    return i1;
                }
            }
        }
        return k;
    }

    public final String c()
    {
        return i;
    }

    public long d(long l)
    {
        int j = b(l);
        long l1 = l + (long)j;
        if ((l ^ l1) < 0L && (l ^ (long)j) >= 0L)
        {
            throw new ArithmeticException("Adding time zone offset caused overflow");
        } else
        {
            return l1;
        }
    }

    public abstract boolean d();

    public abstract long e(long l);

    public abstract boolean equals(Object obj);

    public abstract long f(long l);

    public int hashCode()
    {
        return 57 + c().hashCode();
    }

    public String toString()
    {
        return c();
    }

    static 
    {
        a(((Provider) (null)));
        a(((NameProvider) (null)));
    }
}
