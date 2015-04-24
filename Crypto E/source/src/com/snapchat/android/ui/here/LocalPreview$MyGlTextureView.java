// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.here;

import android.content.Context;
import com.snapchat.android.util.gl.GlTextureView;

// Referenced classes of package com.snapchat.android.ui.here:
//            LocalPreview

class a extends GlTextureView
{

    final LocalPreview a;

    public void a()
    {
        LocalPreview.a(a);
    }

    public void b()
    {
        LocalPreview.a(a, a.c);
    }

    protected (LocalPreview localpreview, Context context)
    {
        a = localpreview;
        super(context);
    }
}
