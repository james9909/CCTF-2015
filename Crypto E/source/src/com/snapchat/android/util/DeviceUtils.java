// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.model.UserPrefs;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.io.IOUtils;

// Referenced classes of package com.snapchat.android.util:
//            ViewUtils, GsonUtil

public class DeviceUtils
{

    private static final DeviceUtils a = new DeviceUtils();
    private Map b;

    protected DeviceUtils()
    {
    }

    public static DeviceUtils a()
    {
        return a;
    }

    private String d()
    {
        RandomAccessFile randomaccessfile = new RandomAccessFile("/proc/meminfo", "r");
        String s = randomaccessfile.readLine();
        IOUtils.closeQuietly(randomaccessfile);
        return s;
        IOException ioexception1;
        ioexception1;
        randomaccessfile = null;
_L4:
        Timber.e("DeviceUtils", "There was an error reading /proc/meminfo", new Object[0]);
        IOUtils.closeQuietly(randomaccessfile);
        return "";
        Exception exception;
        exception;
        randomaccessfile = null;
_L2:
        IOUtils.closeQuietly(randomaccessfile);
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
        IOException ioexception;
        ioexception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected double a(double d1)
    {
        if (d1 <= 0.0D)
        {
            return 0.0D;
        } else
        {
            return Math.pow(2D, 1.0D + Math.floor(Math.getExponent(d1 - 1.0D)));
        }
    }

    protected double a(String s)
    {
        String as[];
        double d1;
        as = s.split(" kB")[0].split(" ");
        d1 = 0.0D;
        double d2 = Double.parseDouble(as[-1 + as.length]);
        d1 = d2;
_L2:
        return a(d1);
        NumberFormatException numberformatexception;
        numberformatexception;
        Timber.e("DeviceUtils", (new StringBuilder()).append("There was an error parsing /proc/meminfo ").append(s).toString(), new Object[0]);
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected Map a(Runtime runtime, DisplayMetrics displaymetrics)
    {
        char c1 = '\u07DF';
        HashMap hashmap = new HashMap();
        int i = runtime.availableProcessors();
        hashmap.put("num_processors", Integer.toString(i));
        char c2;
        double d1;
        char c3;
        int j;
        if (i >= 8)
        {
            c2 = c1;
        } else
        if (i >= 4)
        {
            c2 = '\u07DD';
        } else
        if (i >= 2)
        {
            c2 = '\u07DB';
        } else
        if (i >= 1)
        {
            c2 = '\u07DA';
        } else
        {
            c2 = '\u07D9';
        }
        d1 = c() / 1048576D;
        hashmap.put("total_memory", Double.toString(d1));
        if (d1 >= 4D)
        {
            c3 = c1;
        } else
        if (d1 >= 3D)
        {
            c3 = '\u07DE';
        } else
        if (d1 >= 2D)
        {
            c3 = '\u07DC';
        } else
        if (d1 >= 1.0D)
        {
            c3 = '\u07DB';
        } else
        if (d1 >= 0.5D)
        {
            c3 = '\u07DA';
        } else
        {
            c3 = '\u07D9';
        }
        j = displaymetrics.densityDpi;
        hashmap.put("display_density", ViewUtils.a(displaymetrics));
        if (j < 640)
        {
            if (j >= 480)
            {
                c1 = '\u07DD';
            } else
            if (j >= 240)
            {
                c1 = '\u07DC';
            } else
            if (j >= 160)
            {
                c1 = '\u07DB';
            } else
            if (j >= 120)
            {
                c1 = '\u07DA';
            } else
            {
                c1 = '\u07D9';
            }
        }
        hashmap.put("year_class", Integer.toString(Math.max(c2, Math.max(c3, c1))));
        UserPrefs.t(GsonUtil.a().toJson(hashmap));
        return hashmap;
    }

    protected Map a(Runtime runtime, DisplayMetrics displaymetrics, String s)
    {
        if (b != null && b.containsKey("year_class"))
        {
            return b;
        }
        java.lang.reflect.Type type = (new TypeToken() {

            final DeviceUtils a;

            
            {
                a = DeviceUtils.this;
                super();
            }
        }).getType();
        b = (Map)GsonUtil.a().fromJson(s, type);
        if (b.containsKey("year_class"))
        {
            return b;
        } else
        {
            b = a(runtime, displaymetrics);
            return b;
        }
    }

    public boolean a(Context context)
    {
        return (0xf & context.getResources().getConfiguration().screenLayout) >= 3;
    }

    public int b(Context context)
    {
        return ((ActivityManager)context.getSystemService("activity")).getMemoryClass();
    }

    public Map b()
    {
        return a(Runtime.getRuntime(), SnapchatApplication.e().getResources().getDisplayMetrics(), UserPrefs.aH());
    }

    public double c()
    {
        return a(d());
    }

}
