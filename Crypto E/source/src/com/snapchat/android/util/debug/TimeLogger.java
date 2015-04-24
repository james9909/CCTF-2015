// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.util.Log;
import com.snapchat.android.util.PrimitiveUtils;
import com.snapchat.android.util.system.Clock;
import com.snapchat.android.util.system.ClockProvider;
import java.util.HashMap;

// Referenced classes of package com.snapchat.android.util.debug:
//            ReleaseManager

public class TimeLogger
{
    static final class Type extends Enum
    {

        public static final Type a;
        public static final Type b;
        public static final Type c;
        private static final Type d[];

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/snapchat/android/util/debug/TimeLogger$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])d.clone();
        }

        static 
        {
            a = new Type("BEGIN", 0);
            b = new Type("END", 1);
            c = new Type("ONE_TIME_EVENT", 2);
            Type atype[] = new Type[3];
            atype[0] = a;
            atype[1] = b;
            atype[2] = c;
            d = atype;
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    protected static HashMap a = new HashMap();
    private static Long b = null;
    private static Clock c = null;

    public TimeLogger()
    {
    }

    private static long a(String s, Type type, boolean flag)
    {
        long l;
        long l1;
        long l2;
        if (c == null)
        {
            c = (new ClockProvider()).a();
        }
        l = c.b();
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[Type.values().length];
                try
                {
                    a[Type.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[Type.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[Type.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        if (b == null)
        {
            b = Long.valueOf(l);
            l1 = 0L;
        } else
        {
            l1 = l - b.longValue();
        }
        _cls1.a[type.ordinal()];
        JVM INSTR tableswitch 1 3: default 76
    //                   1 97
    //                   2 151
    //                   3 215;
           goto _L1 _L2 _L3 _L4
_L1:
        l2 = -1L;
_L6:
        return l2;
_L2:
        a.put(s, Long.valueOf(l));
        if (flag)
        {
            Log.v("TimeLogger", (new StringBuilder()).append(l1).append(", ").append(s).append(" BEGIN").toString());
        }
        continue; /* Loop/switch isn't completed */
_L3:
        l2 = l - PrimitiveUtils.a((Long)a.get(s));
        if (!flag) goto _L6; else goto _L5
_L5:
        Log.v("TimeLogger", (new StringBuilder()).append(l1).append(", ").append(s).append(" END ").append(l2).toString());
        return l2;
_L4:
        if (flag)
        {
            Log.v("TimeLogger", (new StringBuilder()).append(l1).append(", ").append(s).toString());
        }
        if (true) goto _L1; else goto _L7
_L7:
    }

    public static void a()
    {
        if (ReleaseManager.f())
        {
            a(d(), true);
        }
    }

    public static void a(String s)
    {
        if (ReleaseManager.f())
        {
            a(s, true);
        }
    }

    public static void a(String s, boolean flag)
    {
        a(s, Type.a, flag);
    }

    public static long b()
    {
        if (ReleaseManager.f())
        {
            return b(d(), true);
        } else
        {
            return -1L;
        }
    }

    public static long b(String s)
    {
        if (ReleaseManager.f())
        {
            return b(s, true);
        } else
        {
            return -1L;
        }
    }

    public static long b(String s, boolean flag)
    {
        return a(s, Type.b, flag);
    }

    public static void c()
    {
        b = null;
        a.clear();
    }

    public static void c(String s)
    {
        a(s, Type.a, false);
    }

    public static long d(String s)
    {
        return a(s, Type.b, false);
    }

    private static String d()
    {
        StackTraceElement stacktraceelement = Thread.currentThread().getStackTrace()[4];
        String s = stacktraceelement.getClassName();
        String s1 = s.substring(1 + s.lastIndexOf('.'));
        return (new StringBuilder()).append(s1).append(".").append(stacktraceelement.getMethodName()).toString();
    }

    public static void e(String s)
    {
        if (ReleaseManager.f())
        {
            a(s, Type.c, true);
        }
    }

}
