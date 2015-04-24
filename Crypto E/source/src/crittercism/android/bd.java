// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            bv, bu, bk, dm, 
//            bf, bj

public final class bd
    implements bv
{

    public long a;
    public JSONArray b;
    public String c;
    public JSONObject d;
    private JSONObject e;
    private JSONArray f;
    private String g;
    private String h;
    private String i;
    private JSONArray j;
    private String k;
    private String l;

    public bd(Throwable throwable, long l1)
    {
        h = "";
        l = bu.a.a();
        c = "uhe";
        bk bk1 = new bk();
        bk1.a(new bn.a()).a(new bn.c()).a(new bn.b()).a(new bn.d()).a(new bn.e()).a(new bn.f()).a(new bn.i()).a(new bn.j()).a(new bn.h()).a(new bn.x()).a(new bn.y()).a(new bn.k()).a(new bn.l()).a(new bn.n()).a(new bn.m()).a(new bn.o()).a(new bn.p()).a(new bn.q()).a(new bn.r()).a(new bn.s()).a(new bn.t()).a(new bn.u()).a(new bn.v()).a(new bn.w());
        d = bk1.a();
        e = new JSONObject();
        a = l1;
        g = a(throwable);
        if (throwable.getMessage() != null)
        {
            h = throwable.getMessage();
        }
        i = "android";
        k = dm.a.a();
        j = new JSONArray();
        String as[] = b(throwable);
        int i1 = as.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            String s = as[j1];
            j.put(s);
        }

    }

    private static String a(Throwable throwable)
    {
        do
        {
            String s = throwable.getClass().getName();
            Throwable throwable1 = throwable.getCause();
            if (throwable1 == null || throwable1 == throwable)
            {
                return s;
            }
            throwable = throwable1;
        } while (true);
    }

    private static String[] b(Throwable throwable)
    {
        StringWriter stringwriter = new StringWriter();
        PrintWriter printwriter = new PrintWriter(stringwriter);
        do
        {
            throwable.printStackTrace(printwriter);
            Throwable throwable1 = throwable.getCause();
            if (throwable1 == null || throwable1 == throwable)
            {
                return stringwriter.toString().split("\n");
            }
            throwable = throwable1;
        } while (true);
    }

    public final JSONObject a()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("app_state", d);
        hashmap.put("breadcrumbs", e);
        hashmap.put("current_thread_id", Long.valueOf(a));
        if (f != null)
        {
            hashmap.put("endpoints", f);
        }
        hashmap.put("exception_name", g);
        hashmap.put("exception_reason", h);
        hashmap.put("platform", i);
        if (b != null)
        {
            hashmap.put("threads", b);
        }
        hashmap.put("ts", k);
        String s = c;
        if (a != 1L)
        {
            s = (new StringBuilder()).append(s).append("-bg").toString();
        }
        hashmap.put("type", s);
        hashmap.put("unsymbolized_stacktrace", j);
        return new JSONObject(hashmap);
    }

    public final void a(bj bj)
    {
        f = (new bf(bj)).a;
    }

    public final void a(OutputStream outputstream)
    {
        outputstream.write(a().toString().getBytes());
    }

    public final void a(String s, bj bj)
    {
        JSONArray jsonarray = (new bf(bj)).a;
        try
        {
            e.put(s, jsonarray);
            return;
        }
        catch (JSONException jsonexception)
        {
            return;
        }
    }

    public final String b()
    {
        return l;
    }
}
