// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import net.hockeyapp.android.utils.ConnectionManager;
import net.hockeyapp.android.utils.PrefsUtil;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package net.hockeyapp.android:
//            Constants, CrashManagerListener, Strings, ExceptionHandler

public class CrashManager
{

    private static String a = null;
    private static String b = null;

    public CrashManager()
    {
    }

    public static int a(WeakReference weakreference)
    {
        int i;
        String as[];
        i = 0;
        as = b();
        if (as == null || as.length <= 0) goto _L2; else goto _L1
_L1:
        if (weakreference == null) goto _L4; else goto _L3
_L3:
        Context context = (Context)weakreference.get();
        if (context == null) goto _L4; else goto _L5
_L5:
        List list2 = Arrays.asList(context.getSharedPreferences("HockeySDK", 0).getString("ConfirmedFilenames", "").split("\\|"));
        List list = list2;
_L7:
        List list1 = list;
_L6:
        if (list1 != null)
        {
            byte byte0 = 2;
            int j = as.length;
            do
            {
label0:
                {
                    if (i < j)
                    {
                        if (list1.contains(as[i]))
                        {
                            break label0;
                        }
                        byte0 = 1;
                    }
                    return byte0;
                }
                i++;
            } while (true);
        } else
        {
            return 1;
        }
        Exception exception;
        exception;
        list1 = null;
        if (true) goto _L6; else goto _L4
_L4:
        list = null;
        if (true) goto _L7; else goto _L2
_L2:
        return 0;
    }

    private static String a()
    {
        return (new StringBuilder()).append(b).append("api/2/apps/").append(a).append("/crashes/").toString();
    }

    private static String a(String as[], String s)
    {
        StringBuffer stringbuffer = new StringBuffer();
        for (int i = 0; i < as.length; i++)
        {
            stringbuffer.append(as[i]);
            if (i < -1 + as.length)
            {
                stringbuffer.append(s);
            }
        }

        return stringbuffer.toString();
    }

    public static void a(Context context, String s, String s1, CrashManagerListener crashmanagerlistener)
    {
        a(context, s, s1, crashmanagerlistener, false);
        a(context, crashmanagerlistener);
    }

    private static void a(Context context, String s, String s1, CrashManagerListener crashmanagerlistener, boolean flag)
    {
        if (context != null)
        {
            b = s;
            a = s1;
            Constants.a(context);
            if (a == null)
            {
                a = Constants.d;
            }
            if (flag)
            {
                boolean flag1;
                Boolean boolean1;
                if (crashmanagerlistener != null && crashmanagerlistener.g())
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                boolean1 = Boolean.valueOf(flag1);
                e(new WeakReference(context), crashmanagerlistener, boolean1.booleanValue());
            }
        }
    }

    public static void a(Context context, String s, CrashManagerListener crashmanagerlistener)
    {
        a(context, "https://sdk.hockeyapp.net/", s, crashmanagerlistener);
    }

    public static void a(Context context, CrashManagerListener crashmanagerlistener)
    {
        boolean flag;
        Boolean boolean1;
        WeakReference weakreference;
        int i;
        if (crashmanagerlistener != null && crashmanagerlistener.g())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        boolean1 = Boolean.valueOf(flag);
        weakreference = new WeakReference(context);
        i = a(weakreference);
        if (i == 1)
        {
            Boolean boolean2 = Boolean.valueOf(false);
            if (crashmanagerlistener != null)
            {
                boolean2 = Boolean.valueOf(Boolean.valueOf(boolean2.booleanValue() | crashmanagerlistener.c()).booleanValue() | crashmanagerlistener.i());
                crashmanagerlistener.j();
            }
            if (!boolean2.booleanValue())
            {
                c(weakreference, crashmanagerlistener, boolean1.booleanValue());
                return;
            } else
            {
                d(weakreference, crashmanagerlistener, boolean1.booleanValue());
                return;
            }
        }
        if (i == 2)
        {
            if (crashmanagerlistener != null)
            {
                crashmanagerlistener.k();
            }
            d(weakreference, crashmanagerlistener, boolean1.booleanValue());
            return;
        } else
        {
            e(weakreference, crashmanagerlistener, boolean1.booleanValue());
            return;
        }
    }

    private static void a(WeakReference weakreference, String s)
    {
        if (weakreference != null)
        {
            Context context = (Context)weakreference.get();
            if (context != null)
            {
                context.deleteFile(s);
                context.deleteFile(s.replace(".stacktrace", ".user"));
                context.deleteFile(s.replace(".stacktrace", ".contact"));
                context.deleteFile(s.replace(".stacktrace", ".description"));
            }
        }
    }

