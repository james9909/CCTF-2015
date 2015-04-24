// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.UserPrefs;

public class RegistrationAnalytics
{

    private static boolean mIsRegisteringOnOptionalSteps = false;

    public RegistrationAnalytics()
    {
    }

    public static void a(boolean flag)
    {
        mIsRegisteringOnOptionalSteps = flag;
    }

    public static boolean a()
    {
        return mIsRegisteringOnOptionalSteps;
    }

    public static void b()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_FOCUS_ON_PHONE_NUMBER")).c();
            return;
        }
    }

    public static void c()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_AUTO_FILL_PHONE_NUMBER")).c();
            return;
        }
    }

    public static void d()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_EDITED_PHONE_NUMBER")).c();
            return;
        }
    }

    public static void e()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_PHONE_NUMBER_INVALID")).c();
            return;
        }
    }

    public static void f()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_FOCUS_ON_COUNTRY")).c();
            return;
        }
    }

    public static void g()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_EDITED_COUNTRY")).c();
            return;
        }
    }

    public static void h()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_SEND_VERIFICATION_CODE")).c();
            return;
        }
    }

    public static void i()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_TEXT_VERIFY")).c();
            return;
        }
    }

    public static void j()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_PHONE_CALL_VERIFY_INSTEAD")).c();
            return;
        }
    }

    public static void k()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_CANCEL_VERIFY")).c();
            return;
        }
    }

    public static void l()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_REGISTER_PHONE_NUMBER_TENTATIVE_SUCCESS")).c();
            return;
        }
    }

    public static void m()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_FOCUS_ON_VERIFY")).c();
            return;
        }
    }

    public static void n()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_EDITED_VERIFY")).c();
            return;
        }
    }

    public static void o()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_ATTEMPT_VERIFY_WITH_CODE")).c();
            return;
        }
    }

    public static void p()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_VERIFY_INVALID")).c();
            return;
        }
    }

    public static void q()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_CLEAR_PHONE_NUMBER")).c();
            return;
        }
    }

    public static void r()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_RESEND_VERIFICATION_CODE")).c();
            return;
        }
    }

    public static void s()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_CLEAR_VERIFICATION_CODE")).c();
            return;
        }
    }

    public static void t()
    {
        if (!UserPrefs.p())
        {
            return;
        } else
        {
            (new EasyMetric("R01_REGISTER_PHONE_NUMBER_VERIFICATION_SUCCESS")).c();
            return;
        }
    }

}
