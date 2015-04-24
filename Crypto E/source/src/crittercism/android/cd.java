// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.io.IOException;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            ci, dg, i, df, 
//            dc, cs, ce, au, 
//            ck, cj, h, ay, 
//            bj, ch, cg

public final class cd extends ci
{
    public static final class a
        implements ch
    {

        public final cg a(bj bj, bj bj1, String s, Context context, au au1, df df1)
        {
            return new cd(bj, bj1, s, context, au1, df1);
        }

        public a()
        {
        }
    }


    private String a;
    private Context b;
    private au c;
    private df d;
    private JSONObject e;
    private JSONObject f;
    private JSONObject g;
    private boolean h;

    public cd(bj bj, bj bj1, String s, Context context, au au1, df df1)
    {
        super(bj, bj1);
        a = s;
        b = context;
        c = au1;
        d = df1;
        h = false;
    }

    public final void a(boolean flag, int j, JSONObject jsonobject)
    {
        super.a(flag, j, jsonobject);
        if (jsonobject != null)
        {
            JSONObject jsonobject1;
            if (jsonobject.optBoolean("report_internal_exceptions", false))
            {
                dg.a = dg.a.b;
                i.d();
            } else
            {
                dg.a = dg.a.c;
            }
            jsonobject1 = jsonobject.optJSONObject("me");
            if (jsonobject1 != null)
            {
                e = jsonobject1.optJSONObject("notify");
                dc dc1 = d.a();
                JSONObject jsonobject2;
                h h1;
                if (e == null)
                {
                    dc1.c();
                } else
                if (e.optString("type") != null && e.optString("type").equals("rate_my_app"))
                {
                    dc dc2 = new dc(dc1);
                    JSONObject jsonobject3 = e;
                    dc2.d = jsonobject3.optInt("rate_after_load_num", 5);
                    dc2.e = jsonobject3.optInt("remind_after_load_num", 5);
                    dc2.f = jsonobject3.optString("message", "Would you mind taking a second to rate my app?  I would really appreciate it!");
                    dc2.g = jsonobject3.optString("title", "Rate My App");
                    dc2.a();
                    d.a(dc2);
                }
            }
            jsonobject2 = jsonobject.optJSONObject("app_settings");
            if (jsonobject2 != null)
            {
                g = jsonobject2.optJSONObject("settings");
            }
            if (g != null && g.optInt("need_pkg", 0) == 1)
            {
                try
                {
                    (new cs((new ce(c)).a("device_name", c.f()).a("pkg", b.getPackageName()), new ck((new cj(a, "/android_v2/update_package_name")).a()), null)).run();
                }
                catch (IOException ioexception)
                {
                    (new StringBuilder("IOException in handleResponse(): ")).append(ioexception.getMessage());
                    dg.b();
                    dg.c();
                }
                h = true;
            }
            f = jsonobject.optJSONObject("apm");
            if (f != null)
            {
                h1 = new h(f);
                Context context = b;
                android.content.SharedPreferences.Editor editor;
                if (h1.c)
                {
                    crittercism.android.h.b(context);
                } else
                {
                    File file = crittercism.android.h.a(context);
                    if (!file.delete() && file.exists())
                    {
                        dg.b("Crittercism", "Unable to reenable OPTMZ instrumentation");
                    }
                }
                editor = context.getSharedPreferences("com.crittercism.optmz.config", 0).edit();
                if (h1.b)
                {
                    editor.putBoolean("enabled", h1.a);
                    editor.putBoolean("kill", h1.c);
                    editor.putBoolean("persist", h1.b);
                    editor.putInt("interval", h1.d);
                } else
                {
                    editor.clear();
                }
                editor.commit();
                ay.t().a(h1);
            }
        }
    }
}
