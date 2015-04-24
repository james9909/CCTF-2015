// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.tasks;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.Toast;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.Locale;
import net.hockeyapp.android.Constants;
import net.hockeyapp.android.Strings;
import net.hockeyapp.android.Tracking;
import net.hockeyapp.android.UpdateActivity;
import net.hockeyapp.android.UpdateFragment;
import net.hockeyapp.android.UpdateManager;
import net.hockeyapp.android.UpdateManagerListener;
import net.hockeyapp.android.utils.VersionCache;
import net.hockeyapp.android.utils.VersionHelper;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CheckUpdateTask extends AsyncTask
{

    protected String a;
    protected String b;
    private Activity c;
    private Boolean d;
    private UpdateManagerListener e;
    private long f;

    public CheckUpdateTask(WeakReference weakreference, String s, String s1, UpdateManagerListener updatemanagerlistener)
    {
        a = null;
        b = null;
        c = null;
        d = Boolean.valueOf(false);
        f = 0L;
        b = s1;
        a = s;
        e = updatemanagerlistener;
        if (weakreference != null)
        {
            c = (Activity)weakreference.get();
        }
        if (c != null)
        {
            f = Tracking.a(c);
            Constants.a(c);
        }
    }

    private static String a(InputStream inputstream)
    {
        BufferedReader bufferedreader;
        StringBuilder stringbuilder;
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream), 1024);
        stringbuilder = new StringBuilder();
