// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.util.Log;
import java.util.concurrent.ExecutorService;

// Referenced classes of package crittercism.android:
//            ca, dl, co

public final class dg
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        private static final a d[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(crittercism/android/dg$a, s);
        }

        public static a[] values()
        {
            return (a[])d.clone();
        }

        static 
        {
            a = new a("UNINITIALIZED", 0);
            b = new a("ON", 1);
            c = new a("OFF", 2);
            a aa[] = new a[3];
            aa[0] = a;
            aa[1] = b;
            aa[2] = c;
            d = aa;
        }

        private a(String s, int i)
        {
            super(s, i);
        }
    }


    public static a a;
    private static dl b;

    public static void a()
    {
    }

    public static void a(dl dl1)
    {
        b = dl1;
    }

    public static void a(String s, String s1)
    {
        Log.i(s, s1);
    }

    public static void a(String s, String s1, Throwable throwable)
    {
        Log.e(s, s1, throwable);
    }

    public static void a(Throwable throwable)
    {
        if (throwable instanceof ca)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        b;
        if (b != null && a == a.b)
        {
            dl dl1 = b;
            dl._cls1 _lcls1 = new dl._cls1(dl1, throwable, Thread.currentThread().getId());
            if (!dl1.c.a(_lcls1))
            {
                dl1.b.execute(_lcls1);
            }
        }
        return;
        ThreadDeath threaddeath;
        threaddeath;
        throw threaddeath;
        Throwable throwable1;
        throwable1;
    }

    public static void b()
    {
    }

    public static void b(String s, String s1)
    {
        Log.e(s, s1);
    }

    public static void b(String s, String s1, Throwable throwable)
    {
        Log.w(s, s1, throwable);
    }

    public static void c()
    {
    }

    public static void c(String s, String s1)
    {
        Log.w(s, s1);
    }

    static 
    {
        a = a.a;
    }
}
