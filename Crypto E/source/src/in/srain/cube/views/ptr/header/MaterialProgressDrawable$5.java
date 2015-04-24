// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import android.view.animation.Animation;

// Referenced classes of package in.srain.cube.views.ptr.header:
//            MaterialProgressDrawable

class a
    implements android.view.animation.
{

    final ng a;
    final MaterialProgressDrawable b;

    public void onAnimationEnd(Animation animation)
    {
    }

    public void onAnimationRepeat(Animation animation)
    {
        a.j();
        a.a();
        a.b(a.g());
        MaterialProgressDrawable.a(b, (1.0F + MaterialProgressDrawable.c(b)) % 5F);
    }

    public void onAnimationStart(Animation animation)
    {
        MaterialProgressDrawable.a(b, 0.0F);
    }

    ng(MaterialProgressDrawable materialprogressdrawable, ng ng)
    {
        b = materialprogressdrawable;
        a = ng;
        super();
    }
}