_L1:
        String s = bufferedreader.readLine();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        stringbuilder.append((new StringBuilder()).append(s).append("\n").toString());
          goto _L1
        IOException ioexception1;
        ioexception1;
        ioexception1.printStackTrace();
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        return stringbuilder.toString();
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception3)
        {
            ioexception3.printStackTrace();
        }
        if (true)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        Exception exception;
        exception;
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        throw exception;
    }

    static void a(CheckUpdateTask checkupdatetask)
    {
        checkupdatetask.c();
    }

    static void a(CheckUpdateTask checkupdatetask, JSONArray jsonarray)
    {
        checkupdatetask.d(jsonarray);
    }

    static void a(CheckUpdateTask checkupdatetask, JSONArray jsonarray, Boolean boolean1)
    {
        checkupdatetask.a(jsonarray, boolean1);
    }

    private void a(JSONArray jsonarray, Boolean boolean1)
    {
        UpdateManagerListener updatemanagerlistener = e;
        Object obj = null;
        if (updatemanagerlistener != null)
        {
            obj = e.a();
        }
        if (obj == null)
        {
            obj = net/hockeyapp/android/UpdateActivity;
        }
        if (c != null)
        {
            Intent intent = new Intent();
            intent.setClass(c, ((Class) (obj)));
            intent.putExtra("json", jsonarray.toString());
            intent.putExtra("url", a("apk"));
            c.startActivity(intent);
            if (boolean1.booleanValue())
            {
                c.finish();
            }
        }
        c();
    }

    private boolean a(JSONArray jsonarray, int i)
    {
        int j = 0;
_L1:
        int k;
        boolean flag;
        JSONObject jsonobject;
        try
        {
            k = jsonarray.length();
        }
        catch (JSONException jsonexception)
        {
            return false;
        }
        flag = false;
        if (j >= k)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        jsonobject = jsonarray.getJSONObject(j);
        if (jsonobject.getInt("version") <= i || VersionHelper.a(jsonobject.getString("minimum_os_version"), android.os.Build.VERSION.RELEASE) > 0)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        if (jsonobject.has("mandatory"))
        {
            d = Boolean.valueOf(jsonobject.getBoolean("mandatory"));
        }
        flag = true;
        return flag;
        j++;
          goto _L1
    }

    static Activity b(CheckUpdateTask checkupdatetask)
    {
        return checkupdatetask.c;
    }

    private String b(String s)
    {
        String s1;
        try
        {
            s1 = URLEncoder.encode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return "";
        }
        return s1;
    }

    private JSONArray b(JSONArray jsonarray)
    {
        JSONArray jsonarray1 = new JSONArray();
        int i = 0;
        while (i < Math.min(jsonarray.length(), 25)) 
        {
            try
            {
                jsonarray1.put(jsonarray.get(i));
            }
            catch (JSONException jsonexception) { }
            i++;
        }
        return jsonarray1;
    }

    private void c()
    {
        c = null;
        a = null;
        b = null;
    }

    private void c(JSONArray jsonarray)
    {
        if (b())
        {
            VersionCache.a(c, jsonarray.toString());
        }
        if (c == null || c.isFinishing())
        {
            return;
        }
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(c);
        builder.setTitle(Strings.a(e, 9));
        if (!d.booleanValue())
        {
            builder.setMessage(Strings.a(e, 10));
            builder.setNegativeButton(Strings.a(e, 11), new android.content.DialogInterface.OnClickListener() {

                final CheckUpdateTask a;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    CheckUpdateTask.a(a);
                }

            
            {
                a = CheckUpdateTask.this;
                super();
            }
            });
            builder.setPositiveButton(Strings.a(e, 12), new android.content.DialogInterface.OnClickListener(jsonarray) {

                final JSONArray a;
                final CheckUpdateTask b;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if (b.b())
                    {
                        VersionCache.a(CheckUpdateTask.b(b), "[]");
                    }
                    WeakReference weakreference = new WeakReference(CheckUpdateTask.b(b));
                    if (UpdateManager.a().booleanValue() && UpdateManager.a(weakreference).booleanValue())
                    {
                        CheckUpdateTask.a(b, a);
                        return;
                    } else
                    {
                        CheckUpdateTask.a(b, a, Boolean.valueOf(false));
                        return;
                    }
                }

            
            {
                b = CheckUpdateTask.this;
                a = jsonarray;
                super();
            }
            });
            builder.create().show();
            return;
        } else
        {
            Toast.makeText(c, Strings.a(e, 8), 1).show();
            a(jsonarray, Boolean.valueOf(true));
            return;
        }
    }

    private void d(JSONArray jsonarray)
    {
        FragmentTransaction fragmenttransaction;
        Object obj;
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        fragmenttransaction = c.getFragmentManager().beginTransaction();
        fragmenttransaction.setTransition(4097);
        android.app.Fragment fragment = c.getFragmentManager().findFragmentByTag("hockey_update_dialog");
        if (fragment != null)
        {
            fragmenttransaction.remove(fragment);
        }
        fragmenttransaction.addToBackStack(null);
        obj = net/hockeyapp/android/UpdateFragment;
        if (e != null)
        {
            obj = e.b();
        }
        Method method = ((Class) (obj)).getMethod("newInstance", new Class[] {
            org/json/JSONArray, java/lang/String
        });
        Object aobj[] = new Object[2];
        aobj[0] = jsonarray;
        aobj[1] = a("apk");
        ((DialogFragment)method.invoke(null, aobj)).show(fragmenttransaction, "hockey_update_dialog");
        return;
        Exception exception;
        exception;
        Log.d("HockeyApp", "An exception happened while showing the update fragment:");
        exception.printStackTrace();
        Log.d("HockeyApp", "Showing update activity instead.");
        a(jsonarray, Boolean.valueOf(false));
        return;
    }

    protected int a()
    {
        return Integer.parseInt(Constants.b);
    }

    protected String a(String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(a);
        stringbuilder.append("api/2/apps/");
        String s1;
        if (b != null)
        {
            s1 = b;
        } else
        {
            s1 = c.getPackageName();
        }
        stringbuilder.append(s1);
        stringbuilder.append((new StringBuilder()).append("?format=").append(s).toString());
        if (android.provider.Settings.Secure.getString(c.getContentResolver(), "android_id") != null)
        {
            stringbuilder.append((new StringBuilder()).append("&udid=").append(b(android.provider.Settings.Secure.getString(c.getContentResolver(), "android_id"))).toString());
        }
        stringbuilder.append("&os=Android");
        stringbuilder.append((new StringBuilder()).append("&os_version=").append(b(Constants.e)).toString());
        stringbuilder.append((new StringBuilder()).append("&device=").append(b(Constants.f)).toString());
        stringbuilder.append((new StringBuilder()).append("&oem=").append(b(Constants.g)).toString());
        stringbuilder.append((new StringBuilder()).append("&app_version=").append(b(Constants.b)).toString());
        stringbuilder.append((new StringBuilder()).append("&sdk=").append(b("HockeySDK")).toString());
        stringbuilder.append((new StringBuilder()).append("&sdk_version=").append(b("3.0.2")).toString());
        stringbuilder.append((new StringBuilder()).append("&lang=").append(b(Locale.getDefault().getLanguage())).toString());
        stringbuilder.append((new StringBuilder()).append("&usage_time=").append(f).toString());
        return stringbuilder.toString();
    }

    protected URLConnection a(URL url)
    {
        URLConnection urlconnection = url.openConnection();
        urlconnection.addRequestProperty("User-Agent", "HockeySDK/Android");
        if (android.os.Build.VERSION.SDK_INT <= 9)
        {
            urlconnection.setRequestProperty("connection", "close");
        }
        return urlconnection;
    }

    protected transient JSONArray a(String as[])
    {
        int i;
        JSONArray jsonarray;
        i = a();
        jsonarray = new JSONArray(VersionCache.a(c));
        if (b() && a(jsonarray, i))
        {
            return jsonarray;
        }
        JSONArray jsonarray2;
        URLConnection urlconnection = a(new URL(a("json")));
        urlconnection.connect();
        BufferedInputStream bufferedinputstream = new BufferedInputStream(urlconnection.getInputStream());
        String s = a(((InputStream) (bufferedinputstream)));
        bufferedinputstream.close();
        JSONArray jsonarray1 = new JSONArray(s);
        if (!a(jsonarray1, i))
        {
            break MISSING_BLOCK_LABEL_128;
        }
        jsonarray2 = b(jsonarray1);
        return jsonarray2;
        Exception exception;
        exception;
        exception.printStackTrace();
        return null;
    }

    public void a(WeakReference weakreference)
    {
        if (weakreference != null)
        {
            c = (Activity)weakreference.get();
        }
        if (c != null)
        {
            Constants.a(c);
        }
    }

    protected void a(JSONArray jsonarray)
    {
        if (jsonarray != null)
        {
            if (e != null)
            {
                e.d();
            }
            c(jsonarray);
        } else
        if (e != null)
        {
            e.c();
            return;
        }
    }

    protected boolean b()
    {
        return true;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((JSONArray)obj);
    }
}
