// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;

// Referenced classes of package android.support.v4.widget:
//            MaterialProgressDrawable

class ng extends Animation
{

    final MaterialProgressDrawable this$0;
    final ng val$ring;

    public void applyTransformation(float f, Transformation transformation)
    {
        if (mFinishing)
        {
            MaterialProgressDrawable.access$200(MaterialProgressDrawable.this, f, val$ring);
            return;
        } else
        {
            float f1 = (float)Math.toRadians((double)val$ring.getStrokeWidth() / (6.2831853071795862D * val$ring.getCenterRadius()));
            float f2 = val$ring.getStartingEndTrim();
            float f3 = val$ring.getStartingStartTrim();
            float f4 = val$ring.getStartingRotation();
            float f5 = f2 + (0.8F - f1) * MaterialProgressDrawable.access$300().getInterpolation(f);
            val$ring.setEndTrim(f5);
            float f6 = f3 + 0.8F * MaterialProgressDrawable.access$400().getInterpolation(f);
            val$ring.setStartTrim(f6);
            float f7 = f4 + 0.25F * f;
            val$ring.setRotation(f7);
            float f8 = 144F * f + 720F * (MaterialProgressDrawable.access$500(MaterialProgressDrawable.this) / 5F);
            setRotation(f8);
            return;
        }
    }

    ng()
    {
        this$0 = final_materialprogressdrawable;
        val$ring = ng.this;
        super();
    }
}
