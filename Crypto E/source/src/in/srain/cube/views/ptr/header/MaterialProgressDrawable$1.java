// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import android.graphics.drawable.Drawable;

// Referenced classes of package in.srain.cube.views.ptr.header:
//            MaterialProgressDrawable

class a
    implements android.graphics.drawable.le._cls1
{

    final MaterialProgressDrawable a;

    public void invalidateDrawable(Drawable drawable)
    {
        a.invalidateSelf();
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long l)
    {
        a.scheduleSelf(runnable, l);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable)
    {
        a.unscheduleSelf(runnable);
    }

    (MaterialProgressDrawable materialprogressdrawable)
    {
        a = materialprogressdrawable;
        super();
    }
}
