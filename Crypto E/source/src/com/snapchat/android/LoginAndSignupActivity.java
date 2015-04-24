// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.fragments.signup.LoginAndSignupFragment;
import com.snapchat.android.fragments.signup.NewUserContactBookFragment;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.VerificationNeededResponse;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.List;

// Referenced classes of package com.snapchat.android:
//            SnapchatCameraBackgroundActivity

public class LoginAndSignupActivity extends SnapchatCameraBackgroundActivity
{

    private View a;
    private final Rect b = new Rect();
    private VerificationNeededResponse c;
    private android.view.ViewTreeObserver.OnGlobalLayoutListener d;

    public LoginAndSignupActivity()
    {
        d = new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final LoginAndSignupActivity a;

            public void onGlobalLayout()
            {
                View view = a.getWindow().getDecorView();
                view.getWindowVisibleDisplayFrame(LoginAndSignupActivity.a(a));
                int i = LoginAndSignupActivity.a(a).bottom;
                view.getGlobalVisibleRect(LoginAndSignupActivity.a(a));
                int j = LoginAndSignupActivity.a(a).bottom - i;
                android.view.ViewGroup.LayoutParams layoutparams = LoginAndSignupActivity.b(a).getLayoutParams();
                if (layoutparams.height != j)
                {
                    layoutparams.height = j;
                    LoginAndSignupActivity.b(a).setLayoutParams(layoutparams);
                }
            }

            
            {
                a = LoginAndSignupActivity.this;
                super();
            }
        };
    }

    static Rect a(LoginAndSignupActivity loginandsignupactivity)
    {
        return loginandsignupactivity.b;
    }

    static View b(LoginAndSignupActivity loginandsignupactivity)
    {
        return loginandsignupactivity.a;
    }

    public void a(VerificationNeededResponse verificationneededresponse)
    {
        c = verificationneededresponse;
    }

    public boolean a()
    {
        if (c == null)
        {
            return false;
        } else
        {
            return c.needsPhoneVerification();
        }
    }

    public boolean b()
    {
        if (c == null)
        {
            return false;
        } else
        {
            return c.needsCaptcha();
        }
    }

    public String c()
    {
        if (c == null)
        {
            return null;
        } else
        {
            return c.getPrompt();
        }
    }

    public void onBackPressed()
    {
        List list = getSupportFragmentManager().getFragments();
        if (list.size() <= 0)
        {
            finish();
        } else
        {
            SnapchatFragment snapchatfragment = (SnapchatFragment)list.get(-1 + list.size());
            if (!snapchatfragment.e())
            {
                if (snapchatfragment instanceof LoginAndSignupFragment)
                {
                    finish();
                    return;
                }
                if (snapchatfragment instanceof NewUserContactBookFragment)
                {
                    UserPrefs.a(false);
                    RegistrationAnalytics.a(false);
                    finish();
                    return;
                } else
                {
                    getSupportFragmentManager().beginTransaction().replace(0x7f0a0209, new LoginAndSignupFragment()).commit();
                    return;
                }
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a(0x7f04005e, 0x7f0a0208);
        if (bundle == null)
        {
            getSupportFragmentManager().beginTransaction().add(0x7f0a0209, new LoginAndSignupFragment()).commit();
        }
        a = findViewById(0x7f0a020a);
    }

    protected void onPause()
    {
        super.onPause();
        ViewTreeObserver viewtreeobserver = getWindow().getDecorView().getViewTreeObserver();
        if (viewtreeobserver.isAlive())
        {
            if (android.os.Build.VERSION.SDK_INT < 16)
            {
                viewtreeobserver.removeGlobalOnLayoutListener(d);
            } else
            {
                viewtreeobserver.removeOnGlobalLayoutListener(d);
            }
        }
        ViewUtils.a(this, getWindow().getDecorView().getRootView());
    }

    public void onResume()
    {
        super.onResume();
        getWindow().getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(d);
    }
}
