// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr.header;

import in.srain.cube.views.ptr.PtrUIHandlerHook;

// Referenced classes of package in.srain.cube.views.ptr.header:
//            MaterialHeader

class a extends PtrUIHandlerHook
{

    final MaterialHeader a;

    public void run()
    {
        a.startAnimation(MaterialHeader.c(a));
    }

    (MaterialHeader materialheader)
    {
        a = materialheader;
        super();
    }
}
