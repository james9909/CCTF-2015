// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import android.view.animation.AccelerateDecelerateInterpolator;

// Referenced classes of package in.srain.cube.views.ptr.header:
//            MaterialProgressDrawable

static class <init> extends AccelerateDecelerateInterpolator
{

    public float getInterpolation(float f)
    {
        return super.getInterpolation(Math.min(1.0F, 2.0F * f));
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
