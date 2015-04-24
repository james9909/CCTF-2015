// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Window;
import android.widget.FrameLayout;
import com.snapchat.android.camera.BackgroundCameraFragment;

// Referenced classes of package com.snapchat.android:
//            SnapchatActivity

public abstract class SnapchatCameraBackgroundActivity extends SnapchatActivity
{

    private BackgroundCameraFragment a;

    public SnapchatCameraBackgroundActivity()
    {
    }

    public void a(int i)
    {
        a.a(i);
    }

    public void a(int i, int j)
    {
        super.setContentView(i);
        FrameLayout framelayout = (FrameLayout)findViewById(j);
        a = new BackgroundCameraFragment();
        getSupportFragmentManager().beginTransaction().add(framelayout.getId(), a).commit();
        getWindow().setBackgroundDrawable(null);
    }
}
