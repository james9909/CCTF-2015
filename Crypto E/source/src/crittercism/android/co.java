// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.ConditionVariable;
import com.crittercism.app.CrittercismNDK;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package crittercism.android:
//            cq, ba, ay, av, 
//            be, bj, cn, az, 
//            de, dg, da, au, 
//            df, cz, cb, dc, 
//            dd, bi, h, dk, 
//            bs, bt, aw

public final class co extends cq
{

    private ConditionVariable a;
    private ba b;
    private Context c;
    private av d;
    private aw e;
    private au f;
    private List g;
    private boolean h;
    private boolean i;
    private Exception j;

    public co(ba ba1, Context context, av av1, aw aw, au au1)
    {
        a = new ConditionVariable();
        g = new ArrayList();
        h = false;
        j = null;
        b = ba1;
        c = context;
        d = av1;
        e = aw;
        f = au1;
        i = false;
    }

    private void c()
    {
        this;
        JVM INSTR monitorenter ;
        h = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private boolean d()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = h;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    private File e()
    {
        int k;
        File file;
        k = 0;
        file = new File((new StringBuilder()).append(c.getFilesDir().getAbsolutePath()).append("/").append(b.j()).toString());
        if (file.exists() && file.isDirectory()) goto _L2; else goto _L1
_L1:
        File afile[];
        return null;
_L2:
        if ((afile = file.listFiles()) != null)
        {
            if (afile.length != 1)
            {
                continue; /* Loop/switch isn't completed */
            }
            File file2 = afile[0];
            file2.isFile();
            if (file2.isFile())
            {
                return file2;
            }
        }
        continue; /* Loop/switch isn't completed */
        if (afile.length <= 1) goto _L1; else goto _L3
_L3:
        int l = afile.length;
        while (k < l) 
        {
            File file1 = afile[k];
            file1.isFile();
            file1.delete();
            k++;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private void f()
    {
        if (!ay.t().u)
        {
            boolean _tmp = i;
            bj bj1 = d.j();
            bj bj2 = d.k();
            bj bj3 = d.l();
            bj bj4 = d.m();
            bj bj5 = d.n();
            de de1 = d.r();
            b.k();
            bj1.a(new be());
            if (!b.e())
            {
                cn cn1 = new cn(c);
                cn1.a(bj1, new cd.a(), b.k(), f);
                cn1.a(bj2, new ci.a(), b.k(), f);
                cn1.a(bj4, new ci.a(), b.k(), f);
                cn1.a(bj5, new ci.a(), b.k(), f);
                cn1.a(bj3, new ci.a(), b.k(), new az(f, b));
                cn1.a();
            }
            if (de1.b())
            {
                ay.t().w();
                return;
            }
        }
    }

    public final void a()
    {
        File file;
        dg.b();
        file = new File((new StringBuilder()).append(c.getFilesDir().getAbsolutePath()).append("/com.crittercism/pending").toString());
        if (!file.exists() || file.isDirectory()) goto _L2; else goto _L1
_L1:
        dg.b();
_L9:
        File file1;
        ay ay1 = ay.t();
        ay1.y.a();
        df df1 = f.i();
        ay1.e.open();
        aw aw = e;
        c;
        df1.a(aw);
        cz.a = cz.a(c).booleanValue();
        cz.a(c, false);
        if (!df1.c())
        {
            df1.a().a(e, cb.h.a(), cb.h.b());
            df1.b().a(e, cb.k.a(), cb.k.b());
        }
        i = df1.c();
        file1 = e();
        if (!i) goto _L4; else goto _L3
_L3:
        i;
        if (ay.t().u) goto _L6; else goto _L5
_L5:
        if (file1 == null)
        {
            break MISSING_BLOCK_LABEL_242;
        }
        if (file1.exists())
        {
            file1.isFile();
        }
        (new bj(c, bi.a)).a();
        (new bj(c, bi.b)).a();
        (new bj(c, bi.c)).a();
        (new bj(c, bi.d)).a();
        (new bj(c, bi.e)).a();
        (new bj(c, bi.f)).a();
        (new bj(c, bi.h)).a();
        (new bj(c, bi.g)).a();
        if (file1 == null) goto _L6; else goto _L7
_L7:
        file1.delete();
_L6:
        crittercism.android.h.b(c);
_L20:
        c();
        for (Iterator iterator = g.iterator(); iterator.hasNext(); ((Runnable)iterator.next()).run()) { }
          goto _L8
        Exception exception1;
        exception1;
        (new StringBuilder("Exception in run(): ")).append(exception1.getMessage());
        dg.b();
        dg.c();
        j = exception1;
        a.open();
        return;
_L2:
        dk.a(file);
          goto _L9
        Exception exception;
        exception;
        a.open();
        throw exception;
_L4:
        h h1;
        SharedPreferences sharedpreferences;
        Context context = c;
        h1 = new h(context);
        sharedpreferences = context.getSharedPreferences("com.crittercism.optmz.config", 0);
        if (!sharedpreferences.contains("interval")) goto _L11; else goto _L10
_L10:
        h1.d = sharedpreferences.getInt("interval", 10);
        if (!sharedpreferences.contains("kill")) goto _L13; else goto _L12
_L12:
        h1.c = sharedpreferences.getBoolean("kill", false);
        if (!sharedpreferences.contains("persist"))
        {
            break MISSING_BLOCK_LABEL_934;
        }
        h1.b = sharedpreferences.getBoolean("persist", false);
        if (!sharedpreferences.contains("enabled"))
        {
            break MISSING_BLOCK_LABEL_940;
        }
        h1.a = sharedpreferences.getBoolean("enabled", false);
_L22:
        ay ay2;
        bj bj1;
        bj bj2;
        bj bj3;
        bj bj4;
        Throwable throwable;
        for (; h1 == null; h1 = null)
        {
            break MISSING_BLOCK_LABEL_653;
        }

        ay.t().a(h1);
        i;
        d.s();
        i;
        ay2 = ay.t();
        if (ay2.u) goto _L15; else goto _L14
_L14:
        if (file1 == null)
        {
            break MISSING_BLOCK_LABEL_704;
        }
        if (file1.exists())
        {
            file1.isFile();
        }
        d;
        bj1 = d.o();
        bj2 = d.p();
        bj3 = d.q();
        bj4 = d.m();
        if (file1 == null) goto _L17; else goto _L16
_L16:
        cz.a = true;
        ay2.f.open();
        bj4.a(new bs(file1, bj1, bj3, bj2));
        file1.delete();
_L21:
        bj3.a();
        bj2.a();
        bj1.a(bj3);
_L15:
        d.o().a(bt.a);
        if (ay.t().u || !b.g()) goto _L19; else goto _L18
_L18:
        dg.b();
        CrittercismNDK.a(c, b.j());
_L19:
        f();
          goto _L20
_L17:
        ay2.f.open();
          goto _L21
        throwable;
        (new StringBuilder("Exception installing ndk library: ")).append(throwable.getClass().getName());
        dg.b();
          goto _L19
_L8:
        a.open();
        return;
_L11:
        h1 = null;
          goto _L22
_L13:
        h1 = null;
          goto _L22
        h1 = null;
          goto _L22
    }

    public final boolean a(Runnable runnable)
    {
        this;
        JVM INSTR monitorenter ;
        if (d()) goto _L2; else goto _L1
_L1:
        g.add(runnable);
        boolean flag = true;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void b()
    {
        a.block();
    }
}
