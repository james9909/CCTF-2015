// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuffXfermode;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.snapchat.android.Timber;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.bitmap.BitmapPool;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.DrawingEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.snapchat.android.ui:
//            CanvasViewBase

public class LegacyCanvasView extends CanvasViewBase
    implements android.view.View.OnTouchListener
{
    public class LegacyStroke
    {

        public Paint a;
        final LegacyCanvasView b;
        private Path c;
        private float d;

        public void a(float f1, float f2)
        {
            c.moveTo(f1, f2);
        }

        public void a(float f1, float f2, float f3, float f4)
        {
            c.quadTo(f1, f2, f3, f4);
        }

        public void a(Canvas canvas)
        {
            canvas.drawPath(c, a);
        }

        public void a(Matrix matrix)
        {
            c.transform(matrix);
        }

        public void b(float f1, float f2)
        {
            c.lineTo(f1, f2);
        }

        public LegacyStroke(int i1, float f1)
        {
            b = LegacyCanvasView.this;
            super();
            d = f1;
            c = new Path();
            a = new Paint();
            a.setColor(i1);
            a.setAntiAlias(true);
            a.setStyle(android.graphics.Paint.Style.STROKE);
            a.setStrokeWidth(6.5F * d);
            a.setStrokeJoin(android.graphics.Paint.Join.ROUND);
            a.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        }
    }

    class StrokeCollection
    {

        public ArrayList a;
        final LegacyCanvasView b;
        private Paint c;
        private Matrix d;
        private Canvas e;
        private Bitmap f;
        private boolean g;

        static Canvas a(StrokeCollection strokecollection)
        {
            return strokecollection.e;
        }

        private void g()
        {
            Paint paint = new Paint();
            paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.CLEAR));
            e.drawRect(0.0F, 0.0F, LegacyCanvasView.a(b), LegacyCanvasView.b(b), paint);
        }

        public void a()
        {
            e();
            android.graphics.BitmapFactory.Options options = SnapMediaUtils.a(b.getContext().getResources().getDisplayMetrics(), LegacyCanvasView.a(b), LegacyCanvasView.b(b), android.graphics.Bitmap.Config.ARGB_8888);
            Bitmap bitmap = BitmapPool.a().a(options, true);
            if (bitmap != null)
            {
                f = bitmap;
            } else
            {
                f = SnapMediaUtils.a(LegacyCanvasView.a(b), LegacyCanvasView.b(b), android.graphics.Bitmap.Config.ARGB_8888);
            }
            e = new Canvas(f);
        }

        public void a(Canvas canvas)
        {
            if (g)
            {
                Iterator iterator = a.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    LegacyStroke legacystroke = (LegacyStroke)iterator.next();
                    if (g)
                    {
                        legacystroke.a(e);
                    }
                } while (true);
                g = false;
            }
            canvas.drawBitmap(f, d, c);
        }

        public void a(LegacyStroke legacystroke)
        {
            legacystroke.a(e);
            a.add(legacystroke);
        }

        public int b()
        {
            if (a.size() > 0)
            {
                return ((LegacyStroke)a.get(-1 + a.size())).a.getColor();
            } else
            {
                return 0;
            }
        }

        public boolean c()
        {
            return a.size() >= 4;
        }

        public boolean d()
        {
            return a.size() == 0;
        }

        public void e()
        {
            e = null;
            BitmapPool.a().a(f);
            f = null;
        }

        public void f()
        {
            if (a.size() != 0)
            {
                a.remove(-1 + a.size());
            }
            g();
            g = true;
            b.invalidate();
        }

        public StrokeCollection()
        {
            b = LegacyCanvasView.this;
            super();
            a = new ArrayList();
            c = new Paint();
            d = new Matrix();
            g = false;
            a();
            c.setAntiAlias(true);
            c.setFilterBitmap(false);
        }
    }


    private int a;
    private int b;
    private int c;
    private float d;
    private boolean e;
    private boolean f;
    private Point g;
    private Paint h;
    private LegacyStroke i;
    private StrokeCollection j;
    private float k;
    private float l;

    public LegacyCanvasView(Context context)
    {
        super(context);
        c = 0xffff0000;
        d = 1.0F;
        e = false;
        f = false;
        h = new Paint();
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        if (ViewUtils.d(context))
        {
            a = Math.min(displaymetrics.widthPixels, displaymetrics.heightPixels);
            b = Math.max(displaymetrics.widthPixels, displaymetrics.heightPixels);
        } else
        {
            a = Math.max(displaymetrics.widthPixels, displaymetrics.heightPixels);
            b = Math.min(displaymetrics.widthPixels, displaymetrics.heightPixels);
        }
        h.setDither(true);
        setOnTouchListener(this);
        j = new StrokeCollection();
        setLayerType(2, null);
        d = getResources().getDisplayMetrics().density;
        Timber.c("LegacyCanvasView", "Canvas view instantiated", new Object[0]);
    }

    static int a(LegacyCanvasView legacycanvasview)
    {
        return legacycanvasview.a;
    }

    private Matrix a(float f1, float f2, float f3)
    {
        float f4 = f3 / 2.0F;
        float f5 = f2 / 2.0F;
        Matrix matrix = new Matrix();
        float f6 = Math.abs(f4 - f5);
        matrix.postTranslate(-f6, f6);
        matrix.postTranslate(-f4, -f5);
        matrix.postRotate(f1);
        matrix.postTranslate(f4, f5);
        return matrix;
    }

    private void a(float f1, float f2)
    {
        float f3 = Math.abs(f1 - k);
        float f4 = Math.abs(f2 - l);
        if (f3 >= 4F || f4 >= 4F)
        {
            i.a(k, l, (f1 + k) / 2.0F, (f2 + l) / 2.0F);
            k = f1;
            l = f2;
        }
    }

    static int b(LegacyCanvasView legacycanvasview)
    {
        return legacycanvasview.b;
    }

    private Matrix b(float f1, float f2, float f3)
    {
        float f4 = f3 / 2.0F;
        float f5 = f2 / 2.0F;
        Matrix matrix = new Matrix();
        matrix.postTranslate(-f4, -f5);
        matrix.postRotate(f1);
        matrix.postTranslate(f4, f5);
        float f6 = Math.abs(f4 - f5);
        matrix.postTranslate(f6, -f6);
        return matrix;
    }

    public void a()
    {
    }

    public void a(int i1)
    {
        int j1 = 1;
        Display display = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
        int k1 = Math.min(a, b);
        int l1 = Math.max(a, b);
        int i2 = display.getRotation();
        if (i1 == i2)
        {
            return;
        }
        int j2;
        int k2;
        if (i2 != j1 && i2 != 3)
        {
            j1 = 0;
        }
        if (j1 != 0)
        {
            j2 = l1;
        } else
        {
            j2 = k1;
        }
        a = j2;
        if (j1 != 0)
        {
            k2 = k1;
        } else
        {
            k2 = l1;
        }
        b = k2;
        j.a();
        a(i2, i1, l1, k1);
        for (Iterator iterator = j.a.iterator(); iterator.hasNext(); ((LegacyStroke)iterator.next()).a(StrokeCollection.a(j))) { }
        invalidate();
    }

    public void a(int i1, int j1, float f1, float f2)
    {
        if (i1 == j1)
        {
            return;
        }
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(j1);
        aobj[1] = Integer.valueOf(i1);
        Timber.c("LegacyCanvasView", "Rotate drawing from %d to %d", aobj);
        Matrix matrix1;
        if (i1 == 1)
        {
            Matrix matrix4 = b(270F, f1, f2);
            Timber.c("LegacyCanvasView", "went to rotation 90", new Object[0]);
            matrix1 = matrix4;
        } else
        if (i1 == 3)
        {
            Matrix matrix3 = b(90F, f1, f2);
            Timber.c("LegacyCanvasView", "went to rotation 270", new Object[0]);
            matrix1 = matrix3;
        } else
        if (j1 == 1)
        {
            Matrix matrix2 = a(90F, f1, f2);
            Timber.c("LegacyCanvasView", "went from rotation 90 (probz back to portrait)", new Object[0]);
            matrix1 = matrix2;
        } else
        {
            Matrix matrix = a(270F, f1, f2);
            Timber.c("LegacyCanvasView", "else... back to portrait from 270?", new Object[0]);
            matrix1 = matrix;
        }
        if (j == null || j.a == null)
        {
            Timber.c("LegacyCanvasView", "Drawing is null", new Object[0]);
            return;
        }
        for (Iterator iterator = j.a.iterator(); iterator.hasNext(); ((LegacyStroke)iterator.next()).a(matrix1)) { }
        postInvalidate();
    }

    public void a(MotionEvent motionevent)
    {
        int i1 = 0;
        if (i != null) goto _L2; else goto _L1
_L1:
        f = false;
        i = new LegacyStroke(c, d);
        g = new Point((int)motionevent.getX(), (int)motionevent.getY());
        i.a(g.x, g.y);
        i.b(0.1F + (float)g.x, 0.1F + (float)g.y);
        k = g.x;
        l = g.y;
        BusProvider.a().a(new DrawingEvent(com.snapchat.android.util.eventbus.DrawingEvent.DrawingEventType.b));
_L6:
        invalidate();
_L4:
        return;
_L2:
        if (motionevent.getAction() == 2)
        {
            f = true;
            for (int j1 = motionevent.getHistorySize(); i1 < j1; i1++)
            {
                a(motionevent.getHistoricalX(i1), motionevent.getHistoricalY(i1));
            }

            a(motionevent.getX(), motionevent.getY());
            continue; /* Loop/switch isn't completed */
        }
        if (motionevent.getAction() != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (g == null) goto _L4; else goto _L3
_L3:
        if (!f)
        {
            i.b(1 + g.x, 1 + g.y);
        }
        j.a(i);
        i = null;
        g = null;
        BusProvider.a().a(new DrawingEvent(com.snapchat.android.util.eventbus.DrawingEvent.DrawingEventType.a));
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void b()
    {
        j.e();
        j = null;
    }

    public void c()
    {
        j.f();
    }

    public boolean d()
    {
        return j.c();
    }

    public int getColor()
    {
        return c;
    }

    public boolean getDrawingEnabled()
    {
        return e;
    }

    public int getLastColor()
    {
        if (!j.d())
        {
            return j.b();
        }
        if (i != null)
        {
            return i.a.getColor();
        } else
        {
            return 0;
        }
    }

    public int getNumberOfStrokes()
    {
        return j.a.size();
    }

    public ArrayList getSavedDrawing()
    {
        return j.a;
    }

    public void onDraw(Canvas canvas)
    {
        canvas.save();
        if (j != null)
        {
            j.a(canvas);
        }
        if (i != null)
        {
            i.a(canvas);
        }
        canvas.restore();
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (e)
        {
            a(motionevent);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return super.onTouchEvent(motionevent);
    }

    public void setColor(int i1)
    {
        c = i1;
        h.setColor(i1);
    }

    public void setDrawingEnabled(boolean flag)
    {
        e = flag;
    }
}
