// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.content.Context;
import android.os.Looper;
import android.telephony.TelephonyManager;
import java.util.Arrays;

// Referenced classes of package com.flurry.sdk:
//            do, fb, el

public class dy
{

    private static final String a = com/flurry/sdk/dy.getSimpleName();
    private static byte b[];

    public dy()
    {
    }

    public static byte[] a()
    {
        com/flurry/sdk/dy;
        JVM INSTR monitorenter ;
        if (Looper.getMainLooper().getThread() == Thread.currentThread())
        {
            throw new IllegalStateException("Must be called from a background thread!");
        }
        break MISSING_BLOCK_LABEL_31;
        Exception exception;
        exception;
        com/flurry/sdk/dy;
        JVM INSTR monitorexit ;
        throw exception;
        if (b == null) goto _L2; else goto _L1
_L1:
        byte abyte0[] = b;
_L3:
        com/flurry/sdk/dy;
        JVM INSTR monitorexit ;
        return abyte0;
_L2:
        if (com.flurry.sdk.do.a().b().checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == 0)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        abyte0 = null;
          goto _L3
        b();
        abyte0 = b;
          goto _L3
    }

    private static void b()
    {
        TelephonyManager telephonymanager = (TelephonyManager)com.flurry.sdk.do.a().b().getSystemService("phone");
        if (telephonymanager != null) goto _L2; else goto _L1
_L1:
        String s;
        return;
_L2:
        if ((s = telephonymanager.getDeviceId()) == null || s.trim().length() <= 0) goto _L1; else goto _L3
_L3:
        byte abyte0[];
        try
        {
            abyte0 = fb.d(s);
        }
        catch (Exception exception)
        {
            el.a(6, a, "Exception in generateHashedImei()");
            return;
        }
        if (abyte0 == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        if (abyte0.length == 20)
        {
            b = abyte0;
            return;
        }
        el.a(6, a, (new StringBuilder()).append("sha1 is not ").append(20).append(" bytes long: ").append(Arrays.toString(abyte0)).toString());
        return;
    }

}