    public static void a(WeakReference weakreference, CrashManagerListener crashmanagerlistener)
    {
        String as[];
        Boolean boolean1;
        as = b();
        boolean1 = Boolean.valueOf(false);
        if (as == null || as.length <= 0) goto _L2; else goto _L1
_L1:
        Boolean boolean2;
        int i;
        Log.d("HockeyApp", (new StringBuilder()).append("Found ").append(as.length).append(" stacktrace(s).").toString());
        boolean2 = boolean1;
        i = 0;
_L3:
        if (i >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        Boolean boolean3;
        String s = as[i];
        String s1 = b(weakreference, s);
        if (s1.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_323;
        }
        Log.d("HockeyApp", (new StringBuilder()).append("Transmitting crash data: \n").append(s1).toString());
        DefaultHttpClient defaulthttpclient = (DefaultHttpClient)ConnectionManager.a().b();
        HttpPost httppost = new HttpPost(a());
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("raw", s1));
        arraylist.add(new BasicNameValuePair("userID", b(weakreference, s.replace(".stacktrace", ".user"))));
        arraylist.add(new BasicNameValuePair("contact", b(weakreference, s.replace(".stacktrace", ".contact"))));
        arraylist.add(new BasicNameValuePair("description", b(weakreference, s.replace(".stacktrace", ".description"))));
        arraylist.add(new BasicNameValuePair("sdk", "HockeySDK"));
        arraylist.add(new BasicNameValuePair("sdk_version", "3.0.2"));
        httppost.setEntity(new UrlEncodedFormEntity(arraylist, "UTF-8"));
        defaulthttpclient.execute(httppost);
        boolean3 = Boolean.valueOf(true);
        boolean2 = boolean3;
        if (boolean2.booleanValue())
        {
            a(weakreference, as[i]);
            if (crashmanagerlistener != null)
            {
                crashmanagerlistener.l();
            }
        } else
        if (crashmanagerlistener != null)
        {
            crashmanagerlistener.m();
        }
_L4:
        i++;
        if (true) goto _L3; else goto _L2
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        if (boolean2.booleanValue())
        {
            a(weakreference, as[i]);
            if (crashmanagerlistener != null)
            {
                crashmanagerlistener.l();
            }
        } else
        if (crashmanagerlistener != null)
        {
            crashmanagerlistener.m();
        }
          goto _L4
        Exception exception;
        exception;
        if (!boolean2.booleanValue()) goto _L6; else goto _L5
_L5:
        a(weakreference, as[i]);
        if (crashmanagerlistener != null)
        {
            crashmanagerlistener.l();
        }
_L7:
        throw exception;
_L6:
        if (crashmanagerlistener != null)
        {
            crashmanagerlistener.m();
        }
        if (true) goto _L7; else goto _L2
_L2:
    }

    static void a(WeakReference weakreference, CrashManagerListener crashmanagerlistener, boolean flag)
    {
        e(weakreference, crashmanagerlistener, flag);
    }

    private static String b(WeakReference weakreference, String s)
    {
        if (weakreference == null) goto _L2; else goto _L1
_L1:
        Context context = (Context)weakreference.get();
        if (context == null) goto _L2; else goto _L3
_L3:
        StringBuilder stringbuilder = new StringBuilder();
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(context.openFileInput(s)));
_L6:
        String s1 = bufferedreader.readLine();
        if (s1 == null) goto _L5; else goto _L4
_L4:
        stringbuilder.append(s1);
        stringbuilder.append(System.getProperty("line.separator"));
          goto _L6
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        BufferedReader bufferedreader1 = bufferedreader;
_L12:
        IOException ioexception;
        Exception exception;
        if (bufferedreader1 != null)
        {
            try
            {
                bufferedreader1.close();
            }
            catch (IOException ioexception3) { }
        }
_L7:
        return stringbuilder.toString();
_L5:
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception4) { }
        }
          goto _L7
        ioexception;
        bufferedreader = null;
_L10:
        ioexception.printStackTrace();
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception2) { }
        }
          goto _L7
        exception;
        bufferedreader = null;
_L9:
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception1) { }
        }
        throw exception;
_L2:
        return null;
        exception;
        if (true) goto _L9; else goto _L8
