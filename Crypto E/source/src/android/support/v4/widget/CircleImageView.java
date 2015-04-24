// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.widget.ImageView;

class CircleImageView extends ImageView
{
    class OvalShadow extends OvalShape
    {

        private int mCircleDiameter;
        private RadialGradient mRadialGradient;
        private Paint mShadowPaint;
        private int mShadowRadius;
        final CircleImageView this$0;

        public void draw(Canvas canvas, Paint paint)
        {
            int i = getWidth();
            int j = getHeight();
            canvas.drawCircle(i / 2, j / 2, mCircleDiameter / 2 + mShadowRadius, mShadowPaint);
            canvas.drawCircle(i / 2, j / 2, mCircleDiameter / 2, paint);
        }

        public OvalShadow(int i, int j)
        {
            this$0 = CircleImageView.this;
            super();
            mShadowPaint = new Paint();
            mShadowRadius = i;
            mCircleDiameter = j;
            mRadialGradient = new RadialGradient(mCircleDiameter / 2, mCircleDiameter / 2, mShadowRadius, new int[] {
                0x3d000000, 0
            }, null, android.graphics.Shader.TileMode.CLAMP);
            mShadowPaint.setShader(mRadialGradient);
        }
    }


    private static final int FILL_SHADOW_COLOR = 0x3d000000;
    private static final int KEY_SHADOW_COLOR = 0x1e000000;
    private static final int SHADOW_ELEVATION = 4;
    private static final float SHADOW_RADIUS = 3.5F;
    private static final float X_OFFSET = 0F;
    private static final float Y_OFFSET = 1.75F;
    private android.view.animation.Animation.AnimationListener mListener;
    private int mShadowRadius;

    public CircleImageView(Context context, int i, float f)
    {
        super(context);
        float f1 = getContext().getResources().getDisplayMetrics().density;
        int j = (int)(2.0F * (f * f1));
        int k = (int)(1.75F * f1);
        int l = (int)(0.0F * f1);
        mShadowRadius = (int)(3.5F * f1);
        ShapeDrawable shapedrawable;
        if (elevationSupported())
        {
            shapedrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.setElevation(this, f1 * 4F);
        } else
        {
            shapedrawable = new ShapeDrawable(new OvalShadow(mShadowRadius, j));
            ViewCompat.setLayerType(this, 1, shapedrawable.getPaint());
            shapedrawable.getPaint().setShadowLayer(mShadowRadius, l, k, 0x1e000000);
            int i1 = mShadowRadius;
            setPadding(i1, i1, i1, i1);
        }
        shapedrawable.getPaint().setColor(i);
        setBackgroundDrawable(shapedrawable);
    }

    private boolean elevationSupported()
    {
        return android.os.Build.VERSION.SDK_INT >= 21;
    }

    public void onAnimationEnd()
    {
        super.onAnimationEnd();
        if (mListener != null)
        {
            mListener.onAnimationEnd(getAnimation());
        }
    }

    public void onAnimationStart()
    {
        super.onAnimationStart();
        if (mListener != null)
        {
            mListener.onAnimationStart(getAnimation());
        }
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        if (!elevationSupported())
        {
            setMeasuredDimension(getMeasuredWidth() + 2 * mShadowRadius, getMeasuredHeight() + 2 * mShadowRadius);
        }
    }

    public void setAnimationListener(android.view.animation.Animation.AnimationListener animationlistener)
    {
        mListener = animationlistener;
    }

    public void setBackgroundColor(int i)
    {
        if (getBackground() instanceof ShapeDrawable)
        {
            Resources resources = getResources();
            ((ShapeDrawable)getBackground()).getPaint().setColor(resources.getColor(i));
        }
    }
}
