// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import android.view.animation.Animation;
import in.srain.cube.views.ptr.PtrUIHandlerHook;

// Referenced classes of package in.srain.cube.views.ptr.header:
//            MaterialHeader

class a
    implements android.view.animation.onListener
{

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

    er(MaterialHeader materialheader, PtrUIHandlerHook ptruihandlerhook)
    {
        b = materialheader;
        a = ptruihandlerhook;
        super();
    }
}
