// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.nio.CharBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            hf, hd, ab, gy, 
//            he

public class gx
{
    final class a extends BroadcastReceiver
    {

        final gx xB;

        public void onReceive(Context context, Intent intent)
        {
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction()))
            {
                gx.a(xB, true);
            } else
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()))
            {
                gx.a(xB, false);
                return;
            }
        }

        private a()
        {
            xB = gx.this;
            super();
        }

    }


    private static final SimpleDateFormat xy[];
    private final Object mL = new Object();
    private boolean xA;
    private String xg;
    private boolean xz;

    public gx()
    {
        xz = true;
        xA = false;
    }

    static Object a(gx gx1)
    {
        return gx1.mL;
    }

    static String a(gx gx1, Context context)
    {
        return gx1.s(context);
    }

    static String a(gx gx1, String s1)
    {
        gx1.xg = s1;
        return s1;
    }

    private JSONArray a(Collection collection)
    {
        JSONArray jsonarray = new JSONArray();
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); a(jsonarray, iterator.next())) { }
        return jsonarray;
    }

    private void a(JSONArray jsonarray, Object obj)
    {
        if (obj instanceof Bundle)
        {
            jsonarray.put(g((Bundle)obj));
            return;
        }
        if (obj instanceof Map)
        {
            jsonarray.put(v((Map)obj));
            return;
        }
        if (obj instanceof Collection)
        {
            jsonarray.put(a((Collection)obj));
            return;
        }
        if (obj instanceof Object[])
        {
            jsonarray.put(a((Object[])(Object[])obj));
            return;
        } else
        {
            jsonarray.put(obj);
            return;
        }
    }

    private void a(JSONObject jsonobject, String s1, Object obj)
    {
        if (obj instanceof Bundle)
        {
            jsonobject.put(s1, g((Bundle)obj));
            return;
        }
        if (obj instanceof Map)
        {
            jsonobject.put(s1, v((Map)obj));
            return;
        }
        if (obj instanceof Collection)
        {
            if (s1 == null)
            {
                s1 = "null";
            }
            jsonobject.put(s1, a((Collection)obj));
            return;
        }
        if (obj instanceof Object[])
        {
            jsonobject.put(s1, a(((Collection) (Arrays.asList((Object[])(Object[])obj)))));
            return;
        } else
        {
            jsonobject.put(s1, obj);
            return;
        }
    }

    static boolean a(gx gx1, boolean flag)
    {
        gx1.xz = flag;
        return flag;
    }

    private JSONObject g(Bundle bundle)
    {
        JSONObject jsonobject = new JSONObject();
        String s1;
        for (Iterator iterator = bundle.keySet().iterator(); iterator.hasNext(); a(jsonobject, s1, bundle.get(s1)))
        {
            s1 = (String)iterator.next();
        }

        return jsonobject;
    }

    private String s(Context context)
    {
        return (new WebView(context)).getSettings().getUserAgentString();
    }

    public String O(String s1)
    {
        return Uri.parse(s1).buildUpon().query(null).build().toString();
    }

    public int P(String s1)
    {
        int k;
        try
        {
            k = Integer.parseInt(s1);
        }
        catch (NumberFormatException numberformatexception)
        {
            hf.X((new StringBuilder()).append("Could not parse value:").append(numberformatexception).toString());
            return 0;
        }
        return k;
    }

    public boolean Q(String s1)
    {
        if (TextUtils.isEmpty(s1))
        {
            return false;
        } else
        {
            return s1.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
        }
    }

    public String a(Readable readable)
    {
        StringBuilder stringbuilder = new StringBuilder();
        CharBuffer charbuffer = CharBuffer.allocate(2048);
        do
        {
            int k = readable.read(charbuffer);
            if (k != -1)
            {
                charbuffer.flip();
                stringbuilder.append(charbuffer, 0, k);
            } else
            {
                return stringbuilder.toString();
            }
        } while (true);
    }

    JSONArray a(Object aobj[])
    {
        JSONArray jsonarray = new JSONArray();
        int k = aobj.length;
        for (int l = 0; l < k; l++)
        {
            a(jsonarray, aobj[l]);
        }

        return jsonarray;
    }

    public void a(Context context, String s1, WebSettings websettings)
    {
        websettings.setUserAgentString(c(context, s1));
    }

    public void a(Context context, String s1, List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext(); (new hd(context, s1, (String)iterator.next())).start()) { }
    }

    public void a(Context context, String s1, List list, String s2)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext(); (new hd(context, s1, (String)iterator.next(), s2)).start()) { }
    }

    public void a(Context context, String s1, boolean flag, HttpURLConnection httpurlconnection)
    {
        a(context, s1, flag, httpurlconnection, false);
    }

    public void a(Context context, String s1, boolean flag, HttpURLConnection httpurlconnection, String s2)
    {
        httpurlconnection.setConnectTimeout(60000);
        httpurlconnection.setInstanceFollowRedirects(flag);
        httpurlconnection.setReadTimeout(60000);
        httpurlconnection.setRequestProperty("User-Agent", s2);
        httpurlconnection.setUseCaches(false);
    }

    public void a(Context context, String s1, boolean flag, HttpURLConnection httpurlconnection, boolean flag1)
    {
        httpurlconnection.setConnectTimeout(60000);
        httpurlconnection.setInstanceFollowRedirects(flag);
        httpurlconnection.setReadTimeout(60000);
        httpurlconnection.setRequestProperty("User-Agent", c(context, s1));
        httpurlconnection.setUseCaches(flag1);
    }

    public boolean a(PackageManager packagemanager, String s1, String s2)
    {
        return packagemanager.checkPermission(s2, s1) == 0;
    }

    public boolean a(ClassLoader classloader, Class class1, String s1)
    {
        boolean flag;
        try
        {
            flag = class1.isAssignableFrom(Class.forName(s1, false, classloader));
        }
        catch (Throwable throwable)
        {
            return false;
        }
        return flag;
    }

    public String c(Context context, String s1)
    {
label0:
        {
            String s4;
            synchronized (mL)
            {
                if (xg == null)
                {
                    break label0;
                }
                s4 = xg;
            }
            return s4;
        }
        String s2;
        Exception exception2;
        String s3;
        InterruptedException interruptedexception;
        try
        {
            xg = ab.aL().getDefaultUserAgent(context);
        }
        catch (Exception exception1) { }
        if (!TextUtils.isEmpty(xg))
        {
            break MISSING_BLOCK_LABEL_144;
        }
        if (he.dK())
        {
            break MISSING_BLOCK_LABEL_135;
        }
        he.xO.post(new Runnable(context) {

            final Context no;
            final gx xB;

            public void run()
            {
                synchronized (gx.a(xB))
                {
                    gx.a(xB, gx.a(xB, no));
                    gx.a(xB).notifyAll();
                }
                return;
                exception3;
                obj1;
                JVM INSTR monitorexit ;
                throw exception3;
            }

            
            {
                xB = gx.this;
                no = context;
                super();
            }
        });
_L1:
        s3 = xg;
        if (s3 != null)
        {
            break MISSING_BLOCK_LABEL_144;
        }
        mL.wait();
          goto _L1
        interruptedexception;
        xg = dC();
        hf.X((new StringBuilder()).append("Interrupted, use default user agent: ").append(xg).toString());
          goto _L1
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        xg = s(context);
_L2:
        xg = (new StringBuilder()).append(xg).append(" (Mobile; ").append(s1).append(")").toString();
        s2 = xg;
        obj;
        JVM INSTR monitorexit ;
        return s2;
        exception2;
        xg = dC();
          goto _L2
    }

    public Map c(Uri uri)
    {
        if (uri == null)
        {
            return null;
        }
        HashMap hashmap = new HashMap();
        String s1;
        for (Iterator iterator = ab.aL().d(uri).iterator(); iterator.hasNext(); hashmap.put(s1, uri.getQueryParameter(s1)))
        {
            s1 = (String)iterator.next();
        }

        return hashmap;
    }

    public void c(Context context, String s1, String s2)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(s2);
        a(context, s1, arraylist);
    }

    int[] d(DisplayMetrics displaymetrics)
    {
        float f = 160F / (float)displaymetrics.densityDpi;
        return (new int[] {
            Math.round(f * (float)displaymetrics.widthPixels), Math.round(f * (float)displaymetrics.heightPixels)
        });
    }

    public boolean dB()
    {
        return xz;
    }

    String dC()
    {
        StringBuffer stringbuffer = new StringBuffer(256);
        stringbuffer.append("Mozilla/5.0 (Linux; U; Android");
        if (android.os.Build.VERSION.RELEASE != null)
        {
            stringbuffer.append(" ").append(android.os.Build.VERSION.RELEASE);
        }
        stringbuffer.append("; ").append(Locale.getDefault());
        if (Build.DEVICE != null)
        {
            stringbuffer.append("; ").append(Build.DEVICE);
            if (Build.DISPLAY != null)
            {
                stringbuffer.append(" Build/").append(Build.DISPLAY);
            }
        }
        stringbuffer.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return stringbuffer.toString();
    }

    public String dD()
    {
        byte abyte0[];
        byte abyte1[];
        String s1;
        int k;
        UUID uuid = UUID.randomUUID();
        abyte0 = BigInteger.valueOf(uuid.getLeastSignificantBits()).toByteArray();
        abyte1 = BigInteger.valueOf(uuid.getMostSignificantBits()).toByteArray();
        s1 = (new BigInteger(1, abyte0)).toString();
        k = 0;
_L2:
        if (k >= 2)
        {
            break; /* Loop/switch isn't completed */
        }
        String s2;
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(abyte0);
        messagedigest.update(abyte1);
        byte abyte2[] = new byte[8];
        System.arraycopy(messagedigest.digest(), 0, abyte2, 0, 8);
        s2 = (new BigInteger(1, abyte2)).toString();
        s1 = s2;
_L3:
        k++;
        if (true) goto _L2; else goto _L1
_L1:
        return s1;
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
          goto _L3
    }

    protected int[] dE()
    {
        return (new int[] {
            0, 0
        });
    }

    public int[] g(Activity activity)
    {
        Window window = activity.getWindow();
        if (window != null)
        {
            View view = window.findViewById(0x1020002);
            if (view != null)
            {
                int ai[] = new int[2];
                ai[0] = view.getWidth();
                ai[1] = view.getHeight();
                return ai;
            }
        }
        return dE();
    }

    public int[] h(Activity activity)
    {
        int ai[] = g(activity);
        int ai1[] = new int[2];
        ai1[0] = he.b(activity, ai[0]);
        ai1[1] = he.b(activity, ai[1]);
        return ai1;
    }

    public int[] i(Activity activity)
    {
        Window window = activity.getWindow();
        if (window != null)
        {
            View view = window.findViewById(0x1020002);
            if (view != null)
            {
                int ai[] = new int[2];
                ai[0] = view.getTop();
                ai[1] = view.getBottom();
                return ai;
            }
        }
        return dE();
    }

    public int[] j(Activity activity)
    {
        int ai[] = i(activity);
        int ai1[] = new int[2];
        ai1[0] = he.b(activity, ai[0]);
        ai1[1] = he.b(activity, ai[1]);
        return ai1;
    }

    public boolean q(Context context)
    {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.AdActivity");
        ResolveInfo resolveinfo = context.getPackageManager().resolveActivity(intent, 0x10000);
        if (resolveinfo == null || resolveinfo.activityInfo == null)
        {
            hf.X("Could not find com.google.android.gms.ads.AdActivity, please make sure it is declared in AndroidManifest.xml.");
            return false;
        }
        boolean flag;
        if ((0x10 & resolveinfo.activityInfo.configChanges) == 0)
        {
            hf.X(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "keyboard"
            }));
            flag = false;
        } else
        {
            flag = true;
        }
        if ((0x20 & resolveinfo.activityInfo.configChanges) == 0)
        {
            hf.X(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "keyboardHidden"
            }));
            flag = false;
        }
        if ((0x80 & resolveinfo.activityInfo.configChanges) == 0)
        {
            hf.X(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "orientation"
            }));
            flag = false;
        }
        if ((0x100 & resolveinfo.activityInfo.configChanges) == 0)
        {
            hf.X(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "screenLayout"
            }));
            flag = false;
        }
        if ((0x200 & resolveinfo.activityInfo.configChanges) == 0)
        {
            hf.X(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "uiMode"
            }));
            flag = false;
        }
        if ((0x400 & resolveinfo.activityInfo.configChanges) == 0)
        {
            hf.X(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "screenSize"
            }));
            flag = false;
        }
        if ((0x800 & resolveinfo.activityInfo.configChanges) == 0)
        {
            hf.X(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] {
                "smallestScreenSize"
            }));
            return false;
        } else
        {
            return flag;
        }
    }

    public void r(Context context)
    {
        if (xA)
        {
            return;
        } else
        {
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.intent.action.USER_PRESENT");
            intentfilter.addAction("android.intent.action.SCREEN_OFF");
            context.getApplicationContext().registerReceiver(new a(), intentfilter);
            xA = true;
            return;
        }
    }

    public int[] t(Context context)
    {
        WindowManager windowmanager = (WindowManager)context.getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        return d(displaymetrics);
    }

    public JSONObject v(Map map)
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = new JSONObject();
            String s1;
            for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); a(jsonobject, s1, map.get(s1)))
            {
                s1 = (String)iterator.next();
            }

        }
        catch (ClassCastException classcastexception)
        {
            throw new JSONException((new StringBuilder()).append("Could not convert map to JSON: ").append(classcastexception.getMessage()).toString());
        }
        return jsonobject;
    }

    static 
    {
        SimpleDateFormat asimpledateformat[] = new SimpleDateFormat[2];
        asimpledateformat[0] = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
        asimpledateformat[1] = new SimpleDateFormat("yyyyMMdd");
        xy = asimpledateformat;
    }
}