_L8:
        ioexception;
          goto _L10
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        bufferedreader1 = null;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public static void b(WeakReference weakreference)
    {
        String as[];
        int i;
        as = b();
        if (as == null || as.length <= 0)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        Log.d("HockeyApp", (new StringBuilder()).append("Found ").append(as.length).append(" stacktrace(s).").toString());
        i = 0;
_L3:
        if (i >= as.length) goto _L2; else goto _L1
_L1:
        if (weakreference == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        Context context;
        Log.d("HockeyApp", (new StringBuilder()).append("Delete stacktrace ").append(as[i]).append(".").toString());
        a(weakreference, as[i]);
        context = (Context)weakreference.get();
        if (context != null)
        {
            try
            {
                context.deleteFile(as[i]);
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        i++;
          goto _L3
_L2:
    }

    static void b(WeakReference weakreference, CrashManagerListener crashmanagerlistener, boolean flag)
    {
        d(weakreference, crashmanagerlistener, flag);
    }

    private static String[] b()
    {
        if (Constants.a != null)
        {
            Log.d("HockeyApp", (new StringBuilder()).append("Looking for exceptions in: ").append(Constants.a).toString());
            File file = new File((new StringBuilder()).append(Constants.a).append("/").toString());
            if (!file.mkdir() && !file.exists())
            {
                return new String[0];
            } else
            {
                return file.list(new FilenameFilter() {

                    public boolean accept(File file1, String s)
                    {
                        return s.endsWith(".stacktrace");
                    }

                });
            }
        } else
        {
            Log.d("HockeyApp", "Can't search for exception as file path is null.");
            return null;
        }
    }

    private static void c(WeakReference weakreference)
    {
        Context context;
        if (weakreference == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        context = (Context)weakreference.get();
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        String as[] = b();
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("HockeySDK", 0).edit();
        editor.putString("ConfirmedFilenames", a(as, "|"));
        PrefsUtil.a(editor);
        return;
        Exception exception;
        exception;
    }

    private static void c(WeakReference weakreference, CrashManagerListener crashmanagerlistener, boolean flag)
    {
        Context context = null;
        if (weakreference != null)
        {
            context = (Context)weakreference.get();
        }
        if (context == null)
        {
            return;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
            builder.setTitle(Strings.a(crashmanagerlistener, 0));
            builder.setMessage(Strings.a(crashmanagerlistener, 1));
            builder.setNegativeButton(Strings.a(crashmanagerlistener, 2), new android.content.DialogInterface.OnClickListener(crashmanagerlistener, weakreference, flag) {

                final CrashManagerListener a;
                final WeakReference b;
                final boolean c;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if (a != null)
                    {
                        a.n();
                    }
                    CrashManager.b(b);
                    CrashManager.a(b, a, c);
                }

            
            {
                a = crashmanagerlistener;
                b = weakreference;
                c = flag;
                super();
            }
            });
            builder.setPositiveButton(Strings.a(crashmanagerlistener, 3), new android.content.DialogInterface.OnClickListener(weakreference, crashmanagerlistener, flag) {

                final WeakReference a;
                final CrashManagerListener b;
                final boolean c;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    CrashManager.b(a, b, c);
                }

            
            {
                a = weakreference;
                b = crashmanagerlistener;
                c = flag;
                super();
            }
            });
            builder.create().show();
            return;
        }
    }

    private static void d(WeakReference weakreference, CrashManagerListener crashmanagerlistener, boolean flag)
    {
        c(weakreference);
        (new Thread(weakreference, crashmanagerlistener, flag) {

            final WeakReference a;
            final CrashManagerListener b;
            final boolean c;

            public void run()
            {
                CrashManager.a(a, b);
                CrashManager.a(a, b, c);
            }

            
            {
                a = weakreference;
                b = crashmanagerlistener;
                c = flag;
                super();
            }
        }).start();
    }

    private static void e(WeakReference weakreference, CrashManagerListener crashmanagerlistener, boolean flag)
    {
        if (Constants.b != null && Constants.d != null)
        {
            Thread.UncaughtExceptionHandler uncaughtexceptionhandler = Thread.getDefaultUncaughtExceptionHandler();
            if (uncaughtexceptionhandler != null)
            {
                Log.d("HockeyApp", (new StringBuilder()).append("Current handler class = ").append(uncaughtexceptionhandler.getClass().getName()).toString());
            }
            if (uncaughtexceptionhandler instanceof ExceptionHandler)
            {
                ((ExceptionHandler)uncaughtexceptionhandler).a(crashmanagerlistener);
                return;
            } else
            {
                Thread.setDefaultUncaughtExceptionHandler(new ExceptionHandler(uncaughtexceptionhandler, crashmanagerlistener, flag));
                return;
            }
        } else
        {
            Log.d("HockeyApp", "Exception handler not set because version or package is null.");
            return;
        }
    }

}
