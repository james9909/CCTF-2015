// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.scan;

import android.os.AsyncTask;
import android.util.Base64;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.snapchat.android.scan:
//            SnapScan, SnapScanResult, SnapScanCallback

class a extends AsyncTask
{

    final byte a[];
    final SnapScan b;

    protected transient SnapScanResult a(Void avoid[])
    {
        SnapScanResult snapscanresult;
        try
        {
            snapscanresult = SnapScan.a(b, SnapScan.a(b), SnapScan.b(b), SnapScan.c(b), a, 480);
            SnapScan.d(b);
        }
        catch (Exception exception)
        {
            Timber.e(SnapScan.c(), exception.getMessage(), new Object[0]);
            return null;
        }
        return snapscanresult;
    }

    protected void a(SnapScanResult snapscanresult)
    {
        if (!SnapScan.e(b).get())
        {
            Timber.c(SnapScan.c(), "Scanner was disabled during last processed frame.", new Object[0]);
            return;
        }
        if (snapscanresult != null)
        {
            if (snapscanresult.getScannedData() != null && snapscanresult.getScannedData().hasScannedData())
            {
                Timber.c(SnapScan.c(), "Stopped scanning - Result found.", new Object[0]);
                b.a();
                if (SnapScan.f(b) != null)
                {
                    SnapScan.f(b).y();
                }
                if (SnapScan.f(b) != null)
                {
                    SnapScan.f(b).a(snapscanresult.getScannedData().getSnapcodeVersion(), snapscanresult.getScannedData().getSnapcodeMessage());
                }
                if (snapscanresult.getScannerViewData() != null && snapscanresult.getScannerViewData().hasScannerViewImage() && SnapScan.f(b) != null)
                {
                    SnapScan.f(b).b(snapscanresult.getScannerViewData().getScannerViewBitmapImage());
                }
                (new EasyMetric("SNAPTAG_FOUND")).a("code-version", Integer.valueOf(snapscanresult.getScannedData().getSnapcodeVersion())).b("snaptag", Base64.encodeToString(snapscanresult.getScannedData().getSnapcodeMessage(), 0)).c();
            }
        } else
        {
            Timber.d(SnapScan.c(), "Unexpected null SnapScanResult.", new Object[0]);
        }
        SnapScan.g(b).set(false);
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((SnapScanResult)obj);
    }

    ult(SnapScan snapscan, byte abyte0[])
    {
        b = snapscan;
        a = abyte0;
        super();
    }
}
