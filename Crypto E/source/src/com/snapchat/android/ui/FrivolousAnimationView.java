// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.HashMap;

public class FrivolousAnimationView extends ImageView
{

    private static HashMap c = new HashMap();
    private long a;
    private RectF b;
    private int d;
    private Bitmap e;
    private Paint f;
    private int g;
    private Bitmap h;
    private Paint i;

    public FrivolousAnimationView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = 0;
        g = 0;
        i = new Paint();
        i.setColor(0xff0000ff);
        i.setAntiAlias(true);
        f = new Paint();
        f.setColor(0xffff0000);
        f.setAntiAlias(true);
        a = 0x8000000000000000L;
        b = new RectF();
    }

    Bitmap a(int j, Canvas canvas, Context context)
    {
        Bitmap bitmap;
        if (canvas.getWidth() <= 0 || canvas.getHeight() <= 0)
        {
            bitmap = null;
        } else
        {
            String s = (new StringBuilder()).append(j).append("_").append(canvas.getWidth()).append("_").append(canvas.getHeight()).toString();
            bitmap = (Bitmap)c.get(s);
            if (bitmap == null)
            {
                android.content.res.Resources resources = context.getResources();
                if (resources == null)
                {
                    return null;
                }
                Bitmap bitmap1;
                try
                {
                    bitmap1 = BitmapFactory.decodeResource(resources, j);
                }
                catch (Exception exception)
                {
                    if (ReleaseManager.e())
                    {
                        throw new RuntimeException("Could not get drawable! Bad resource perchance?");
                    } else
                    {
                        return null;
                    }
                }
                if (bitmap1 == null)
                {
                    return null;
                } else
                {
                    Bitmap bitmap2 = Bitmap.createScaledBitmap(bitmap1, canvas.getWidth(), canvas.getHeight(), true);
                    c.put(s, bitmap2);
                    return bitmap2;
                }
            }
        }
        return bitmap;
    }

    public void a()
    {
        a = 0x8000000000000000L;
    }

    public void a(long l)
    {
        a = l;
        invalidate();
    }

    protected void a(Canvas canvas)
    {
        super.onDraw(canvas);
    }

    public void onDraw(Canvas canvas)
    {
        long l = 0L;
        this;
        JVM INSTR monitorenter ;
        if (g != 0 && d != 0) goto _L2; else goto _L1
_L1:
        a(canvas);
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (UserPrefs.K())
        {
            break MISSING_BLOCK_LABEL_47;
        }
        a(canvas);
          goto _L3
        Exception exception;
        exception;
        throw exception;
        long l1;
        canvas.drawColor(0);
        if (h == null || h.getHeight() != canvas.getHeight() || h.getWidth() != canvas.getWidth())
        {
            h = a(g, canvas, getContext());
            if (h != null)
            {
                i.setShader(new BitmapShader(h, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP));
            }
        }
        if (e == null || e.getHeight() != canvas.getHeight() || e.getWidth() != canvas.getWidth())
        {
            e = a(d, canvas, getContext());
            if (e != null)
            {
                f.setShader(new BitmapShader(e, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP));
            }
        }
        l1 = System.currentTimeMillis() - a;
        if (l1 >= l) goto _L5; else goto _L4
_L4:
        float f1;
        f1 = 360F * (1.0F - (float)l / 500F);
        b.set(0.0F, 0.0F, canvas.getWidth(), canvas.getHeight());
        if (f1 < 360F) goto _L7; else goto _L6
_L6:
        if (e == null) goto _L9; else goto _L8
_L8:
        canvas.drawRect(b, f);
          goto _L3
_L11:
        invalidate();
        l = l1;
          goto _L4
_L9:
        if (ReleaseManager.e())
        {
            throw new RuntimeException("Could not get Frivolous animation icon bitmap");
        }
        a(canvas);
          goto _L3
_L7:
        if (e != null)
        {
            canvas.drawArc(b, -90F, f1, true, f);
        }
        if (h != null)
        {
            canvas.drawArc(b, -90F + f1, 360F - f1, true, i);
        }
          goto _L3
_L5:
        if (l1 <= 500L) goto _L11; else goto _L10
_L10:
        l = 500L;
          goto _L4
    }

    public void setIconResources(int j, int k)
    {
        this;
        JVM INSTR monitorenter ;
        if (j == 0 && k == 0)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        setBackgroundResource(0);
        if (j != d)
        {
            setImageResource(j);
            d = j;
            e = null;
        }
        if (k != g)
        {
            g = k;
            h = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
