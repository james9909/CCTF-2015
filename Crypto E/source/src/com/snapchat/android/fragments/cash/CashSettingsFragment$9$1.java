// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.threading.ThreadUtils;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CashSettingsFragment, SecurityCodeFragment

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        CashSettingsFragment.d(a.a).setEnabled(true);
        CashSettingsFragment.c(a.a).setVisibility(0);
        CashSettingsFragment.e(a.a).setVisibility(8);
    }

    k.UpdateSuccessListener(k.UpdateSuccessListener updatesuccesslistener)
    {
        a = updatesuccesslistener;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/cash/CashSettingsFragment$9

/* anonymous class */
    class CashSettingsFragment._cls9
        implements com.snapchat.android.api2.cash.square.UpdateSquareSettingsTask.UpdateSuccessListener
    {

        final boolean a;
        final SecurityCodeFragment b;
        final CashSettingsFragment c;

        public void a()
        {
            ThreadUtils.a(new CashSettingsFragment._cls9._cls1(this));
            UserPrefs.q(a);
            if (b != null)
            {
                b.d();
            }
        }

        public void a(int i)
        {
            String s;
            ErrorType errortype;
            s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c002b, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();
            errortype = ErrorType.UNKNOWN;
            i;
            JVM INSTR lookupswitch 2: default 72
        //                       400: 157
        //                       429: 205;
               goto _L1 _L2 _L3
_L1:
            ErrorType errortype1 = errortype;
_L5:
            CashSettingsFragment cashsettingsfragment = c;
            CheckBox checkbox = CashSettingsFragment.c(c);
            RelativeLayout relativelayout = CashSettingsFragment.d(c);
            ProgressBar progressbar = CashSettingsFragment.e(c);
            boolean flag = a;
            boolean flag1 = false;
            if (!flag)
            {
                flag1 = true;
            }
            CashSettingsFragment.a(cashsettingsfragment, checkbox, relativelayout, progressbar, flag1, s);
            if (b != null)
            {
                b.a(errortype1, i);
            }
            return;
_L2:
            s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c010d, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0164, new Object[0])).toString();
            errortype1 = ErrorType.INVALID_PASSCODE;
            continue; /* Loop/switch isn't completed */
_L3:
            s = (new StringBuilder()).append(LocalizationUtils.a(0x7f0c0210, new Object[0])).append('\n').append(LocalizationUtils.a(0x7f0c0165, new Object[0])).toString();
            errortype1 = ErrorType.TOO_MANY_ATTEMPTS;
            if (true) goto _L5; else goto _L4
_L4:
        }

            
            {
                c = cashsettingsfragment;
                a = flag;
                b = securitycodefragment;
                super();
            }
    }

}
