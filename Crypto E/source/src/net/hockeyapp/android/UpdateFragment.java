// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.app.Activity;
import android.app.DialogFragment;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import net.hockeyapp.android.listeners.DownloadFileListener;
import net.hockeyapp.android.tasks.DownloadFileTask;
import net.hockeyapp.android.utils.VersionHelper;
import net.hockeyapp.android.views.UpdateView;
import org.json.JSONArray;
import org.json.JSONException;

// Referenced classes of package net.hockeyapp.android:
//            UpdateInfoListener, UpdateManager, UpdateManagerListener

public class UpdateFragment extends DialogFragment
    implements android.view.View.OnClickListener, UpdateInfoListener
{

    private DownloadFileTask a;
    private JSONArray b;
    private String c;
    private VersionHelper d;

    public UpdateFragment()
    {
    }

    private void a(Activity activity)
    {
        a = new DownloadFileTask(activity, c, new DownloadFileListener(activity) {

            final Activity a;
            final UpdateFragment b;

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
            }

            public void a(DownloadFileTask downloadfiletask, Boolean boolean1)
            {
                if (boolean1.booleanValue())
                {
                    UpdateFragment.a(b, a);
                }
            }

            
            {
                b = UpdateFragment.this;
                a = activity;
                super();
            }
        });
        a.execute(new String[0]);
    }

    static void a(UpdateFragment updatefragment, Activity activity)
    {
        updatefragment.a(activity);
    }

    public String a()
    {
        Activity activity = getActivity();
        String s;
        try
        {
            PackageManager packagemanager = activity.getPackageManager();
            s = packagemanager.getApplicationLabel(packagemanager.getApplicationInfo(activity.getPackageName(), 0)).toString();
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return "";
        }
        return s;
    }

    public View b()
    {
        return new UpdateView(getActivity(), false, true);
    }

    public int e()
    {
        int i;
        try
        {
            i = getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 128).versionCode;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return -1;
        }
        catch (NullPointerException nullpointerexception)
        {
            return -1;
        }
        return i;
    }

    public void onClick(View view)
    {
        a(getActivity());
        dismiss();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        try
        {
            c = getArguments().getString("url");
            b = new JSONArray(getArguments().getString("versionInfo"));
        }
        catch (JSONException jsonexception)
        {
            dismiss();
            return;
        }
        setStyle(1, 0x1030073);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = b();
        d = new VersionHelper(b.toString(), this);
        ((TextView)view.findViewById(4098)).setText(a());
        ((TextView)view.findViewById(4099)).setText((new StringBuilder()).append("Version ").append(d.a()).append("\n").append(d.b()).toString());
        ((Button)view.findViewById(4100)).setOnClickListener(this);
        WebView webview = (WebView)view.findViewById(4101);
        webview.clearCache(true);
        webview.destroyDrawingCache();
        webview.loadDataWithBaseURL("https://sdk.hockeyapp.net/", d.a(false), "text/html", "utf-8", null);
        return view;
    }
}
