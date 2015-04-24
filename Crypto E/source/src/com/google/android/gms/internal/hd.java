// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.google.android.gms.internal:
//            gu, hf, ab, gx

public final class hd extends gu
{

    private final Context mContext;
    private final String mK;
    private final String wh;
    private String xg;

    public hd(Context context, String s, String s1)
    {
        xg = null;
        mContext = context;
        mK = s;
        wh = s1;
    }

    public hd(Context context, String s, String s1, String s2)
    {
        xg = null;
        mContext = context;
        mK = s;
        wh = s1;
        xg = s2;
    }

    public void cG()
    {
        HttpURLConnection httpurlconnection;
        hf.W((new StringBuilder()).append("Pinging URL: ").append(wh).toString());
        httpurlconnection = (HttpURLConnection)(new URL(wh)).openConnection();
        if (!TextUtils.isEmpty(xg))
        {
            break MISSING_BLOCK_LABEL_131;
        }
        ab.aG().a(mContext, mK, true, httpurlconnection);
_L1:
        int i = httpurlconnection.getResponseCode();
        if (i >= 200 && i < 300)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        hf.X((new StringBuilder()).append("Received non-success response code ").append(i).append(" from pinging URL: ").append(wh).toString());
        Exception exception;
        try
        {
            httpurlconnection.disconnect();
            return;
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception)
        {
            hf.X((new StringBuilder()).append("Error while parsing ping URL: ").append(wh).append(". ").append(indexoutofboundsexception.getMessage()).toString());
            return;
        }
        catch (IOException ioexception)
        {
            hf.X((new StringBuilder()).append("Error while pinging URL: ").append(wh).append(". ").append(ioexception.getMessage()).toString());
        }
        break MISSING_BLOCK_LABEL_240;
        ab.aG().a(mContext, mK, true, httpurlconnection, xg);
          goto _L1
        exception;
        httpurlconnection.disconnect();
        throw exception;
    }

    public void onStop()
    {
    }
}
