// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap.internal;

import android.content.ContentResolver;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.MemoryAnalytics;
import com.snapchat.android.util.bitmap.BitmapDecodeResult;
import com.snapchat.android.util.bitmap.BitmapPool;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.PrintWriter;
import java.io.StringWriter;

// Referenced classes of package com.snapchat.android.util.bitmap.internal:
//            ReusableBitmapOptionsProvider, BitmapSource

public class BitmapDecoder
{

    private final DisplayMetrics a;
    private final ContentResolver b;
    private final Resources c;
    private final BitmapPool d;
    private ReusableBitmapOptionsProvider e;
    private MemoryAnalytics f;

    public BitmapDecoder(DisplayMetrics displaymetrics, ContentResolver contentresolver, Resources resources, BitmapPool bitmappool)
    {
        this(displaymetrics, contentresolver, resources, bitmappool, new ReusableBitmapOptionsProvider(), new MemoryAnalytics());
    }

    BitmapDecoder(DisplayMetrics displaymetrics, ContentResolver contentresolver, Resources resources, BitmapPool bitmappool, ReusableBitmapOptionsProvider reusablebitmapoptionsprovider, MemoryAnalytics memoryanalytics)
    {
        a = displaymetrics;
        b = contentresolver;
        c = resources;
        d = bitmappool;
        e = reusablebitmapoptionsprovider;
        f = memoryanalytics;
    }

    private void a(android.graphics.BitmapFactory.Options options, String s)
    {
        Bitmap bitmap = options.inBitmap;
        String s1 = (new StringBuilder()).append("Failed to decode bitmap. \n").append(s).append("\n").append("options width: %d\n").append("options height: %d\n").append("options sample size: %d\n").append("options config: %s\n").append("reused bitmap width: %d\n").append("reused bitmap height: %d\n").append("reused bitmap config: %s\n").append("reused bitmap mutable?: %b\n").append("reused bitmap recycled?: %b\n").toString();
        Object aobj[] = new Object[9];
        aobj[0] = Integer.valueOf(options.outWidth);
        aobj[1] = Integer.valueOf(options.outHeight);
        aobj[2] = Integer.valueOf(options.inSampleSize);
        aobj[3] = options.inPreferredConfig.name();
        aobj[4] = Integer.valueOf(bitmap.getWidth());
        aobj[5] = Integer.valueOf(bitmap.getHeight());
        aobj[6] = bitmap.getConfig().name();
        aobj[7] = Boolean.valueOf(bitmap.isMutable());
        aobj[8] = Boolean.valueOf(bitmap.isRecycled());
        throw new IllegalArgumentException(String.format(s1, aobj));
    }

    protected android.graphics.BitmapFactory.Options a()
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        return options;
    }

    protected android.graphics.BitmapFactory.Options a(int i, int j, boolean flag)
    {
        android.graphics.BitmapFactory.Options options;
        if (i <= 0 || j <= 0)
        {
            Timber.c("BitmapDecoder", "Invalid measurements! Can't use a Bitmap from the pool. :(", new Object[0]);
            options = e.a();
        } else
        {
            options = e.a(a, i, j);
            if (d != null)
            {
                options.inBitmap = d.a(options, flag);
                return options;
            }
        }
        return options;
    }

    public BitmapDecodeResult a(BitmapSource bitmapsource, int i, int j, boolean flag)
    {
        android.graphics.BitmapFactory.Options options1;
        boolean flag1 = true;
        bitmapsource.a(b, c);
        if (i <= 0 || j <= 0)
        {
            android.graphics.BitmapFactory.Options options = a();
            bitmapsource.a(options);
            if (options.outHeight <= 0 || options.outWidth <= 0)
            {
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(options.outWidth);
                aobj[flag1] = Integer.valueOf(options.outHeight);
                Timber.e("BitmapDecoder", "Measured invalid Bitmap size %d x %d", aobj);
                return new BitmapDecodeResult();
            }
            i = options.outWidth;
            j = options.outHeight;
        }
        options1 = a(i, j, flag);
        Bitmap bitmap;
        BitmapDecodeResult bitmapdecoderesult;
        if (options1.inBitmap == null)
        {
            flag1 = false;
        }
        bitmap = bitmapsource.a(options1);
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_182;
        }
        bitmapdecoderesult = new BitmapDecodeResult(bitmap, flag1);
        return bitmapdecoderesult;
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        f.a(outofmemoryerror);
_L2:
        return new BitmapDecodeResult();
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        if (ReleaseManager.f())
        {
            StringWriter stringwriter = new StringWriter();
            PrintWriter printwriter = new PrintWriter(stringwriter);
            illegalargumentexception.printStackTrace(printwriter);
            printwriter.flush();
            a(options1, stringwriter.toString());
        }
        if (true) goto _L2; else goto _L1
_L1:
    }
}
