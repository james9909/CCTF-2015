// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.app.KeyguardManager;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.snapchat.android.camera.CameraFragment;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.snapkidz.SnapKidzPreviewFragment;
import com.snapchat.android.util.ActivityLauncher;
import com.snapchat.android.util.cache.Storage;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.eventbus.GlobalLayoutEvent;
import com.snapchat.android.util.eventbus.HardwareKeyEvent;
import com.snapchat.android.util.eventbus.LockScreenOpenedEvent;
import com.snapchat.android.util.eventbus.SnapCapturedEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android:
//            SnapchatActivity, Timber

public class SnapkidzHomeActivity extends SnapchatActivity
{

    private boolean a;
    private SnapCapturedEvent b;

    public SnapkidzHomeActivity()
    {
        a = false;
    }

    private void a(SnapchatFragment snapchatfragment, String s)
    {
        FragmentTransaction fragmenttransaction = getSupportFragmentManager().beginTransaction();
        fragmenttransaction.add(0x7f0a01ed, snapchatfragment, s);
        fragmenttransaction.addToBackStack(null);
        fragmenttransaction.commit();
    }

    public SnapCapturedEvent a()
    {
        return b;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == 707)
        {
            ActivityLauncher.a(this);
        }
    }

    public void onBackPressed()
    {
        if (getSupportFragmentManager().getBackStackEntryCount() == 2)
        {
            BusProvider.a().a(new CameraStateEvent(true));
        }
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Storage.a(getCacheDir(), getExternalCacheDir());
        UserPrefs.b(true);
        setContentView(0x7f040085);
        getWindow().setBackgroundDrawable(null);
        getWindow().addFlags(1024);
        getWindow().clearFlags(2048);
        a(new CameraFragment(), "CameraFragment");
        findViewById(0x7f0a01ed).getRootView().getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final SnapkidzHomeActivity a;

            public void onGlobalLayout()
            {
                BusProvider.a().a(new GlobalLayoutEvent());
            }

            
            {
                a = SnapkidzHomeActivity.this;
                super();
            }
        });
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 82)
        {
            return true;
        } else
        {
            BusProvider.a().a(new HardwareKeyEvent(i, keyevent));
            return super.onKeyDown(i, keyevent);
        }
    }

    public void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    protected void onPause()
    {
        super.onPause();
        BusProvider.a().b(this);
        User user = User.c();
        if (user != null)
        {
            user.H();
        }
    }

    protected void onResume()
    {
        super.onResume();
        BusProvider.a().c(this);
        if (((KeyguardManager)getSystemService("keyguard")).inKeyguardRestrictedInputMode())
        {
            a = true;
        }
    }

    public void onSnapCapturedEvent(SnapCapturedEvent snapcapturedevent)
    {
        while (snapcapturedevent.a().b() == 0 && snapcapturedevent.a().G() == null || getSupportFragmentManager().getBackStackEntryCount() > 1) 
        {
            return;
        }
        b = snapcapturedevent;
        a(new SnapKidzPreviewFragment(), "preview");
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        Timber.c("SnapkidzHomeActivity", (new StringBuilder()).append("On ac Should we onWindowFocusChanged has focus? ").append(flag).toString(), new Object[0]);
        if (flag && a)
        {
            Timber.c("SnapkidzHomeActivity", "On ac Calling onResume from window focus fn", new Object[0]);
            a = false;
            BusProvider.a().a(new LockScreenOpenedEvent());
        }
    }
}
