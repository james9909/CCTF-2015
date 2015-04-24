// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import net.hockeyapp.android.listeners.DownloadFileListener;
import net.hockeyapp.android.objects.ErrorObject;
import net.hockeyapp.android.tasks.DownloadFileTask;
import net.hockeyapp.android.utils.VersionHelper;
import net.hockeyapp.android.views.UpdateView;

// Referenced classes of package net.hockeyapp.android:
//            UpdateActivityInterface, UpdateInfoListener, UpdateManager, UpdateManagerListener

public class UpdateActivity extends Activity
    implements android.view.View.OnClickListener, UpdateActivityInterface, UpdateInfoListener
{

    protected DownloadFileTask a;
    protected VersionHelper b;
    private final int c = 0;
    private ErrorObject d;
    private Context e;

    public UpdateActivity()
    {
    }

    static ErrorObject a(UpdateActivity updateactivity, ErrorObject errorobject)
    {
        updateactivity.d = errorobject;
        return errorobject;
    }

    private boolean a(Context context)
    {
        return context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    private boolean h()
    {
        String as[] = {
            "value"
        };
        Cursor cursor;
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            String as2[] = new String[2];
            as2[0] = "install_non_market_apps";
            as2[1] = String.valueOf(1);
            cursor = getContentResolver().query(android.provider.Settings.Global.CONTENT_URI, as, "name = ? AND value = ?", as2, null);
        } else
        {
            String as1[] = new String[2];
            as1[0] = "install_non_market_apps";
            as1[1] = String.valueOf(1);
            cursor = getContentResolver().query(android.provider.Settings.Secure.CONTENT_URI, as, "name = ? AND value = ?", as1, null);
        }
        return cursor.getCount() == 1;
    }

    protected void a()
    {
        ((TextView)findViewById(4098)).setText(g());
        ((TextView)findViewById(4099)).setText((new StringBuilder()).append("Version ").append(b.a()).append("\n").append(b.b()).toString());
        ((Button)findViewById(4100)).setOnClickListener(this);
        WebView webview = (WebView)findViewById(4101);
        webview.clearCache(true);
        webview.destroyDrawingCache();
        webview.loadDataWithBaseURL("https://sdk.hockeyapp.net/", b(), "text/html", "utf-8", null);
    }

    protected void a(String s)
    {
        a(s, ((DownloadFileListener) (new DownloadFileListener() {

            final UpdateActivity a;

            public String a(int i)
            {
                UpdateManagerListener updatemanagerlistener = UpdateManager.b();
                if (updatemanagerlistener != null)
                {
                    return updatemanagerlistener.a(i);
                } else
                {
                    return null;
                }
            }

            public void a(DownloadFileTask downloadfiletask)
            {
                a.d();
            }

            public void a(DownloadFileTask downloadfiletask, Boolean boolean1)
            {
                if (boolean1.booleanValue())
                {
                    a.c();
                    return;
                } else
                {
                    a.d();
                    return;
                }
            }

            
            {
                a = UpdateActivity.this;
                super();
            }
        })));
        a.execute(new String[0]);
    }

    protected void a(String s, DownloadFileListener downloadfilelistener)
    {
        a = new DownloadFileTask(this, s, downloadfilelistener);
    }

    protected String b()
    {
        return b.a(false);
    }

    protected void c()
    {
        a(getIntent().getStringExtra("url"));
    }

    public void d()
    {
        findViewById(4100).setEnabled(true);
    }

    public int e()
    {
        int i;
        try
        {
            i = getPackageManager().getPackageInfo(getPackageName(), 128).versionCode;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return -1;
        }
        return i;
    }

    public ViewGroup f()
    {
        return new UpdateView(this);
    }

    public String g()
    {
        String s;
        try
        {
            PackageManager packagemanager = getPackageManager();
            s = packagemanager.getApplicationLabel(packagemanager.getApplicationInfo(getPackageName(), 0)).toString();
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return "";
        }
        return s;
    }

    public void onClick(View view)
    {
        if (!a(e))
        {
            d = new ErrorObject();
            d.a("The permission to access the external storage permission is not set. Please contact the developer.");
            runOnUiThread(new Runnable() {

                final UpdateActivity a;

                public void run()
                {
                    a.showDialog(0);
                }

            
            {
                a = UpdateActivity.this;
                super();
            }
            });
            return;
        }
        if (!h())
        {
            d = new ErrorObject();
            d.a("The installation from unknown sources is not enabled. Please check the device settings.");
            runOnUiThread(new Runnable() {

                final UpdateActivity a;

                public void run()
                {
                    a.showDialog(0);
                }

            
            {
                a = UpdateActivity.this;
                super();
            }
            });
            return;
        } else
        {
            c();
            view.setEnabled(false);
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setTitle("App Update");
        setContentView(f());
        e = this;
        b = new VersionHelper(getIntent().getStringExtra("json"), this);
        a();
        a = (DownloadFileTask)getLastNonConfigurationInstance();
        if (a != null)
        {
            a.a(this);
        }
    }

    protected Dialog onCreateDialog(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 0: // '\0'
            return (new android.app.AlertDialog.Builder(this)).setMessage("An error has occured").setCancelable(false).setTitle("Error").setIcon(0x1080027).setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                final UpdateActivity a;

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    UpdateActivity.a(a, null);
                    dialoginterface.cancel();
                }

            
            {
                a = UpdateActivity.this;
                super();
            }
            }).create();
        }
    }

    protected void onPrepareDialog(int i, Dialog dialog)
    {
        AlertDialog alertdialog;
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
            alertdialog = (AlertDialog)dialog;
            break;
        }
        if (d != null)
        {
            alertdialog.setMessage(d.a());
            return;
        } else
        {
            alertdialog.setMessage("An unknown error has occured.");
            return;
        }
    }

    public Object onRetainNonConfigurationInstance()
    {
        if (a != null)
        {
            a.a();
        }
        return a;
    }
}
