// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.os.ConditionVariable;
import java.io.IOException;
import org.json.JSONArray;

// Referenced classes of package crittercism.android:
//            bq, dg, cr, dh

public final class br
    implements bq
{

    private String a[];

    public br()
    {
        String s;
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            s = "logcat -t 100 -v time";
        } else
        {
            s = "logcat -d -v time";
        }
        a = s.split("\\s+");
    }

    private static JSONArray a(String as[])
    {
        JSONArray jsonarray = null;
        if (as != null)
        {
            int i = as.length;
            jsonarray = null;
            if (i > 0)
            {
                int j = as.length;
                int k = 0;
                if (j > 200)
                {
                    k = -200 + as.length;
                }
                JSONArray jsonarray1 = new JSONArray();
                for (; k < as.length; k++)
                {
                    jsonarray1.put(as[k]);
                }

                jsonarray = jsonarray1;
            }
        }
        return jsonarray;
    }

    private Process b()
    {
        String[] _tmp = a;
        Process process;
        try
        {
            process = (new ProcessBuilder(new String[0])).command(a).start();
        }
        catch (IOException ioexception)
        {
            (new StringBuilder("IOException in createProcess(): ")).append(ioexception.getMessage());
            dg.b();
            dg.c();
            return null;
        }
        return process;
    }

    public final JSONArray a()
    {
        String as[];
        JSONArray jsonarray;
        Process process;
        ConditionVariable conditionvariable;
        cr cr1;
        cr cr2;
        StringBuilder stringbuilder;
        String s;
        try
        {
            process = b();
        }
        catch (Throwable throwable)
        {
            (new StringBuilder("Unanticipated throwable in getLogcat: ")).append(throwable.getMessage());
            dg.b();
            dg.c();
            return null;
        }
        if (process == null)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        conditionvariable = new ConditionVariable();
        cr1 = new cr(process, conditionvariable, cr.a.a);
        cr2 = new cr(process, null, cr.a.b);
        (new dh(cr1)).start();
        (new dh(cr2)).start();
        conditionvariable.block(250L);
        process.destroy();
        stringbuilder = cr1.b();
        if (stringbuilder == null) goto _L2; else goto _L1
_L1:
        s = stringbuilder.toString();
        if (s.length() <= 0) goto _L2; else goto _L3
_L3:
        as = s.split("\n");
_L4:
        jsonarray = a(as);
_L5:
        dg.b();
        return jsonarray;
_L2:
        as = null;
          goto _L4
        jsonarray = null;
          goto _L5
    }
}
