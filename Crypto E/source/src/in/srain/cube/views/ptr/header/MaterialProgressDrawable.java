// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import in.srain.cube.views.ptr.util.PtrLocalDisplay;
import java.util.ArrayList;

public class MaterialProgressDrawable extends Drawable
    implements Animatable
{
    static class EndCurveInterpolator extends AccelerateDecelerateInterpolator
    {

        public float getInterpolation(float f1)
        {
            return super.getInterpolation(Math.max(0.0F, 2.0F * (f1 - 0.5F)));
        }

        private EndCurveInterpolator()
        {
        }

    }

    class OvalShadow extends OvalShape
    {

        final MaterialProgressDrawable a;
        private RadialGradient b;
        private int c;
        private Paint d;
        private int e;

        public void draw(Canvas canvas, Paint paint)
        {
            int i1 = a.getBounds().width();
            int j1 = a.getBounds().height();
            canvas.drawCircle(i1 / 2, j1 / 2, e / 2 + c, d);
            canvas.drawCircle(i1 / 2, j1 / 2, e / 2, paint);
        }

        public OvalShadow(int i1, int j1)
        {
            a = MaterialProgressDrawable.this;
            super();
            d = new Paint();
            c = i1;
            e = j1;
            b = new RadialGradient(e / 2, e / 2, c, new int[] {
                0x3d000000, 0
            }, null, android.graphics.Shader.TileMode.CLAMP);
            d.setShader(b);
        }
    }

    static class Ring
    {

        private final RectF a = new RectF();
        private final Paint b = new Paint();
        private final Paint c = new Paint();
        private final android.graphics.drawable.Drawable.Callback d;
        private final Paint e = new Paint();
        private float f;
        private float g;
        private float h;
        private float i;
        private float j;
        private int k[];
        private int l;
        private float m;
        private float n;
        private float o;
        private boolean p;
        private Path q;
        private float r;
        private double s;
        private int t;
        private int u;
        private int v;
        private int w;

        private void a(Canvas canvas, float f1, float f2, Rect rect)
        {
            if (p)
            {
                float f3;
                float f4;
                float f5;
                if (q == null)
                {
                    q = new Path();
                    q.setFillType(android.graphics.Path.FillType.EVEN_ODD);
                } else
                {
                    q.reset();
                }
                f3 = (float)((int)j / 2) * r;
                f4 = (float)(s * Math.cos(0.0D) + (double)rect.exactCenterX());
                f5 = (float)(s * Math.sin(0.0D) + (double)rect.exactCenterY());
                q.moveTo(0.0F, 0.0F);
                q.lineTo((float)t * r, 0.0F);
                q.lineTo(((float)t * r) / 2.0F, (float)u * r);
                q.offset(f4 - f3, f5);
                q.close();
                c.setColor(k[l]);
                c.setAlpha(v);
                canvas.rotate((f1 + f2) - 5F, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(q, c);
            }
        }

        private void l()
        {
            d.invalidateDrawable(null);
        }

        public void a()
        {
            l = (1 + l) % k.length;
        }

        public void a(double d1)
        {
            s = d1;
        }

        public void a(float f1)
        {
            i = f1;
            b.setStrokeWidth(f1);
            l();
        }

        public void a(float f1, float f2)
        {
            t = (int)f1;
            u = (int)f2;
        }

        public void a(int i1)
        {
            w = i1;
        }

        public void a(int i1, int j1)
        {
            float f1 = Math.min(i1, j1);
            float f2;
            if (s <= 0.0D || f1 < 0.0F)
            {
                f2 = (float)Math.ceil(i / 2.0F);
            } else
            {
                f2 = (float)((double)(f1 / 2.0F) - s);
            }
            j = f2;
        }

        public void a(Canvas canvas, Rect rect)
        {
            e.setColor(w);
            e.setAlpha(v);
            canvas.drawCircle(rect.exactCenterX(), rect.exactCenterY(), rect.width() / 2, e);
            RectF rectf = a;
            rectf.set(rect);
            rectf.inset(j, j);
            float f1 = 360F * (f + h);
            float f2 = 360F * (g + h) - f1;
            b.setColor(k[l]);
            b.setAlpha(v);
            canvas.drawArc(rectf, f1, f2, false, b);
            a(canvas, f1, f2, rect);
        }

        public void a(ColorFilter colorfilter)
        {
            b.setColorFilter(colorfilter);
            l();
        }

        public void a(boolean flag)
        {
            if (p != flag)
            {
                p = flag;
                l();
            }
        }

        public void a(int ai[])
        {
            k = ai;
            b(0);
        }

        public int b()
        {
            return v;
        }

        public void b(float f1)
        {
            f = f1;
            l();
        }

        public void b(int i1)
        {
            l = i1;
        }

        public float c()
        {
            return i;
        }

        public void c(float f1)
        {
            g = f1;
            l();
        }

        public void c(int i1)
        {
            v = i1;
        }

        public float d()
        {
            return f;
        }

        public void d(float f1)
        {
            h = f1;
            l();
        }

        public float e()
        {
            return m;
        }

        public void e(float f1)
        {
            if (f1 != r)
            {
                r = f1;
                l();
            }
        }

        public float f()
        {
            return n;
        }

        public float g()
        {
            return g;
        }

        public double h()
        {
            return s;
        }

        public float i()
        {
            return o;
        }

        public void j()
        {
            m = f;
            n = g;
            o = h;
        }

        public void k()
        {
            m = 0.0F;
            n = 0.0F;
            o = 0.0F;
            b(0.0F);
            c(0.0F);
            d(0.0F);
        }

        public Ring(android.graphics.drawable.Drawable.Callback callback)
        {
            f = 0.0F;
            g = 0.0F;
            h = 0.0F;
            i = 5F;
            j = 2.5F;
            d = callback;
            b.setStrokeCap(android.graphics.Paint.Cap.SQUARE);
            b.setAntiAlias(true);
            b.setStyle(android.graphics.Paint.Style.STROKE);
            c.setStyle(android.graphics.Paint.Style.FILL);
            c.setAntiAlias(true);
            e.setAntiAlias(true);
        }
    }

    static class StartCurveInterpolator extends AccelerateDecelerateInterpolator
    {

        public float getInterpolation(float f1)
        {
            return super.getInterpolation(Math.min(1.0F, 2.0F * f1));
        }

        private StartCurveInterpolator()
        {
        }

    }


    private static final Interpolator a = new LinearInterpolator();
    private static final Interpolator b = new EndCurveInterpolator();
    private static final Interpolator c = new StartCurveInterpolator();
    private static final Interpolator d = new AccelerateDecelerateInterpolator();
    private final int e[] = {
        0xffc93437, 0xff375bf1, 0xfff7d23e, 0xff34a350
    };
    private final ArrayList f = new ArrayList();
    private final Ring g;
    private final android.graphics.drawable.Drawable.Callback h = new android.graphics.drawable.Drawable.Callback() {

        final MaterialProgressDrawable a;

        public void invalidateDrawable(Drawable drawable)
        {
            a.invalidateSelf();
        }

        public void scheduleDrawable(Drawable drawable, Runnable runnable, long l1)
        {
            a.scheduleSelf(runnable, l1);
        }

        public void unscheduleDrawable(Drawable drawable, Runnable runnable)
        {
            a.unscheduleSelf(runnable);
        }

            
            {
                a = MaterialProgressDrawable.this;
                super();
            }
    };
    private float i;
    private Resources j;
    private View k;
    private Animation l;
    private float m;
    private double n;
    private double o;
    private Animation p;
    private int q;
    private ShapeDrawable r;

    public MaterialProgressDrawable(Context context, View view)
    {
        k = view;
        j = context.getResources();
        g = new Ring(h);
        g.a(e);
        a(1);
        c();
    }

    static float a(MaterialProgressDrawable materialprogressdrawable, float f1)
    {
        materialprogressdrawable.m = f1;
        return f1;
    }

    static Animation a(MaterialProgressDrawable materialprogressdrawable)
    {
        return materialprogressdrawable.l;
    }

    static Interpolator a()
    {
        return c;
    }

    private void a(double d1)
    {
        int i1 = PtrLocalDisplay.a(1.75F);
        int j1 = PtrLocalDisplay.a(0.0F);
        int k1 = PtrLocalDisplay.a(3.5F);
        r = new ShapeDrawable(new OvalShadow(k1, (int)d1));
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            k.setLayerType(1, r.getPaint());
        }
        r.getPaint().setShadowLayer(k1, j1, i1, 0x1e000000);
    }

    private void a(double d1, double d2, double d3, double d4, float f1, float f2)
    {
        Ring ring = g;
        float f3 = j.getDisplayMetrics().density;
        n = d1 * (double)f3;
        o = d2 * (double)f3;
        ring.a(f3 * (float)d4);
        ring.a(d3 * (double)f3);
        ring.b(0);
        ring.a(f1 * f3, f3 * f2);
        ring.a((int)n, (int)o);
        a(n);
    }

    static View b(MaterialProgressDrawable materialprogressdrawable)
    {
        return materialprogressdrawable.k;
    }

    static Interpolator b()
    {
        return b;
    }

    static float c(MaterialProgressDrawable materialprogressdrawable)
    {
        return materialprogressdrawable.m;
    }

    private void c()
    {
        Ring ring = g;
        Animation animation = new Animation(ring) {

            final Ring a;
            final MaterialProgressDrawable b;

            public void applyTransformation(float f1, Transformation transformation)
            {
                float f2 = (float)(1.0D + Math.floor(a.i() / 0.8F));
                float f3 = a.e() + f1 * (a.f() - a.e());
                a.b(f3);
                float f4 = a.i() + f1 * (f2 - a.i());
                a.d(f4);
                a.e(1.0F - f1);
            }

            
            {
                b = MaterialProgressDrawable.this;
                a = ring;
                super();
            }
        };
        animation.setInterpolator(d);
        animation.setDuration(666L);
        animation.setAnimationListener(new android.view.animation.Animation.AnimationListener(ring) {

            final Ring a;
            final MaterialProgressDrawable b;

            public void onAnimationEnd(Animation animation2)
            {
                a.a();
                a.j();
                a.a(false);
                MaterialProgressDrawable.b(b).startAnimation(MaterialProgressDrawable.a(b));
            }

            public void onAnimationRepeat(Animation animation2)
            {
            }

            public void onAnimationStart(Animation animation2)
            {
            }

            
            {
                b = MaterialProgressDrawable.this;
                a = ring;
                super();
            }
        });
        Animation animation1 = new Animation(ring) {

            final Ring a;
            final MaterialProgressDrawable b;

            public void applyTransformation(float f1, Transformation transformation)
            {
                float f2 = (float)Math.toRadians((double)a.c() / (6.2831853071795862D * a.h()));
                float f3 = a.f();
                float f4 = a.e();
                float f5 = a.i();
                float f6 = f3 + (0.8F - f2) * MaterialProgressDrawable.a().getInterpolation(f1);
                a.c(f6);
                float f7 = f4 + 0.8F * MaterialProgressDrawable.b().getInterpolation(f1);
                a.b(f7);
                float f8 = f5 + 0.25F * f1;
                a.d(f8);
                float f9 = 144F * f1 + 720F * (MaterialProgressDrawable.c(b) / 5F);
                b.c(f9);
            }

            
            {
                b = MaterialProgressDrawable.this;
                a = ring;
                super();
            }
        };
        animation1.setRepeatCount(-1);
        animation1.setRepeatMode(1);
        animation1.setInterpolator(a);
        animation1.setDuration(1333L);
        animation1.setAnimationListener(new android.view.animation.Animation.AnimationListener(ring) {

            final Ring a;
            final MaterialProgressDrawable b;

            public void onAnimationEnd(Animation animation2)
            {
            }

            public void onAnimationRepeat(Animation animation2)
            {
                a.j();
                a.a();
                a.b(a.g());
                MaterialProgressDrawable.a(b, (1.0F + MaterialProgressDrawable.c(b)) % 5F);
            }

            public void onAnimationStart(Animation animation2)
            {
                MaterialProgressDrawable.a(b, 0.0F);
            }

            
            {
                b = MaterialProgressDrawable.this;
                a = ring;
                super();
            }
        });
        p = animation;
        l = animation1;
    }

    public void a(float f1)
    {
        g.e(f1);
    }

    public void a(float f1, float f2)
    {
        g.b(f1);
        g.c(f2);
    }

    public void a(int i1)
    {
        if (i1 == 0)
        {
            a(56D, 56D, 12.5D, 3D, 12F, 6F);
            return;
        } else
        {
            a(40D, 40D, 8.75D, 2.5D, 10F, 5F);
            return;
        }
    }

    public void a(boolean flag)
    {
        g.a(flag);
    }

    public transient void a(int ai[])
    {
        g.a(ai);
        g.b(0);
    }

    public void b(float f1)
    {
        g.d(f1);
    }

    public void b(int i1)
    {
        q = i1;
        g.a(i1);
    }

    void c(float f1)
    {
        i = f1;
        invalidateSelf();
    }

    public void draw(Canvas canvas)
    {
        if (r != null)
        {
            r.getPaint().setColor(q);
            r.draw(canvas);
        }
        Rect rect = getBounds();
        int i1 = canvas.save();
        canvas.rotate(i, rect.exactCenterX(), rect.exactCenterY());
        g.a(canvas, rect);
        canvas.restoreToCount(i1);
    }

    public int getAlpha()
    {
        return g.b();
    }

    public int getIntrinsicHeight()
    {
        return (int)o;
    }

    public int getIntrinsicWidth()
    {
        return (int)n;
    }

    public int getOpacity()
    {
        return -3;
    }

    public boolean isRunning()
    {
        ArrayList arraylist = f;
        int i1 = arraylist.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            Animation animation = (Animation)arraylist.get(j1);
            if (animation.hasStarted() && !animation.hasEnded())
            {
                return true;
            }
        }

        return false;
    }

    public void setAlpha(int i1)
    {
        g.c(i1);
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
        g.a(colorfilter);
    }

    public void start()
    {
        l.reset();
        g.j();
        if (g.g() != g.d())
        {
            k.startAnimation(p);
            return;
        } else
        {
            g.b(0);
            g.k();
            k.startAnimation(l);
            return;
        }
    }

    public void stop()
    {
        k.clearAnimation();
        c(0.0F);
        g.a(false);
        g.b(0);
        g.k();
    }

}
