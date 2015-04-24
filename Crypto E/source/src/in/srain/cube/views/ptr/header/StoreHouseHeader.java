// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Transformation;
import in.srain.cube.views.ptr.PtrFrameLayout;
import in.srain.cube.views.ptr.PtrUIHandler;
import in.srain.cube.views.ptr.util.PtrLocalDisplay;
import java.util.ArrayList;

// Referenced classes of package in.srain.cube.views.ptr.header:
//            StoreHouseBarItem

public class StoreHouseHeader extends View
    implements PtrUIHandler
{
    class AniController
        implements Runnable
    {

        final StoreHouseHeader a;
        private int b;
        private int c;
        private int d;
        private int e;
        private boolean f;

        private void a()
        {
            f = true;
            b = 0;
            e = StoreHouseHeader.a(a) / a.a.size();
            c = StoreHouseHeader.b(a) / e;
            d = 1 + a.a.size() / c;
            run();
        }

        static void a(AniController anicontroller)
        {
            anicontroller.a();
        }

        private void b()
        {
            f = false;
            a.removeCallbacks(this);
        }

        static void b(AniController anicontroller)
        {
            anicontroller.b();
        }

        public void run()
        {
            int i1 = b % c;
            int j1 = 0;
            while (j1 < d) 
            {
                int k1 = i1 + j1 * c;
                if (k1 <= b)
                {
                    int l1 = k1 % a.a.size();
                    StoreHouseBarItem storehousebaritem = (StoreHouseBarItem)a.a.get(l1);
                    storehousebaritem.setFillAfter(false);
                    storehousebaritem.setFillEnabled(true);
                    storehousebaritem.setFillBefore(false);
                    storehousebaritem.setDuration(StoreHouseHeader.c(a));
                    storehousebaritem.a(StoreHouseHeader.d(a), StoreHouseHeader.e(a));
                }
                j1++;
            }
            b = 1 + b;
            if (f)
            {
                a.postDelayed(this, e);
            }
        }

        private AniController()
        {
            a = StoreHouseHeader.this;
            super();
            b = 0;
            c = 0;
            d = 0;
            e = 0;
            f = true;
        }

    }


    public ArrayList a;
    private int b;
    private float c;
    private int d;
    private float e;
    private int f;
    private float g;
    private int h;
    private int i;
    private int j;
    private int k;
    private float l;
    private float m;
    private float n;
    private int o;
    private int p;
    private int q;
    private Transformation r;
    private boolean s;
    private AniController t;
    private int u;

    public StoreHouseHeader(Context context)
    {
        super(context);
        a = new ArrayList();
        b = PtrLocalDisplay.a(1.0F);
        c = 1.0F;
        d = PtrLocalDisplay.a(40F);
        e = 0.7F;
        f = PtrLocalDisplay.a / 2;
        g = 0.0F;
        h = 0;
        i = 0;
        j = 0;
        k = 0;
        l = 0.4F;
        m = 1.0F;
        n = 0.4F;
        o = 1000;
        p = 1000;
        q = 400;
        r = new Transformation();
        s = false;
        t = new AniController();
        u = -1;
        a();
    }

    public StoreHouseHeader(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new ArrayList();
        b = PtrLocalDisplay.a(1.0F);
        c = 1.0F;
        d = PtrLocalDisplay.a(40F);
        e = 0.7F;
        f = PtrLocalDisplay.a / 2;
        g = 0.0F;
        h = 0;
        i = 0;
        j = 0;
        k = 0;
        l = 0.4F;
        m = 1.0F;
        n = 0.4F;
        o = 1000;
        p = 1000;
        q = 400;
        r = new Transformation();
        s = false;
        t = new AniController();
        u = -1;
        a();
    }

    public StoreHouseHeader(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        a = new ArrayList();
        b = PtrLocalDisplay.a(1.0F);
        c = 1.0F;
        d = PtrLocalDisplay.a(40F);
        e = 0.7F;
        f = PtrLocalDisplay.a / 2;
        g = 0.0F;
        h = 0;
        i = 0;
        j = 0;
        k = 0;
        l = 0.4F;
        m = 1.0F;
        n = 0.4F;
        o = 1000;
        p = 1000;
        q = 400;
        r = new Transformation();
        s = false;
        t = new AniController();
        u = -1;
        a();
    }

    static int a(StoreHouseHeader storehouseheader)
    {
        return storehouseheader.o;
    }

    private void a()
    {
    }

    static int b(StoreHouseHeader storehouseheader)
    {
        return storehouseheader.p;
    }

    private void b()
    {
        s = true;
        AniController.a(t);
        invalidate();
    }

    static int c(StoreHouseHeader storehouseheader)
    {
        return storehouseheader.q;
    }

    private void c()
    {
        s = false;
        AniController.b(t);
    }

    static float d(StoreHouseHeader storehouseheader)
    {
        return storehouseheader.m;
    }

    static float e(StoreHouseHeader storehouseheader)
    {
        return storehouseheader.n;
    }

    private int getBottomOffset()
    {
        return getPaddingBottom() + PtrLocalDisplay.a(10F);
    }

    private int getTopOffset()
    {
        return getPaddingTop() + PtrLocalDisplay.a(10F);
    }

    private void setProgress(float f1)
    {
        g = f1;
    }

    public void a(PtrFrameLayout ptrframelayout)
    {
        c();
        for (int i1 = 0; i1 < a.size(); i1++)
        {
            ((StoreHouseBarItem)a.get(i1)).a(f);
        }

    }

    public void a(PtrFrameLayout ptrframelayout, boolean flag, byte byte0, int i1, int j1, float f1, float f2)
    {
        setProgress(Math.min(1.0F, f2));
        invalidate();
    }

    public void b(PtrFrameLayout ptrframelayout)
    {
    }

    public void c(PtrFrameLayout ptrframelayout)
    {
        b();
    }

    public void d(PtrFrameLayout ptrframelayout)
    {
        c();
    }

    public int getLoadingAniDuration()
    {
        return o;
    }

    public float getScale()
    {
        return c;
    }

    public void onDraw(Canvas canvas)
    {
        float f1;
        int i1;
        int j1;
        int k1;
        super.onDraw(canvas);
        f1 = g;
        i1 = canvas.save();
        j1 = a.size();
        k1 = 0;
_L9:
        if (k1 >= j1) goto _L2; else goto _L1
_L1:
        StoreHouseBarItem storehousebaritem;
        float f2;
        float f3;
        canvas.save();
        storehousebaritem = (StoreHouseBarItem)a.get(k1);
        f2 = (float)j + storehousebaritem.a.x;
        f3 = (float)k + storehousebaritem.a.y;
        if (!s) goto _L4; else goto _L3
_L3:
        storehousebaritem.getTransformation(getDrawingTime(), r);
        canvas.translate(f2, f3);
_L7:
        storehousebaritem.a(canvas);
        canvas.restore();
_L6:
        k1++;
        continue; /* Loop/switch isn't completed */
_L4:
        if (f1 != 0.0F)
        {
            break; /* Loop/switch isn't completed */
        }
        storehousebaritem.a(f);
        if (true) goto _L6; else goto _L5
_L5:
        float f4 = ((1.0F - e) * (float)k1) / (float)j1;
        float f5 = 1.0F - e - f4;
        if (f1 == 1.0F || f1 >= 1.0F - f5)
        {
            canvas.translate(f2, f3);
            storehousebaritem.a(l);
        } else
        {
            float f6;
            float f7;
            float f8;
            Matrix matrix;
            if (f1 <= f4)
            {
                f6 = 0.0F;
            } else
            {
                f6 = Math.min(1.0F, (f1 - f4) / e);
            }
            f7 = f2 + storehousebaritem.b * (1.0F - f6);
            f8 = f3 + (float)(-d) * (1.0F - f6);
            matrix = new Matrix();
            matrix.postRotate(360F * f6);
            matrix.postScale(f6, f6);
            matrix.postTranslate(f7, f8);
            storehousebaritem.a(f6 * l);
            canvas.concat(matrix);
        }
        if (true) goto _L7; else goto _L2
_L2:
        if (s)
        {
            invalidate();
        }
        canvas.restoreToCount(i1);
        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    protected void onMeasure(int i1, int j1)
    {
        super.onMeasure(i1, android.view.View.MeasureSpec.makeMeasureSpec(getTopOffset() + i + getBottomOffset(), 0x40000000));
        j = (getMeasuredWidth() - h) / 2;
        k = getTopOffset();
        d = getTopOffset();
    }

    public void setLoadingAniDuration(int i1)
    {
        o = i1;
        p = i1;
    }

    public void setScale(float f1)
    {
        c = f1;
    }
}
