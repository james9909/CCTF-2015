// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.snapchat.android.Timber;
import com.snapchat.android.util.InterpolationUtils;
import com.snapchat.android.util.ScTextUtils;
import com.snapchat.android.util.ViewUtils;

public class ChatCameraButton extends View
{
    public static interface TouchEventSubscriber
    {

        public abstract void a(MotionEvent motionevent);
    }


    private TouchEventSubscriber a;
    private final Paint b;
    private final Paint c;
    private final Paint d;
    private final Paint e = new Paint();
    private final Paint f = new Paint();
    private final Paint g = new Paint();
    private final Paint h;
    private final Drawable i = getResources().getDrawable(0x7f0200ad);
    private final Drawable j = getResources().getDrawable(0x7f0200ae);
    private Paint k;
    private final float l;
    private final RectF m = new RectF();
    private final RectF n = new RectF();
    private boolean o;
    private boolean p;
    private boolean q;
    private long r;
    private boolean s;
    private MediaPlayer t;

    public ChatCameraButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = a(context, 0x7f080024);
        c = a(context, 0x7f080005);
        d = a(context, 0x7f08002f);
        h = a(context, 0x7f080047);
        k = b;
        e.setColor(-1);
        e.setTextAlign(android.graphics.Paint.Align.CENTER);
        e.setTextSize(getResources().getDimensionPixelSize(0x7f090060));
        f.setColor(-1);
        f.setAntiAlias(true);
        f.setStyle(android.graphics.Paint.Style.STROKE);
        float f1 = ViewUtils.a(4F, context);
        f.setStrokeWidth(f1);
        g.setColor(-1);
        g.setAntiAlias(true);
        g.setStyle(android.graphics.Paint.Style.STROKE);
        float f2 = ViewUtils.a(7F, context);
        g.setStrokeWidth(f2);
        l = ViewUtils.a(10F, context);
        s = false;
        a(context);
    }

    private static Paint a(Context context, int i1)
    {
        int j1 = context.getResources().getColor(i1);
        Paint paint = new Paint();
        paint.setColor(j1);
        paint.setAntiAlias(true);
        return paint;
    }

    static MediaPlayer a(ChatCameraButton chatcamerabutton, MediaPlayer mediaplayer)
    {
        chatcamerabutton.t = mediaplayer;
        return mediaplayer;
    }

    private void a(Context context)
    {
        if (isInEditMode())
        {
            return;
        }
        if (ScTextUtils.a(Build.MODEL, "GT-S7500"))
        {
            t = MediaPlayer.create(context, 0x7f060004);
            return;
        } else
        {
            Thread thread = new Thread(context) {

                final Context a;
                final ChatCameraButton b;

                public void run()
                {
                    ChatCameraButton.a(b, MediaPlayer.create(a, 0x7f060004));
                }

            
            {
                b = ChatCameraButton.this;
                a = context;
                super();
            }
            };
            thread.setName("HerePresenceButton Load Sound Thread");
            thread.start();
            return;
        }
    }

    private void a(Canvas canvas)
    {
        i.setBounds(canvas.getClipBounds());
        i.draw(canvas);
    }

    private void a(Canvas canvas, long l1)
    {
        int i1 = 0;
        do
        {
            if (l1 >= 1200L)
            {
                l1 -= 1200L;
                if (++i1 != 3)
                {
                    continue;
                }
                l1 -= 1000L;
                if (l1 < 1200L)
                {
                    return;
                }
            } else
            {
                float f1 = 0.33F * (float)getHeight();
                float f2 = InterpolationUtils.a((float)(getWidth() / 2) - f1, 0.14F * (float)getWidth(), (float)l1 / 600F);
                float f3 = InterpolationUtils.a(f1 + (float)(getWidth() / 2), 0.86F * (float)getWidth(), (float)l1 / 600F);
                n.set(f2, (float)(getHeight() / 2) - f1, f3, f1 + (float)(getHeight() / 2));
                int j1 = 255 - (int)((255F * (float)l1) / 600F);
                int k1 = 0;
                if (j1 >= 0)
                {
                    if (j1 > 255)
                    {
                        k1 = 255;
                    } else
                    {
                        k1 = j1;
                    }
                }
                f.setAlpha(k1);
                canvas.drawOval(n, f);
                f.setAlpha(255);
                return;
            }
            i1 = 0;
        } while (true);
    }

    private void a(Canvas canvas, Paint paint, long l1)
    {
        if (l1 < 200L)
        {
            float f1 = (l1 * (long)getWidth()) / 200L;
            canvas.drawCircle(getWidth() / 2, getHeight() / 2, f1, paint);
        } else
        {
            canvas.drawRect(m, paint);
            a(canvas, l1 - 200L);
            k = paint;
        }
        invalidate();
    }

    private void b(Canvas canvas, Paint paint, long l1)
    {
        if (l1 < 200L)
        {
            float f1 = (l1 * (long)getWidth()) / 200L;
            canvas.drawCircle(getWidth() / 2, getHeight() / 2, f1, paint);
            invalidate();
            return;
        } else
        {
            canvas.drawRect(m, paint);
            j.setBounds(canvas.getClipBounds());
            j.draw(canvas);
            k = paint;
            return;
        }
    }

    private void c(Canvas canvas, Paint paint, long l1)
    {
        if (l1 < 200L)
        {
            float f1 = ((long)getWidth() * (200L - l1)) / 200L;
            canvas.drawCircle(getWidth() / 2, getHeight() / 2, f1, paint);
            invalidate();
        }
    }

    public void a()
    {
        if (t != null)
        {
            t.release();
        }
    }

    public boolean getCashSwipeDetected()
    {
        return p;
    }

    public boolean getCashtagDetected()
    {
        return o;
    }

    public boolean getIsEmoji()
    {
        return s;
    }

    public void onDraw(Canvas canvas)
    {
        if (s)
        {
            canvas.drawRect(m, d);
            canvas.drawRoundRect(m, l, l, g);
            Rect rect = new Rect();
            String s1 = getResources().getString(0x7f0c0066);
            e.getTextBounds(s1, 0, s1.length(), rect);
            canvas.drawText(s1, canvas.getWidth() / 2, (canvas.getHeight() + rect.height()) / 2, e);
            return;
        }
        canvas.drawRect(m, b);
        long l1 = SystemClock.elapsedRealtime() - r;
        if (o || p)
        {
            b(canvas, h, l1);
            a(canvas);
        } else
        if (q)
        {
            a(canvas, c, l1);
            a(canvas);
        } else
        {
            c(canvas, k, l1);
            a(canvas);
        }
        canvas.drawRoundRect(m, l, l, g);
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        m.set(0.0F, 0.0F, i1, j1);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (a != null)
        {
            a.a(motionevent);
        }
        return super.onTouchEvent(motionevent);
    }

    public void setCashSwipeDetected(boolean flag)
    {
        if (flag == p)
        {
            return;
        } else
        {
            r = SystemClock.elapsedRealtime();
            p = flag;
            invalidate();
            return;
        }
    }

    public void setCashtagDetected(boolean flag)
    {
        if (flag == o)
        {
            return;
        } else
        {
            r = SystemClock.elapsedRealtime();
            o = flag;
            invalidate();
            return;
        }
    }

    public void setIsEmoji(boolean flag)
    {
        s = flag;
        invalidate();
    }

    public void setPresent(boolean flag)
    {
        if (flag != q) goto _L2; else goto _L1
_L1:
        return;
_L2:
        q = flag;
        if (o || p) goto _L1; else goto _L3
_L3:
        r = SystemClock.elapsedRealtime();
        invalidate();
        if (!flag) goto _L1; else goto _L4
_L4:
        if (t == null) goto _L1; else goto _L5
_L5:
        t.start();
        return;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        Timber.d("ChatCameraButton", (new StringBuilder()).append("Failed to play sound effect: ").append(illegalstateexception.getMessage()).toString(), new Object[0]);
        return;
    }

    public void setTouchSubscriber(TouchEventSubscriber toucheventsubscriber)
    {
        a = toucheventsubscriber;
    }
}
