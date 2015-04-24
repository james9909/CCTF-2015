// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import in.srain.cube.views.ptr.PtrFrameLayout;
import in.srain.cube.views.ptr.PtrUIHandler;
import in.srain.cube.views.ptr.PtrUIHandlerHook;

// Referenced classes of package in.srain.cube.views.ptr.header:
//            MaterialProgressDrawable

public class MaterialHeader extends View
    implements PtrUIHandler
{

    private MaterialProgressDrawable a;
    private float b;
    private PtrFrameLayout c;
    private Animation d = new Animation() {

        final MaterialHeader a;

        public void applyTransformation(float f, Transformation transformation)
        {
            MaterialHeader.a(a, 1.0F - f);
            MaterialHeader.b(a).setAlpha((int)(255F * MaterialHeader.a(a)));
            a.invalidate();
        }

            
            {
                a = MaterialHeader.this;
                super();
            }
    };

    public MaterialHeader(Context context)
    {
        super(context);
        b = 1.0F;
        a();
    }

    public MaterialHeader(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = 1.0F;
        a();
    }

    public MaterialHeader(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = 1.0F;
        a();
    }

    static float a(MaterialHeader materialheader)
    {
        return materialheader.b;
    }

    static float a(MaterialHeader materialheader, float f)
    {
        materialheader.b = f;
        return f;
    }

    private void a()
    {
        a = new MaterialProgressDrawable(getContext(), this);
        a.b(-1);
        a.setCallback(this);
    }

    static MaterialProgressDrawable b(MaterialHeader materialheader)
    {
        return materialheader.a;
    }

    static Animation c(MaterialHeader materialheader)
    {
        return materialheader.d;
    }

    public void a(PtrFrameLayout ptrframelayout)
    {
        b = 1.0F;
        a.stop();
    }

    public void a(PtrFrameLayout ptrframelayout, boolean flag, byte byte0, int i, int j, float f, float f1)
    {
        float f2 = Math.min(1.0F, f1);
        if (byte0 == 2)
        {
            a.setAlpha((int)(255F * f2));
            a.a(true);
            float f3 = f2 * 0.8F;
            a.a(0.0F, Math.min(0.8F, f3));
            a.a(Math.min(1.0F, f2));
            float f4 = 0.5F * (-0.25F + 0.4F * f2 + f2 * 2.0F);
            a.b(f4);
            invalidate();
        }
    }

    public void b(PtrFrameLayout ptrframelayout)
    {
    }

    public void c(PtrFrameLayout ptrframelayout)
    {
        a.setAlpha(255);
        a.start();
    }

    public void d(PtrFrameLayout ptrframelayout)
    {
        a.stop();
    }

    public void invalidateDrawable(Drawable drawable)
    {
        if (drawable == a)
        {
            invalidate();
            return;
        } else
        {
            super.invalidateDrawable(drawable);
            return;
        }
    }

    protected void onDraw(Canvas canvas)
    {
        int i = canvas.save();
        Rect rect = a.getBounds();
        canvas.translate(getPaddingLeft() + (getMeasuredWidth() - a.getIntrinsicWidth()) / 2, getPaddingTop());
        canvas.scale(b, b, rect.exactCenterX(), rect.exactCenterY());
        a.draw(canvas);
        canvas.restoreToCount(i);
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1 = a.getIntrinsicHeight();
        a.setBounds(0, 0, i1, i1);
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, android.view.View.MeasureSpec.makeMeasureSpec(a.getIntrinsicHeight() + getPaddingTop() + getPaddingBottom(), 0x40000000));
    }

    public void setColorSchemeColors(int ai[])
    {
        a.a(ai);
        invalidate();
    }

    public void setPtrFrameLayout(PtrFrameLayout ptrframelayout)
    {
        PtrUIHandlerHook ptruihandlerhook = new PtrUIHandlerHook() {

            final MaterialHeader a;

            public void run()
            {
                a.startAnimation(MaterialHeader.c(a));
            }

            
            {
                a = MaterialHeader.this;
                super();
            }
        };
        d.setDuration(200L);
        d.setAnimationListener(new android.view.animation.Animation.AnimationListener(ptruihandlerhook) {

            final PtrUIHandlerHook a;
            final MaterialHeader b;

            public void onAnimationEnd(Animation animation)
            {
                a.c();
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                b = MaterialHeader.this;
                a = ptruihandlerhook;
                super();
            }
        });
        c = ptrframelayout;
        c.setRefreshCompleteHook(ptruihandlerhook);
    }
}
