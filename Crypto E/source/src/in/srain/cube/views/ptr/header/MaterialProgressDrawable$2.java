// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import android.view.animation.Animation;
import android.view.animation.Transformation;

// Referenced classes of package in.srain.cube.views.ptr.header:
//            MaterialProgressDrawable

class a extends Animation
{

    final ng a;
    final MaterialProgressDrawable b;

    public void applyTransformation(float f, Transformation transformation)
    {
        float f1 = (float)(1.0D + Math.floor(a.i() / 0.8F));
        float f2 = a.e() + f * (a.f() - a.e());
        a.b(f2);
        float f3 = a.i() + f * (f1 - a.i());
        a.d(f3);
        a.e(1.0F - f);
    }

    ng(MaterialProgressDrawable materialprogressdrawable, ng ng)
    {
        b = materialprogressdrawable;
        a = ng;
        super();
    }
}
