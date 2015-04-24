// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import android.view.View;
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
        a.a();
        a.j();
        a.a(false);
        MaterialProgressDrawable.b(b).startAnimation(MaterialProgressDrawable.a(b));
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    ng(MaterialProgressDrawable materialprogressdrawable, ng ng)
    {
        b = materialprogressdrawable;
        a = ng;
        super();
    }
}
