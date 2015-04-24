// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.content.Context;
import android.content.res.Resources;
import android.widget.RelativeLayout;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            CameraDecor

public class FullColorDecor extends CameraDecor
{

    private RelativeLayout b;

    public FullColorDecor(Context context, RelativeLayout relativelayout, CameraDecor.CameraDecorInterface cameradecorinterface)
    {
        super(context, relativelayout, cameradecorinterface);
        if (relativelayout == null)
        {
            throw new NullPointerException("decor container can not be null");
        } else
        {
            b = relativelayout;
            b.setBackgroundColor(context.getResources().getColor(0x7f080025));
            return;
        }
    }

    public void a(int i)
    {
        b.setBackgroundColor(i);
    }
}
