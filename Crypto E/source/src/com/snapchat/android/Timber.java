// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.util.Log;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.debug.DebugCapturer;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.snapchat.android:
//            TimberTimingLogger

public class Timber
{
    static final class LogType extends Enum
    {

        public static final LogType a;
        public static final LogType b;
        public static final LogType c;
        public static final LogType d;
        public static final LogType e;
        public static final LogType f;
        public static final LogType g;
        private static final LogType h[];

        public static LogType valueOf(String s)
        {
            return (LogType)Enum.valueOf(com/snapchat/android/Timber$LogType, s);
        }

        public static LogType[] values()
        {
            return (LogType[])h.clone();
        }

        static 
        {
            a = new LogType("VERBOSE", 0);
            b = new LogType("INFO", 1);
            c = new LogType("DEBUG", 2);
            d = new LogType("WARNING", 3);
            e = new LogType("ERROR_WITHOUT_TRACE", 4);
            f = new LogType("ERROR_WITH_TRACE", 5);
            g = new LogType("CHAT", 6);
            LogType alogtype[] = new LogType[7];
            alogtype[0] = a;
            alogtype[1] = b;
            alogtype[2] = c;
            alogtype[3] = d;
            alogtype[4] = e;
            alogtype[5] = f;
            alogtype[6] = g;
            h = alogtype;
        }

        private LogType(String s, int i)
        {
            super(s, i);
        }
    }


    public Timber()
    {
    }

    public static String a()
    {
        if (!ReleaseManager.e())
        {
            return "";
        } else
        {
            StackTraceElement stacktraceelement = Thread.currentThread().getStackTrace()[4];
            String s = stacktraceelement.getClassName();
            String s1 = s.substring(1 + s.lastIndexOf('.'));
            return (new StringBuilder()).append(s1).append(".").append(stacktraceelement.getMethodName()).toString();
        }
    }

    public static List a(String s)
    {
        ArrayList arraylist = new ArrayList();
        int i = 0;
        while (i < s.length()) 
        {
            if (i + 3800 < s.length())
            {
                arraylist.add(s.substring(i, i + 3800));
            } else
            {
                arraylist.add(s.substring(i, s.length()));
            }
            i += 3800;
        }
        return arraylist;
    }

