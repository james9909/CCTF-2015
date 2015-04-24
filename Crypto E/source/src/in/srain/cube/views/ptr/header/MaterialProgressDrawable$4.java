// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;

// Referenced classes of package in.srain.cube.views.ptr.header:
//            MaterialProgressDrawable

class a extends Animation
{

    final ng a;
    final MaterialProgressDrawable b;

    public void applyTransformation(float f, Transformation transformation)
    {
        float f1 = (float)Math.toRadians((double)a.c() / (6.2831853071795862D * a.h()));
        float f2 = a.f();
        float f3 = a.e();
        float f4 = a.i();
        float f5 = f2 + (0.8F - f1) * MaterialProgressDrawable.a().getInterpolation(f);
        a.c(f5);
        float f6 = f3 + 0.8F * MaterialProgressDrawable.b().getInterpolation(f);
        a.b(f6);
        float f7 = f4 + 0.25F * f;
        a.d(f7);
        float f8 = 144F * f + 720F * (MaterialProgressDrawable.c(b) / 5F);
        b.c(f8);
    }

    ng(MaterialProgressDrawable materialprogressdrawable, ng ng)
    {
        b = materialprogressdrawable;
        a = ng;
        super();
    }
}
