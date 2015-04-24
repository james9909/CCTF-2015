// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.scan;

import android.os.AsyncTask;
import android.util.Base64;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

// Referenced classes of package com.snapchat.android.scan:
//            SnapScanCallback, SnapScanResult

public class SnapScan
{

    private static final boolean a = d();
    private static final String b = com/snapchat/android/scan/SnapScan.getSimpleName();
    private int c;
    private int d;
    private int e;
    private final AtomicBoolean f = new AtomicBoolean(false);
    private final AtomicBoolean g = new AtomicBoolean(false);
    private final AtomicBoolean h = new AtomicBoolean(false);
    private final SnapScanCallback i;
    private final AtomicLong j = new AtomicLong(0L);
    private long k;
    private int l;

    public SnapScan(int i1, int j1, int k1, SnapScanCallback snapscancallback)
    {
        c = i1;
        d = j1;
        e = k1;
        i = snapscancallback;
    }

    private double a(long l1)
    {
        return (double)(System.nanoTime() - l1) / 1000000000D;
    }

    static int a(SnapScan snapscan)
    {
        return snapscan.c;
    }

    static SnapScanResult a(SnapScan snapscan, int i1, int j1, int k1, byte abyte0[], int l1)
    {
        return snapscan.processFrame(i1, j1, k1, abyte0, l1);
    }

    static int b(SnapScan snapscan)
    {
        return snapscan.d;
    }

    static int c(SnapScan snapscan)
    {
        return snapscan.e;
    }

    static String c()
    {
        return b;
    }

    static int d(SnapScan snapscan)
    {
        int i1 = snapscan.l;
        snapscan.l = i1 + 1;
        return i1;
    }

    private static boolean d()
    {
        try
        {
            System.loadLibrary("stlport_shared");
            System.loadLibrary("snapscan");
        }
        catch (Throwable throwable)
        {
            (new ErrorMetric("Failed to load the SnapScan lib!!!")).a(throwable).c();
            return false;
        }
        return true;
    }

    static AtomicBoolean e(SnapScan snapscan)
    {
        return snapscan.f;
    }

    static SnapScanCallback f(SnapScan snapscan)
    {
        return snapscan.i;
    }

    static AtomicBoolean g(SnapScan snapscan)
    {
        return snapscan.h;
    }

    private native SnapScanResult processFrame(int i1, int j1, int k1, byte abyte0[], int l1);

    public void a()
    {
        f.set(false);
        g.set(false);
        Timber.c(b, "Disable Scanner...", new Object[0]);
    }

    public void a(byte abyte0[])
    {
        if (f.get()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (a)
        {
            break; /* Loop/switch isn't completed */
        }
        Timber.e(b, "SnapScan native lib failed to load! -- Scanning disabled!!", new Object[0]);
        a();
        if (i != null)
        {
            i.y();
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (g.compareAndSet(false, true))
        {
            Timber.c(b, "Started scanning...", new Object[0]);
            if (i != null)
            {
                i.x();
            }
            l = 0;
            h.set(false);
            k = System.nanoTime();
            j.set(k);
        }
        if (a(j.get()) >= 5D)
        {
            Timber.c(b, (new StringBuilder()).append("Stopped scanning - Scan time is expired: ").append(a(k)).append(" seconds.").toString(), new Object[0]);
            a();
            if (i != null)
            {
                i.y();
            }
        }
        if (h.compareAndSet(false, true))
        {
            (new AsyncTask(abyte0) {

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

            
            {
                b = SnapScan.this;
                a = abyte0;
                super();
            }
            }).execute(new Void[0]);
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void b()
    {
        if (f.get())
        {
            j.set(System.nanoTime());
        } else
        {
            g.set(false);
            f.set(true);
        }
        Timber.c(b, "Enable Scanner...", new Object[0]);
    }

}
