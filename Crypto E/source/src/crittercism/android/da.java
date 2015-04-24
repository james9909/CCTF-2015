// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.telephony.TelephonyManager;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.UUID;

// Referenced classes of package crittercism.android:
//            dg

public final class da
{

    private SharedPreferences a;
    private SharedPreferences b;
    private Context c;

    public da(Context context)
    {
        if (context == null)
        {
            throw new NullPointerException("context was null");
        }
        c = context;
        a = context.getSharedPreferences("com.crittercism.usersettings", 0);
        b = context.getSharedPreferences("com.crittercism.prefs", 0);
        if (a == null)
        {
            throw new NullPointerException("prefs were null");
        }
        if (b == null)
        {
            throw new NullPointerException("legacy prefs were null");
        } else
        {
            return;
        }
    }

    private static String a(String s)
    {
        if (s != null && s.length() > 0)
        {
            try
            {
                s = new String((new BigInteger(1, MessageDigest.getInstance("SHA-256").digest(s.getBytes()))).toString(16));
            }
            catch (ThreadDeath threaddeath)
            {
                throw threaddeath;
            }
            catch (Throwable throwable)
            {
                return null;
            }
        }
        return s;
    }

    private String b()
    {
        String s5 = android.provider.Settings.Secure.getString(c.getContentResolver(), "android_id");
        if (s5 == null) goto _L2; else goto _L1
_L1:
        if (s5.length() <= 0 || s5.equals("9774d56d682e549c")) goto _L2; else goto _L3
_L3:
        UUID uuid = UUID.nameUUIDFromBytes(s5.getBytes("utf8"));
        if (uuid == null) goto _L2; else goto _L4
_L4:
        String s7 = uuid.toString();
        String s6 = s7;
_L8:
        String s = s6;
_L5:
        if (s != null && s.length() != 0)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        int i = c.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", c.getPackageName());
        String s3;
        s3 = null;
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_132;
        }
        String s4 = a(((TelephonyManager)c.getSystemService("phone")).getDeviceId());
        s3 = s4;
        String s1 = s3;
_L6:
        if (s1 == null || s1.length() == 0)
        {
            Throwable throwable;
            Throwable throwable1;
            String s2;
            ThreadDeath threaddeath1;
            ThreadDeath threaddeath2;
            try
            {
                s2 = UUID.randomUUID().toString();
            }
            catch (ThreadDeath threaddeath)
            {
                throw threaddeath;
            }
            catch (Throwable throwable2)
            {
                dg.a(throwable2);
                return s1;
            }
            s1 = s2;
        }
        return s1;
        threaddeath2;
        throw threaddeath2;
        throwable;
        dg.a(throwable);
        s = null;
          goto _L5
        threaddeath1;
        throw threaddeath1;
        throwable1;
        dg.a(throwable1);
        s1 = s;
          goto _L6
_L2:
        s6 = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private boolean b(String s)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putString("hashedDeviceID", s);
        return editor.commit();
    }

    public final String a()
    {
        String s = a.getString("hashedDeviceID", null);
        if (s == null)
        {
            s = b.getString("com.crittercism.prefs.did", null);
            if (s != null && b(s))
            {
                android.content.SharedPreferences.Editor editor = b.edit();
                editor.remove("com.crittercism.prefs.did");
                editor.commit();
            }
        }
        if (s == null)
        {
            s = b();
            b(s);
        }
        return s;
    }
}
