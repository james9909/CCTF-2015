// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            bl, aw, dg

public final class dc
    implements bl
{
    public static final class a
    {

        public static dc a(aw aw1, String s, String s1)
        {
            String s2 = aw1.a(s, s1);
            if (s2 == null) goto _L2; else goto _L1
_L1:
            JSONObject jsonobject = new JSONObject(s2);
_L3:
            JSONObject jsonobject1 = jsonobject;
_L4:
            JSONException jsonexception;
            if (jsonobject1 != null)
            {
                return new dc(jsonobject1);
            } else
            {
                return new dc();
            }
_L2:
            jsonobject = null;
              goto _L3
            jsonexception;
            dg.b();
            jsonobject1 = null;
              goto _L4
        }
    }


    public boolean a;
    public boolean b;
    public int c;
    public int d;
    public int e;
    public String f;
    public String g;

    public dc()
    {
        a = false;
        b = false;
        c = 0;
        d = 5;
        e = 5;
        f = "Would you mind taking a second to rate my app?  I would really appreciate it!";
        g = "Rate My App";
    }

    public dc(dc dc1)
    {
        a = dc1.a;
        b = dc1.b;
        c = dc1.c;
        d = dc1.d;
        e = dc1.e;
        f = dc1.f;
        g = dc1.g;
    }

    public dc(JSONObject jsonobject)
    {
        a = jsonobject.optBoolean("rateMyAppEnabled", false);
        b = jsonobject.optBoolean("hasRatedApp", false);
        c = jsonobject.optInt("numAppLoads", 0);
        d = jsonobject.optInt("rateAfterNumLoads", 5);
        e = jsonobject.optInt("remindAfterNumLoads", 5);
        f = jsonobject.optString("rateAppMessage", "Would you mind taking a second to rate my app?  I would really appreciate it!");
        g = jsonobject.optString("rateAppTitle", "Rate My App");
    }

    private JSONObject d()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("rateAfterNumLoads", d).put("remindAfterNumLoads", e).put("rateAppMessage", f).put("rateAppTitle", g).put("hasRatedApp", b).put("numAppLoads", c).put("rateMyAppEnabled", a);
        }
        catch (JSONException jsonexception)
        {
            return jsonobject;
        }
        return jsonobject;
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        a = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(aw aw1, String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        aw1.a(s, s1, d().toString());
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final Object b()
    {
        return d();
    }

    public final void c()
    {
        this;
        JVM INSTR monitorenter ;
        a = false;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