    public static transient void a(LogType logtype, String s, boolean flag, Throwable throwable, String s1, Object aobj[])
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            ScExecutors.f.submit(new Runnable(s1, aobj, logtype, s, flag, throwable) {

                final String a;
                final Object b[];
                final LogType c;
                final String d;
                final boolean e;
                final Throwable f;

                public void run()
                {
                    String s2;
                    s2 = a;
                    if (b.length > 0)
                    {
                        s2 = String.format(a, b);
                    }
                    static class _cls3
                    {

                        static final int a[];

                        static 
                        {
                            a = new int[LogType.values().length];
                            try
                            {
                                a[LogType.a.ordinal()] = 1;
                            }
                            catch (NoSuchFieldError nosuchfielderror) { }
                            try
                            {
                                a[LogType.b.ordinal()] = 2;
                            }
                            catch (NoSuchFieldError nosuchfielderror1) { }
                            try
                            {
                                a[LogType.c.ordinal()] = 3;
                            }
                            catch (NoSuchFieldError nosuchfielderror2) { }
                            try
                            {
                                a[LogType.d.ordinal()] = 4;
                            }
                            catch (NoSuchFieldError nosuchfielderror3) { }
                            try
                            {
                                a[LogType.e.ordinal()] = 5;
                            }
                            catch (NoSuchFieldError nosuchfielderror4) { }
                            try
                            {
                                a[LogType.f.ordinal()] = 6;
                            }
                            catch (NoSuchFieldError nosuchfielderror5) { }
                            try
                            {
                                a[LogType.g.ordinal()] = 7;
                            }
                            catch (NoSuchFieldError nosuchfielderror6)
                            {
                                return;
                            }
                        }
                    }

                    _cls3.a[c.ordinal()];
                    JVM INSTR tableswitch 1 7: default 80
                //                               1 112
                //                               2 144
                //                               3 176
                //                               4 208
                //                               5 255
                //                               6 302
                //                               7 357;
                       goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
                    Log.v(d, s2);
                    if (e)
                    {
                        DebugCapturer.a(c.name(), d, s2);
                    }
_L10:
                    return;
_L2:
                    Log.v(d, s2);
                    if (e)
                    {
                        DebugCapturer.a(c.name(), d, s2);
                        return;
                    }
                    continue; /* Loop/switch isn't completed */
_L3:
                    Log.i(d, s2);
                    if (e)
                    {
                        DebugCapturer.a(c.name(), d, s2);
                        return;
                    }
                    continue; /* Loop/switch isn't completed */
_L4:
                    Log.d(d, s2);
                    if (e)
                    {
                        DebugCapturer.a(c.name(), d, s2);
                        return;
                    }
                    continue; /* Loop/switch isn't completed */
_L5:
                    Log.w(d, s2);
                    if (e)
                    {
                        DebugCapturer.b(c.name(), d, s2);
                        DebugCapturer.a(c.name(), d, s2);
                        return;
                    }
                    continue; /* Loop/switch isn't completed */
_L6:
                    Log.e(d, s2);
                    if (e)
                    {
                        DebugCapturer.b(c.name(), d, s2);
                        DebugCapturer.a(c.name(), d, s2);
                        return;
                    }
                    continue; /* Loop/switch isn't completed */
_L7:
                    String s3 = Log.getStackTraceString(f);
                    Log.e(d, s3);
                    if (e)
                    {
                        DebugCapturer.b(c.name(), d, s3);
                        DebugCapturer.a(c.name(), d, s3);
                        return;
                    }
                    continue; /* Loop/switch isn't completed */
_L8:
                    Log.i(d, s2);
                    if (e)
                    {
                        DebugCapturer.b(c.name(), d, s2);
                        return;
                    }
                    if (true) goto _L10; else goto _L9
_L9:
                }

            
            {
                a = s;
                b = aobj;
                c = logtype;
                d = s1;
                e = flag;
                f = throwable;
                super();
            }
            });
            return;
        }
    }

    public static void a(TimberTimingLogger timbertiminglogger)
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            ScExecutors.f.submit(new Runnable(timbertiminglogger) {

                final TimberTimingLogger a;

                public void run()
                {
                    a.b();
                }

            
            {
                a = timbertiminglogger;
                super();
            }
            });
            return;
        }
    }

    public static transient void a(String s, String s1, Object aobj[])
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            a(LogType.a, s, true, null, s1, aobj);
            return;
        }
    }

    public static void a(String s, Throwable throwable)
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            a(LogType.f, s, true, throwable, "", new Object[0]);
            return;
        }
    }

    public static transient void a(String s, boolean flag, String s1, Object aobj[])
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            a(LogType.b, s, flag, null, s1, aobj);
            return;
        }
    }

    public static transient void b(String s, String s1, Object aobj[])
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            a(LogType.b, s, true, null, s1, aobj);
            return;
        }
    }

    public static transient void b(String s, boolean flag, String s1, Object aobj[])
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            a(LogType.c, s, flag, null, s1, aobj);
            return;
        }
    }

    public static transient void c(String s, String s1, Object aobj[])
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            a(LogType.c, s, true, null, s1, aobj);
            return;
        }
    }

    public static transient void c(String s, boolean flag, String s1, Object aobj[])
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            a(LogType.g, s, flag, null, s1, aobj);
            return;
        }
    }

    public static transient void d(String s, String s1, Object aobj[])
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            a(LogType.d, s, true, null, s1, aobj);
            return;
        }
    }

    public static transient void e(String s, String s1, Object aobj[])
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            a(LogType.e, s, true, null, s1, aobj);
            return;
        }
    }

    public static transient void f(String s, String s1, Object aobj[])
    {
        if (!ReleaseManager.f())
        {
            return;
        } else
        {
            a(LogType.g, s, true, null, s1, aobj);
            return;
        }
    }
}
