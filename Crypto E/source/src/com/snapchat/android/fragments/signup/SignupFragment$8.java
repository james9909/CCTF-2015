// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.widget.DatePicker;
import android.widget.EditText;
import com.snapchat.android.analytics.AnalyticsEvents;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            SignupFragment

class a
    implements android.app.OnDateSetListener
{

    final SignupFragment a;

    public void onDateSet(DatePicker datepicker, int i, int j, int k)
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar(i, j, k);
        if (SignupFragment.g(a).get(1) != gregoriancalendar.get(1) || SignupFragment.g(a).get(2) != gregoriancalendar.get(2) || SignupFragment.g(a).get(5) != gregoriancalendar.get(5))
        {
            SignupFragment.a(a, gregoriancalendar);
            SignupFragment.h(a).setText((new SimpleDateFormat("MM/dd/yyyy")).format(SignupFragment.g(a).getTime()));
            SignupFragment.a(a);
            AnalyticsEvents.y();
        }
    }

    (SignupFragment signupfragment)
    {
        a = signupfragment;
        super();
    }
}
