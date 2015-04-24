// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;

// Referenced classes of package crittercism.android:
//            bm, bn

public static final class a
    implements bm
{

    public String a;

    public final String a()
    {
        return "carrier";
    }

    public final volatile Object b()
    {
        return a;
    }

    public nyManager()
    {
        a = null;
        bn.b();
        String s1 = ((TelephonyManager)bn.b().getSystemService("phone")).getNetworkOperatorName();
        String s = s1;
_L2:
        a = s;
        return;
        Exception exception;
        exception;
        s = Build.BRAND;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
