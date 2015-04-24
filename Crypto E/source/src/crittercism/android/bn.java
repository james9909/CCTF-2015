// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.File;
import java.math.BigInteger;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package crittercism.android:
//            at, bc, bq, bm, 
//            dg

public final class bn
{
    public static final class a
        implements bm
    {

        private String a;

        public final String a()
        {
            return "activity";
        }

        public final volatile Object b()
        {
            return a;
        }

        public a()
        {
            a = null;
            bn.c();
            bn.b();
            boolean flag = bn.c().b;
            String s1 = null;
            if (flag)
            {
                s1 = ((android.app.ActivityManager.RunningTaskInfo)((ActivityManager)bn.b().getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.flattenToShortString().replace("/", "");
            }
            a = s1;
        }
    }

    public static final class b
        implements bm
    {

        private Integer a;

        public final String a()
        {
            return "app_version_code";
        }

        public final volatile Object b()
        {
            return a;
        }

        public b()
        {
            a = null;
            bn.a();
            a = Integer.valueOf(bn.a().b);
        }
    }

    public static final class c
        implements bm
    {

        public String a;

        public final String a()
        {
            return "app_version";
        }

        public final volatile Object b()
        {
            return a;
        }

        public c()
        {
            a = null;
            bn.a();
            a = bn.a().a;
        }
    }

    public static final class d
        implements bm
    {

        public final String a()
        {
            return "arch";
        }

        public final Object b()
        {
            return System.getProperty("os.arch");
        }

        public d()
        {
        }
    }

    public static final class e
        implements bm
    {

        private Double a;

        public final String a()
        {
            return "battery_level";
        }

        public final volatile Object b()
        {
            return a;
        }

        public e()
        {
            a = null;
            bn.b();
            double d1 = 1.0D;
            Intent intent = bn.b().getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int i1 = intent.getIntExtra("level", -1);
            double d2 = intent.getIntExtra("scale", -1);
            if (i1 >= 0 && d2 > 0.0D)
            {
                d1 = (double)i1 / d2;
            }
            a = Double.valueOf(d1);
        }
    }

    public static final class f
        implements bm
    {

        public String a;

        public final String a()
        {
            return "carrier";
        }

        public final volatile Object b()
        {
            return a;
        }

        public f()
        {
            a = null;
            bn.b();
            String s2 = ((TelephonyManager)bn.b().getSystemService("phone")).getNetworkOperatorName();
            String s1 = s2;
_L2:
            a = s1;
            return;
            Exception exception;
            exception;
            s1 = Build.BRAND;
            if (true) goto _L2; else goto _L1
_L1:
        }
    }

    static class g
        implements bm
    {

        private JSONObject a;

        public String a()
        {
            return null;
        }

        public final Object b()
        {
            return c();
        }

        public JSONObject c()
        {
            return a;
        }

        public g(int i1)
        {
            NetworkInfo networkinfo;
            a = null;
            bn.b();
            bn.c();
            if (!bn.c().c)
            {
                break MISSING_BLOCK_LABEL_171;
            }
            a = new JSONObject();
            networkinfo = ((ConnectivityManager)bn.b().getSystemService("connectivity")).getNetworkInfo(i1);
            if (networkinfo == null)
            {
                break MISSING_BLOCK_LABEL_155;
            }
            a.put("available", networkinfo.isAvailable());
            a.put("connected", networkinfo.isConnected());
            if (!networkinfo.isConnected())
            {
                a.put("connecting", networkinfo.isConnectedOrConnecting());
            }
            a.put("failover", networkinfo.isFailover());
            boolean flag;
            if (i1 == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag)
            {
                break MISSING_BLOCK_LABEL_171;
            }
            try
            {
                a.put("roaming", networkinfo.isRoaming());
                return;
            }
            catch (JSONException jsonexception)
            {
                a = null;
            }
            break MISSING_BLOCK_LABEL_168;
            a = null;
            return;
            dg.c();
        }
    }

    public static final class h
        implements bm
    {

        private Float a;

        public final String a()
        {
            return "dpi";
        }

        public final volatile Object b()
        {
            return a;
        }

        public h()
        {
            a = null;
            bn.b();
            a = Float.valueOf(bn.b().getResources().getDisplayMetrics().density);
        }
    }

    public static final class i
        implements bm
    {

        private String a;

        public final String a()
        {
            return "disk_space_free";
        }

        public final volatile Object b()
        {
            return a;
        }

        public i()
        {
            a = null;
            try
            {
                BigInteger.valueOf(-1L);
                StatFs statfs = new StatFs(Environment.getDataDirectory().getPath());
                a = BigInteger.valueOf(statfs.getAvailableBlocks()).multiply(BigInteger.valueOf(statfs.getBlockSize())).toString();
                return;
            }
            catch (ThreadDeath threaddeath)
            {
                throw threaddeath;
            }
            catch (Throwable throwable)
            {
                a = null;
            }
        }
    }

    public static final class j
        implements bm
    {

        private String a;

        public final String a()
        {
            return "disk_space_total";
        }

        public final volatile Object b()
        {
            return a;
        }

        public j()
        {
            a = null;
            try
            {
                BigInteger.valueOf(-1L);
                StatFs statfs = new StatFs(Environment.getDataDirectory().getPath());
                a = BigInteger.valueOf(statfs.getBlockCount()).multiply(BigInteger.valueOf(statfs.getBlockSize())).toString();
                return;
            }
            catch (ThreadDeath threaddeath)
            {
                throw threaddeath;
            }
            catch (Throwable throwable)
            {
                a = null;
            }
        }
    }

    public static final class k
        implements bm
    {

        private String a;

        public final String a()
        {
            return "locale";
        }

        public final volatile Object b()
        {
            return a;
        }

        public k()
        {
            a = null;
            bn.b();
            a = bn.b().getResources().getConfiguration().locale.getLanguage();
            if (a == null || a.length() == 0)
            {
                a = "en";
            }
        }
    }

    public static final class l
        implements bm
    {

        private JSONArray a;

        public final String a()
        {
            return "logcat";
        }

        public final volatile Object b()
        {
            return a;
        }

        public l()
        {
            a = null;
            bn.c();
            bn.d();
            if (bn.c().a)
            {
                a = bn.d().a();
            }
        }
    }

    public static final class m
        implements bm
    {

        private Long a;

        public final String a()
        {
            return "memory_total";
        }

        public final volatile Object b()
        {
            return a;
        }

        public m()
        {
            a = null;
            a = Long.valueOf(Runtime.getRuntime().maxMemory());
        }
    }

    public static final class n
        implements bm
    {

        private Integer a;

        public final String a()
        {
            return "memory_usage";
        }

        public final volatile Object b()
        {
            return a;
        }

        public n()
        {
            a = null;
            android.os.Debug.MemoryInfo memoryinfo = new android.os.Debug.MemoryInfo();
            Debug.getMemoryInfo(memoryinfo);
            a = Integer.valueOf(1024 * (memoryinfo.dalvikPss + memoryinfo.nativePss + memoryinfo.otherPss));
        }
    }

    public static final class o extends g
    {

        public final String a()
        {
            return "mobile_network";
        }

        public final volatile JSONObject c()
        {
            return super.c();
        }

        public o()
        {
            super(0);
        }
    }

    public static final class p
        implements bm
    {

        public final String a()
        {
            return "model";
        }

        public final volatile Object b()
        {
            return Build.MODEL;
        }

        public p()
        {
        }
    }

    public static final class q
        implements bm
    {

        public final String a()
        {
            return "name";
        }

        public final Object b()
        {
            return new String();
        }

        public q()
        {
        }
    }

    public static final class r
        implements bm
    {

        private Integer a;

        public final String a()
        {
            return "orientation";
        }

        public final volatile Object b()
        {
            return a;
        }

        public r()
        {
            a = null;
            bn.b();
            int i1 = bn.b().getResources().getConfiguration().orientation;
            if (i1 == 0)
            {
                Display display = ((WindowManager)bn.b().getSystemService("window")).getDefaultDisplay();
                if (display.getWidth() == display.getHeight())
                {
                    i1 = 3;
                } else
                if (display.getWidth() > display.getHeight())
                {
                    i1 = 2;
                } else
                {
                    i1 = 1;
                }
            }
            a = Integer.valueOf(i1);
        }
    }

    public static final class s
        implements bm
    {

        private String a;

        public final String a()
        {
            return "sd_space_free";
        }

        public final volatile Object b()
        {
            return a;
        }

        public s()
        {
            a = null;
            try
            {
                BigInteger.valueOf(-1L);
                StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                a = BigInteger.valueOf(statfs.getAvailableBlocks()).multiply(BigInteger.valueOf(statfs.getBlockSize())).toString();
                return;
            }
            catch (ThreadDeath threaddeath)
            {
                throw threaddeath;
            }
            catch (Throwable throwable)
            {
                a = null;
            }
        }
    }

    public static final class t
        implements bm
    {

        private String a;

        public final String a()
        {
            return "sd_space_total";
        }

        public final volatile Object b()
        {
            return a;
        }

        public t()
        {
            a = null;
            try
            {
                BigInteger.valueOf(-1L);
                StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                a = BigInteger.valueOf(statfs.getBlockCount()).multiply(BigInteger.valueOf(statfs.getBlockSize())).toString();
                return;
            }
            catch (ThreadDeath threaddeath)
            {
                throw threaddeath;
            }
            catch (Throwable throwable)
            {
                a = null;
            }
        }
    }

    public static final class u
        implements bm
    {

        public final String a()
        {
            return "system";
        }

        public final volatile Object b()
        {
            return "android";
        }

        public u()
        {
        }
    }

    public static final class v
        implements bm
    {

        public final String a()
        {
            return "system_version";
        }

        public final volatile Object b()
        {
            return android.os.Build.VERSION.RELEASE;
        }

        public v()
        {
        }
    }

    public static final class w extends g
    {

        public final String a()
        {
            return "wifi";
        }

        public final volatile JSONObject c()
        {
            return super.c();
        }

        public w()
        {
            super(1);
        }
    }

    public static final class x
        implements bm
    {

        private Float a;

        public final String a()
        {
            return "xdpi";
        }

        public final volatile Object b()
        {
            return a;
        }

        public x()
        {
            a = null;
            bn.b();
            a = Float.valueOf(bn.b().getResources().getDisplayMetrics().xdpi);
        }
    }

    public static final class y
        implements bm
    {

        private Float a;

        public final String a()
        {
            return "ydpi";
        }

        public final volatile Object b()
        {
            return a;
        }

        public y()
        {
            a = null;
            bn.b();
            a = Float.valueOf(bn.b().getResources().getDisplayMetrics().ydpi);
        }
    }


    private static at a = null;
    private static Context b = null;
    private static bc c = null;
    private static bq d = null;

    static at a()
    {
        return a;
    }

    public static void a(Context context)
    {
        b = context;
    }

    public static void a(at at)
    {
        a = at;
    }

    public static void a(bc bc)
    {
        c = bc;
    }

    public static void a(bq bq)
    {
        d = bq;
    }

    static Context b()
    {
        return b;
    }

    static bc c()
    {
        return c;
    }

    static bq d()
    {
        return d;
    }

}
