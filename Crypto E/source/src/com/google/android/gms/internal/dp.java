// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.URLUtil;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            hk, ab, gy, bl, 
//            hf, gx, gp

public class dp
{

    private final Context mContext;
    private final hk mj;
    private final Map rD;

    public dp(hk hk1, Map map)
    {
        mj = hk1;
        rD = map;
        mContext = hk1.dL();
    }

    static Context a(dp dp1)
    {
        return dp1.mContext;
    }

    static hk b(dp dp1)
    {
        return dp1.mj;
    }

    String F(String s)
    {
        return Uri.parse(s).getLastPathSegment();
    }

    android.app.DownloadManager.Request b(String s, String s1)
    {
        android.app.DownloadManager.Request request = new android.app.DownloadManager.Request(Uri.parse(s));
        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, s1);
        ab.aL().a(request);
        return request;
    }

    public void execute()
    {
        if (!(new bl(mContext)).by())
        {
            hf.X("Store picture feature is not supported on this device.");
            return;
        }
        if (TextUtils.isEmpty((CharSequence)rD.get("iurl")))
        {
            hf.X("Image url cannot be empty.");
            return;
        }
        String s = (String)rD.get("iurl");
        if (!URLUtil.isValidUrl(s))
        {
            hf.X((new StringBuilder()).append("Invalid image url:").append(s).toString());
            return;
        }
        String s1 = F(s);
        if (!ab.aG().Q(s1))
        {
            hf.X("Image type not recognized:");
            return;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(mContext);
            builder.setTitle(gp.c(com.google.android.gms.R.string.store_picture_title, "Save image"));
            builder.setMessage(gp.c(com.google.android.gms.R.string.store_picture_message, "Allow Ad to store image in Picture gallery?"));
            builder.setPositiveButton(gp.c(com.google.android.gms.R.string.accept, "Accept"), new android.content.DialogInterface.OnClickListener(s, s1) {

                final String sa;
                final String sb;
                final dp sc;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    DownloadManager downloadmanager = (DownloadManager)dp.a(sc).getSystemService("download");
                    try
                    {
                        downloadmanager.enqueue(sc.b(sa, sb));
                        return;
                    }
                    catch (IllegalStateException illegalstateexception)
                    {
                        hf.V("Could not store picture.");
                    }
                }

            
            {
                sc = dp.this;
                sa = s;
                sb = s1;
                super();
            }
            });
            builder.setNegativeButton(gp.c(com.google.android.gms.R.string.decline, "Decline"), new android.content.DialogInterface.OnClickListener() {

                final dp sc;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dp.b(sc).b("onStorePictureCanceled", new JSONObject());
                }

            
            {
                sc = dp.this;
                super();
            }
            });
            builder.create().show();
            return;
        }
    }
}
