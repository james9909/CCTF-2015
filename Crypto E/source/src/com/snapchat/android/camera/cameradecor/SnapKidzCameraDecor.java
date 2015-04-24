// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.SnapkidzSettingsActivity;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            DefaultCameraDecor

public class SnapKidzCameraDecor extends DefaultCameraDecor
{

    public SnapKidzCameraDecor(Context context, RelativeLayout relativelayout, CameraDecor.CameraDecorInterface cameradecorinterface)
    {
        super(context, relativelayout, cameradecorinterface);
        g.setVisibility(8);
        f.setBackgroundResource(0x7f020029);
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final SnapKidzCameraDecor a;

            public void onClick(View view)
            {
                android.support.v4.app.FragmentActivity fragmentactivity = a.a.h();
                fragmentactivity.startActivityForResult(new Intent(fragmentactivity, com/snapchat/android/SnapkidzSettingsActivity), 1000);
            }

            
            {
                a = SnapKidzCameraDecor.this;
                super();
            }
        });
    }

    public void b()
    {
    }

    protected void c(boolean flag)
    {
    }

    protected void g()
    {
    }

    protected boolean h()
    {
        return false;
    }
}
