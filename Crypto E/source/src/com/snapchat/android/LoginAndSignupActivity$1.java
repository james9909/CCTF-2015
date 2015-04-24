// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.graphics.Rect;
import android.view.View;
import android.view.Window;

// Referenced classes of package com.snapchat.android:
//            LoginAndSignupActivity

class a
    implements android.view.LayoutListener
{

    final LoginAndSignupActivity a;

    public void onGlobalLayout()
    {
        View view = a.getWindow().getDecorView();
        view.getWindowVisibleDisplayFrame(LoginAndSignupActivity.a(a));
        int i = LoginAndSignupActivity.a(a).bottom;
        view.getGlobalVisibleRect(LoginAndSignupActivity.a(a));
        int j = LoginAndSignupActivity.a(a).bottom - i;
        android.view.ivity ivity = LoginAndSignupActivity.b(a).getLayoutParams();
        if (ivity.ight != j)
        {
            ivity.ight = j;
            LoginAndSignupActivity.b(a).setLayoutParams(ivity);
        }
    }

    stener(LoginAndSignupActivity loginandsignupactivity)
    {
        a = loginandsignupactivity;
        super();
    }
}
