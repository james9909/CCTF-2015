// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.content.Context;
import com.snapchat.android.SnapchatApplication;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.util.debug:
//            ScApplicationInfo

public class ReleaseManager
{
    public static final class ReleaseMode extends Enum
    {

        public static final ReleaseMode a;
        public static final ReleaseMode b;
        public static final ReleaseMode c;
        public static final ReleaseMode d;
        public static final ReleaseMode e;
        private static final ReleaseMode f[];

        public static ReleaseMode valueOf(String s)
        {
            return (ReleaseMode)Enum.valueOf(com/snapchat/android/util/debug/ReleaseManager$ReleaseMode, s);
        }

        public static ReleaseMode[] values()
        {
            return (ReleaseMode[])f.clone();
        }

        static 
        {
            a = new ReleaseMode("DEBUG", 0);
            b = new ReleaseMode("PERF", 1);
            c = new ReleaseMode("ALPHA", 2);
            d = new ReleaseMode("BETA", 3);
            e = new ReleaseMode("PRODUCTION", 4);
            ReleaseMode areleasemode[] = new ReleaseMode[5];
            areleasemode[0] = a;
            areleasemode[1] = b;
            areleasemode[2] = c;
            areleasemode[3] = d;
            areleasemode[4] = e;
            f = areleasemode;
        }

        private ReleaseMode(String s, int j)
        {
            super(s, j);
        }
    }


    private static final ReleaseManager a = new ReleaseManager();
    private static ReleaseMode b;

    private ReleaseManager()
    {
    }

    public static ReleaseManager a()
    {
        return a;
    }

    public static void a(Context context)
    {
        String s = ScApplicationInfo.b(context);
        if (s.equals("") || SnapchatApplication.d())
        {
            b = ReleaseMode.e;
            return;
        }
        String s1 = s.toUpperCase(Locale.US);
        if (s1.contains("DEBUG") || s1.contains("PROFILE"))
        {
            b = ReleaseMode.a;
            return;
        }
        if (s1.contains("PERF"))
        {
            b = ReleaseMode.b;
            return;
        }
        if (s1.contains("ALPHA"))
        {
            b = ReleaseMode.c;
            return;
        }
        if (s1.contains("BETA"))
        {
            b = ReleaseMode.d;
            return;
        } else
        {
            b = ReleaseMode.e;
            return;
        }
    }

    public static boolean e()
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[ReleaseMode.values().length];
                try
                {
                    a[ReleaseMode.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[ReleaseMode.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[ReleaseMode.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[ReleaseMode.d.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[b.ordinal()])
        {
        default:
            return false;

        case 1: // '\001'
        case 2: // '\002'
            return true;
        }
    }

    public static boolean f()
    {
        switch (_cls1.a[b.ordinal()])
        {
        default:
            return false;

        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
            return true;
        }
    }

    public static boolean g()
    {
        switch (_cls1.a[b.ordinal()])
        {
        case 2: // '\002'
        default:
            return false;

        case 1: // '\001'
        case 3: // '\003'
        case 4: // '\004'
            return true;
        }
    }

    public boolean b()
    {
        return e();
    }

    public boolean c()
    {
        return f();
    }

    public boolean d()
    {
        return g();
    }

    public boolean h()
    {
        String s = ScApplicationInfo.a();
        if (s == null)
        {
            return false;
        } else
        {
            return s.toLowerCase().contains("flavortest");
        }
    }

    public boolean i()
    {
        return false;
    }

    static 
    {
        b = ReleaseMode.a;
    }
}
