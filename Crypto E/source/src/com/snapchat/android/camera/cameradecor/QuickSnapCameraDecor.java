// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.hardware.Camera;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.ui.QuickSnapOnboardingOverlay;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            CameraDecor

public class QuickSnapCameraDecor extends CameraDecor
{

    private final float b;
    private final QuickSnapOnboardingOverlay c;

    public QuickSnapCameraDecor(Context context, RelativeLayout relativelayout, CameraDecor.CameraDecorInterface cameradecorinterface)
    {
        super(context, relativelayout, cameradecorinterface);
        relativelayout.removeAllViews();
        b = a(context);
        c = new QuickSnapOnboardingOverlay(context);
        relativelayout.addView(c);
        c.setHeightThreshold((int)b);
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(context);
        int i = sharedpreferences.getInt(SharedPreferenceKey.b.a(), 0);
        if (Camera.getNumberOfCameras() <= 1)
        {
            c.setVisibility(8);
            return;
        }
        if (i < 5)
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putInt(SharedPreferenceKey.b.a(), i + 1);
            editor.apply();
            c.setOverlayMode(com.snapchat.android.ui.QuickSnapOnboardingOverlay.OverlayMode.b);
            return;
        } else
        {
            c.setOverlayMode(com.snapchat.android.ui.QuickSnapOnboardingOverlay.OverlayMode.a);
            return;
        }
    }

    public static float a(Context context)
    {
        if (context == null)
        {
            throw new NullPointerException();
        }
        int i = PreferenceManager.getDefaultSharedPreferences(context).getInt(SharedPreferenceKey.ab.a(), -1);
        if (i == -1)
        {
            return 0.5F * (float)context.getResources().getDisplayMetrics().heightPixels;
        } else
        {
            return (float)(i - context.getResources().getDimensionPixelSize(0x7f090013));
        }
    }

    public boolean a(MotionEvent motionevent)
    {
        switch (motionevent.getActionMasked())
        {
        default:
            return true;

        case 1: // '\001'
        case 3: // '\003'
            a.a(CameraDecor.CameraDecorInterface.TakeSnapButtonAction.b);
            return true;

        case 2: // '\002'
            break;
        }
        if (motionevent.getY() > b)
        {
            c.setUpperRegionHighlight(false);
            a.a(com.snapchat.android.camera.model.CameraModel.CameraType.a);
            return true;
        } else
        {
            c.setUpperRegionHighlight(true);
            a.a(com.snapchat.android.camera.model.CameraModel.CameraType.b);
            return true;
        }
    }
}
