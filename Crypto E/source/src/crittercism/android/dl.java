// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.util.concurrent.ExecutorService;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            av, co, df, bd, 
//            bj

public final class dl
{

    av a;
    ExecutorService b;
    co c;
    df d;

    public dl()
    {
    }

    public dl(av av, ExecutorService executorservice, co co, df df)
    {
        a = av;
        b = executorservice;
        c = co;
        d = df;
    }

    // Unreferenced inner class crittercism/android/dl$1

/* anonymous class */
    final class _cls1
        implements Runnable
    {

        final Throwable a;
        final long b;
        final dl c;

        public final void run()
        {
            bd bd1;
            try
            {
                if (c.d.c())
                {
                    return;
                }
            }
            catch (ThreadDeath threaddeath)
            {
                return;
            }
            catch (Throwable throwable)
            {
                c;
                a;
                return;
            }
            bd1 = new bd(a, b);
            bd1.c = "he";
            try
            {
                bd1.d.put("app_version", "4.5.4");
            }
            catch (JSONException jsonexception) { }
            bd1.d.remove("logcat");
            c.a.l().a(bd1);
            return;
        }

            
            {
                c = dl.this;
                a = throwable;
                b = l;
                super();
            }
    }

}
