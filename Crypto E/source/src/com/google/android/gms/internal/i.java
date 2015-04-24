// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.internal:
//            h, m, o, q, 
//            n

public abstract class i extends h
{
    static class a extends Exception
    {

        public a()
        {
        }

        public a(Throwable throwable)
        {
            super(throwable);
        }
    }


    private static Method kA;
    private static Method kB;
    private static Method kC;
    private static Method kD;
    private static Method kE;
    private static Method kF;
    private static Method kG;
    private static Method kH;
    private static Method kI;
    private static String kJ;
    private static String kK;
    private static String kL;
    private static o kM;
    static boolean kN = false;
    private static long startTime = 0L;

    protected i(Context context, m m1, n n)
    {
        super(context, m1, n);
    }

    static String a(Context context, m m1)
    {
        if (kK != null)
        {
            return kK;
        }
        if (kD == null)
        {
            throw new a();
        }
        ByteBuffer bytebuffer;
        String s;
        try
        {
            bytebuffer = (ByteBuffer)kD.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        if (bytebuffer != null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        throw new a();
        kK = m1.a(bytebuffer.array(), true);
        s = kK;
        return s;
    }

    static ArrayList a(MotionEvent motionevent, DisplayMetrics displaymetrics)
    {
        if (kE == null || motionevent == null)
        {
            throw new a();
        }
        ArrayList arraylist;
        try
        {
            arraylist = (ArrayList)kE.invoke(null, new Object[] {
                motionevent, displaymetrics
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        return arraylist;
    }

    protected static void a(String s, Context context, m m1)
    {
        com/google/android/gms/internal/i;
        JVM INSTR monitorenter ;
        boolean flag = kN;
        Exception exception;
        if (!flag)
        {
            try
            {
                kM = new o(m1, null);
                kJ = s;
                g(context);
                startTime = w().longValue();
                kN = true;
            }
            catch (a a1) { }
            catch (UnsupportedOperationException unsupportedoperationexception) { }
            finally
            {
                com/google/android/gms/internal/i;
            }
        }
        com/google/android/gms/internal/i;
        JVM INSTR monitorexit ;
        return;
        throw exception;
    }

    static String b(Context context, m m1)
    {
        if (kL != null)
        {
            return kL;
        }
        if (kG == null)
        {
            throw new a();
        }
        ByteBuffer bytebuffer;
        String s;
        try
        {
            bytebuffer = (ByteBuffer)kG.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        if (bytebuffer != null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        throw new a();
        kL = m1.a(bytebuffer.array(), true);
        s = kL;
        return s;
    }

    private static String b(byte abyte0[], String s)
    {
        String s1;
        try
        {
            s1 = new String(kM.c(abyte0, s), "UTF-8");
        }
        catch (o.a a1)
        {
            throw new a(a1);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new a(unsupportedencodingexception);
        }
        return s1;
    }

    static String d(Context context)
    {
        String s;
        if (kF == null)
        {
            throw new a();
        }
        try
        {
            s = (String)kF.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        throw new a();
        return s;
    }

    static ArrayList e(Context context)
    {
        ArrayList arraylist;
        if (kH == null)
        {
            throw new a();
        }
        try
        {
            arraylist = (ArrayList)kH.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        if (arraylist == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        if (arraylist.size() == 2)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        throw new a();
        return arraylist;
    }

    static int[] f(Context context)
    {
        if (kI == null)
        {
            throw new a();
        }
        int ai[];
        try
        {
            ai = (int[])(int[])kI.invoke(null, new Object[] {
                context
            });
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        return ai;
    }

    private static void g(Context context)
    {
        byte abyte0[];
        byte abyte1[];
        File file;
        File file1;
        File file2;
        FileOutputStream fileoutputstream;
        DexClassLoader dexclassloader;
        Exception exception;
        String s;
        Class class1;
        Class class2;
        Class class3;
        Class class4;
        Class class5;
        Class class6;
        Class class7;
        Class class8;
        Class class9;
        String s1;
        try
        {
            abyte0 = kM.b(q.getKey());
            abyte1 = kM.c(abyte0, q.E());
            file = context.getCacheDir();
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            throw new a(filenotfoundexception);
        }
        catch (IOException ioexception)
        {
            throw new a(ioexception);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new a(classnotfoundexception);
        }
        catch (o.a a1)
        {
            throw new a(a1);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            throw new a(nosuchmethodexception);
        }
        catch (NullPointerException nullpointerexception)
        {
            throw new a(nullpointerexception);
        }
        if (file != null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        file = context.getDir("dex", 0);
        if (file != null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        throw new a();
        file1 = file;
        file2 = File.createTempFile("ads", ".jar", file1);
        fileoutputstream = new FileOutputStream(file2);
        fileoutputstream.write(abyte1, 0, abyte1.length);
        fileoutputstream.close();
        dexclassloader = new DexClassLoader(file2.getAbsolutePath(), file1.getAbsolutePath(), null, context.getClassLoader());
        class1 = dexclassloader.loadClass(b(abyte0, q.H()));
        class2 = dexclassloader.loadClass(b(abyte0, q.T()));
        class3 = dexclassloader.loadClass(b(abyte0, q.N()));
        class4 = dexclassloader.loadClass(b(abyte0, q.L()));
        class5 = dexclassloader.loadClass(b(abyte0, q.V()));
        class6 = dexclassloader.loadClass(b(abyte0, q.J()));
        class7 = dexclassloader.loadClass(b(abyte0, q.R()));
        class8 = dexclassloader.loadClass(b(abyte0, q.P()));
        class9 = dexclassloader.loadClass(b(abyte0, q.F()));
        kA = class1.getMethod(b(abyte0, q.I()), new Class[0]);
        kB = class2.getMethod(b(abyte0, q.U()), new Class[0]);
        kC = class3.getMethod(b(abyte0, q.O()), new Class[0]);
        kD = class4.getMethod(b(abyte0, q.M()), new Class[] {
            android/content/Context
        });
        kE = class5.getMethod(b(abyte0, q.W()), new Class[] {
            android/view/MotionEvent, android/util/DisplayMetrics
        });
        kF = class6.getMethod(b(abyte0, q.K()), new Class[] {
            android/content/Context
        });
        kG = class7.getMethod(b(abyte0, q.S()), new Class[] {
            android/content/Context
        });
        kH = class8.getMethod(b(abyte0, q.Q()), new Class[] {
            android/content/Context
        });
        kI = class9.getMethod(b(abyte0, q.G()), new Class[] {
            android/content/Context
        });
        s1 = file2.getName();
        file2.delete();
        (new File(file1, s1.replace(".jar", ".dex"))).delete();
        return;
        exception;
        s = file2.getName();
        file2.delete();
        (new File(file1, s.replace(".jar", ".dex"))).delete();
        throw exception;
    }

    static String v()
    {
        if (kJ == null)
        {
            throw new a();
        } else
        {
            return kJ;
        }
    }

    static Long w()
    {
        if (kA == null)
        {
            throw new a();
        }
        Long long1;
        try
        {
            long1 = (Long)kA.invoke(null, new Object[0]);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        return long1;
    }

    static String x()
    {
        if (kC == null)
        {
            throw new a();
        }
        String s;
        try
        {
            s = (String)kC.invoke(null, new Object[0]);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        return s;
    }

    static Long y()
    {
        if (kB == null)
        {
            throw new a();
        }
        Long long1;
        try
        {
            long1 = (Long)kB.invoke(null, new Object[0]);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new a(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new a(invocationtargetexception);
        }
        return long1;
    }

    protected void b(Context context)
    {
        IOException ioexception;
        try
        {
            a(1, x());
        }
        catch (a a1) { }
        try
        {
            a(2, v());
        }
        catch (a a2) { }
        try
        {
            long l = w().longValue();
            a(25, l);
            if (startTime != 0L)
            {
                a(17, l - startTime);
                a(23, startTime);
            }
        }
        catch (a a3) { }
        try
        {
            ArrayList arraylist = e(context);
            a(31, ((Long)arraylist.get(0)).longValue());
            a(32, ((Long)arraylist.get(1)).longValue());
        }
        catch (a a4) { }
        try
        {
            a(33, y().longValue());
        }
        catch (a a5) { }
        try
        {
            a(27, a(context, ky));
        }
        catch (a a6) { }
        try
        {
            a(29, b(context, ky));
        }
        catch (a a7) { }
        try
        {
            int ai[] = f(context);
            a(5, ai[0]);
            a(6, ai[1]);
            return;
        }
        catch (a a8)
        {
            return;
        }
        ioexception;
    }

    protected void c(Context context)
    {
        IOException ioexception;
        try
        {
            a(2, v());
        }
        catch (a a1) { }
        try
        {
            a(1, x());
        }
        catch (a a2) { }
        try
        {
            a(25, w().longValue());
        }
        catch (a a3) { }
        try
        {
            ArrayList arraylist = a(kw, kx);
            a(14, ((Long)arraylist.get(0)).longValue());
            a(15, ((Long)arraylist.get(1)).longValue());
            if (arraylist.size() >= 3)
            {
                a(16, ((Long)arraylist.get(2)).longValue());
            }
            return;
        }
        catch (a a4)
        {
            return;
        }
        ioexception;
    }

}
