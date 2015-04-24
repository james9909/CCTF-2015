// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipefilters;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.Shader;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.util.PhotoEffectTask;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.bitmap.BitmapPool;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.snapchat.android.ui.swipefilters:
//            FilterPage, FilterPageType

public class VisualFilterPage extends FilterPage
{

    protected Bitmap b;
    private final String c;
    private final int d;
    private AtomicBoolean e;

    public VisualFilterPage(String s, int i)
    {
        e = new AtomicBoolean(true);
        c = s;
        d = i;
    }

    public String a()
    {
        return c;
    }

    public void a(boolean flag, Bitmap bitmap)
    {
        if (flag) goto _L2; else goto _L1
_L1:
        return;
_L2:
        SnapchatApplication snapchatapplication;
        e.set(false);
        snapchatapplication = SnapchatApplication.e();
        if (snapchatapplication == null) goto _L1; else goto _L3
_L3:
        android.util.DisplayMetrics displaymetrics;
        boolean flag1;
label0:
        {
            displaymetrics = snapchatapplication.getResources().getDisplayMetrics();
            Bitmap bitmap1 = b;
            flag1 = false;
            if (bitmap1 == null)
            {
                break label0;
            }
            if (b.getWidth() == bitmap.getWidth())
            {
                int i = b.getHeight();
                int j = bitmap.getHeight();
                flag1 = false;
                if (i == j)
                {
                    break label0;
                }
            }
            flag1 = true;
        }
        if (flag1)
        {
            b = null;
        }
        if (b == null)
        {
            android.graphics.BitmapFactory.Options options = SnapMediaUtils.a(displaymetrics, bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.RGB_565);
            b = BitmapPool.a().a(options, true);
        }
        if (b == null)
        {
            b = SnapMediaUtils.a(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.RGB_565);
        }
        PhotoEffectTask.a(d, bitmap, b, snapchatapplication);
        a = new Paint();
        a.setShader(new BitmapShader(b, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP));
        android.graphics.Matrix matrix = SnapMediaUtils.f(bitmap, displaymetrics);
        a.getShader().setLocalMatrix(matrix);
        e.set(true);
        return;
        Exception exception1;
        exception1;
        Timber.e("VisualFilterPage", (new StringBuilder()).append("Failed to set the bitmap shader").append(exception1).toString(), new Object[0]);
        e.set(true);
        return;
        Exception exception;
        exception;
        e.set(true);
        throw exception;
    }

    public FilterPageType b()
    {
        return FilterPageType.d;
    }

    public void e()
    {
        if (e.get())
        {
            BitmapPool.a().a(b);
        }
        b = null;
    }
}
