// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.Context;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

// Referenced classes of package crittercism.android:
//            bi, dg, bv, bw

public class bj
{
    public static final class a
    {

        int a;

        public a(int l)
        {
            a = l;
        }
    }


    private static final String a = crittercism/android/bj.getName();
    private final File b;
    private bw c;
    private int d;
    private int e;
    private int f;
    private a g;
    private boolean h;
    private String i;
    private String j;

    public bj(Context context, bi bi1)
    {
        String s = bi1.a();
        this(new File((new StringBuilder()).append(context.getFilesDir().getAbsolutePath()).append("//com.crittercism//").append(s).toString()), bi1.c(), bi1.d(), bi1.f(), bi1.b(), bi1.g(), bi1.e());
    }

    private bj(File file, a a1, bw bw1, int l, int i1, String s, String s1)
    {
        h = false;
        g = a1;
        c = bw1;
        f = l;
        e = i1;
        i = s;
        j = s1;
        b = file;
        file.mkdirs();
        f();
        d = j().length;
    }

    private boolean f()
    {
        if (!b.isDirectory())
        {
            h = true;
            String s = b.getAbsolutePath();
            if (b.exists())
            {
                new IOException((new StringBuilder()).append(s).append(" is not a directory").toString());
            } else
            {
                new FileNotFoundException((new StringBuilder()).append(s).append(" does not exist").toString());
            }
        }
        return !h;
    }

    private void g()
    {
        while (b() > k() && h()) ;
    }

    private boolean h()
    {
        a _tmp = g;
        if (g != null)
        {
            a a1 = g;
            File afile[] = i();
            int l = afile.length;
            int i1 = a1.a;
            File file = null;
            if (l > i1)
            {
                file = afile[a1.a];
            }
            if (file != null && file.delete())
            {
                return true;
            }
        }
        return false;
    }

    private File[] i()
    {
        File afile[] = j();
        Arrays.sort(afile);
        return afile;
    }

    private File[] j()
    {
        File afile[] = b.listFiles();
        if (afile == null)
        {
            afile = new File[0];
        }
        return afile;
    }

    private int k()
    {
        this;
        JVM INSTR monitorenter ;
        int l = e;
        this;
        JVM INSTR monitorexit ;
        return l;
        Exception exception;
        exception;
        throw exception;
    }

    public final bj a(Context context)
    {
        String s = b.getName();
        String s1 = (new StringBuilder()).append(s).append("_").append(UUID.randomUUID().toString()).toString();
        return new bj(new File((new StringBuilder()).append(context.getFilesDir().getAbsolutePath()).append("//com.crittercism/pending/").append(s1).toString()), g, c, f, e, i, j);
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = f();
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        File afile[] = j();
        int l = 0;
_L4:
        if (l >= afile.length)
        {
            break; /* Loop/switch isn't completed */
        }
        afile[l].delete();
        l++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(bj bj1)
    {
        int l;
        while (bj1 == null || (l = b.getName().compareTo(bj1.b.getName())) == 0) 
        {
            return;
        }
        if (l >= 0) goto _L2; else goto _L1
_L1:
        bj bj2 = bj1;
        bj bj3 = this;
_L4:
        bj3;
        JVM INSTR monitorenter ;
        bj2;
        JVM INSTR monitorenter ;
        if (f() && bj1.f())
        {
            break; /* Loop/switch isn't completed */
        }
        bj2;
        JVM INSTR monitorexit ;
        bj3;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        bj3;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        bj2 = this;
        bj3 = bj1;
        if (true) goto _L4; else goto _L3
_L3:
        File afile[] = i();
        int i1 = 0;
_L6:
        if (i1 >= afile.length)
        {
            break; /* Loop/switch isn't completed */
        }
        File file = new File(bj1.b, afile[i1].getName());
        afile[i1].renameTo(file);
        i1++;
        if (true) goto _L6; else goto _L5
_L5:
        bj1.g();
        bj2;
        JVM INSTR monitorexit ;
        bj3;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        bj2;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public final boolean a(bv bv1)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = f();
        boolean flag1 = false;
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        if (d < f)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        a;
        dg.b();
        flag1 = false;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
        File file;
        int l;
        boolean flag2;
        file = new File(b, bv1.b());
        l = b();
        if (l != k())
        {
            break MISSING_BLOCK_LABEL_96;
        }
        flag2 = h();
        flag1 = false;
        if (!flag2)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (l <= k())
        {
            break MISSING_BLOCK_LABEL_116;
        }
        h = true;
        flag1 = false;
        continue; /* Loop/switch isn't completed */
        BufferedOutputStream bufferedoutputstream = new BufferedOutputStream(new FileOutputStream(file));
        bv1.a(bufferedoutputstream);
        d = 1 + d;
        bufferedoutputstream.close();
_L4:
        flag1 = true;
        continue; /* Loop/switch isn't completed */
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        a;
        (new StringBuilder("Could not open output stream to : ")).append(file);
        dg.a();
        flag1 = false;
        continue; /* Loop/switch isn't completed */
        IOException ioexception3;
        ioexception3;
        file.delete();
        dg.a("Crittercism", (new StringBuilder("Unable to close file ")).append(file.getAbsolutePath()).toString(), ioexception3);
        if (true) goto _L4; else goto _L3
_L3:
        IOException ioexception1;
        ioexception1;
        file.delete();
        dg.a("Crittercism", (new StringBuilder("Unable to write to ")).append(file.getAbsolutePath()).toString(), ioexception1);
        bufferedoutputstream.close();
        flag1 = false;
        continue; /* Loop/switch isn't completed */
        IOException ioexception2;
        ioexception2;
        file.delete();
        dg.a("Crittercism", (new StringBuilder("Unable to close file ")).append(file.getAbsolutePath()).toString(), ioexception2);
        flag1 = false;
        if (true) goto _L1; else goto _L5
_L5:
        Exception exception1;
        exception1;
        bufferedoutputstream.close();
_L6:
        throw exception1;
        IOException ioexception;
        ioexception;
        file.delete();
        dg.a("Crittercism", (new StringBuilder("Unable to close file ")).append(file.getAbsolutePath()).toString(), ioexception);
          goto _L6
    }

    public final int b()
    {
        this;
        JVM INSTR monitorenter ;
        int l = j().length;
        this;
        JVM INSTR monitorexit ;
        return l;
        Exception exception;
        exception;
        throw exception;
    }

    public final List c()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        boolean flag;
        arraylist = new ArrayList();
        flag = f();
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return arraylist;
_L2:
        File afile[];
        c;
        afile = i();
        int l = 0;
_L4:
        if (l >= afile.length)
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist.add(c.a(afile[l]));
        l++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

    public final String d()
    {
        return i;
    }

    public final String e()
    {
        return j;
    }

}
