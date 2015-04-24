// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import android.util.Base64;
import android.util.Log;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ExceptionReporter;
import com.snapchat.android.util.debug.ReleaseManager;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.snapchat.android.util.crypto:
//            EncryptionAlgorithm

public class CbcEncryptionAlgorithm
    implements EncryptionAlgorithm
{

    private byte a[];
    private byte b[];
    private byte c[];

    public CbcEncryptionAlgorithm()
    {
        a = e();
        b = f();
        c = f();
    }

    public CbcEncryptionAlgorithm(String s, String s1)
    {
        this(s, s1, null);
    }

    public CbcEncryptionAlgorithm(String s, String s1, String s2)
    {
        a = Base64.decode(s, 0);
        b = Base64.decode(s1, 0);
        if (s2 != null)
        {
            c = Base64.decode(s2, 0);
            return;
        } else
        {
            c = f();
            return;
        }
    }

    private Cipher d()
    {
        if (android.os.Build.VERSION.SDK_INT == 18)
        {
            return Cipher.getInstance("AES/CBC/PKCS5Padding", "BC");
        } else
        {
            return Cipher.getInstance("AES/CBC/PKCS5Padding");
        }
    }

    private byte[] e()
    {
        SecureRandom securerandom = new SecureRandom();
        byte abyte0[] = new byte[16];
        securerandom.nextBytes(abyte0);
        return abyte0;
    }

    private byte[] f()
    {
        byte abyte0[] = null;
        try
        {
            abyte0 = new byte[Cipher.getInstance("AES/CBC/PKCS5Padding").getBlockSize()];
            (new SecureRandom()).nextBytes(abyte0);
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            Timber.e("CbcEncryptionAlgorithm", "Could not generate iv", new Object[0]);
            return abyte0;
        }
        return abyte0;
    }

    public String a()
    {
        return Base64.encodeToString(a, 0);
    }

    public byte[] a(byte abyte0[])
    {
        byte abyte1[];
        try
        {
            Cipher cipher = d();
            cipher.init(1, new SecretKeySpec(a, "AES"), new IvParameterSpec(b));
            abyte1 = cipher.doFinal(abyte0);
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            if (ReleaseManager.f())
            {
                throw new RuntimeException((new StringBuilder()).append("Unable to encrypt data\n").append(abyte0).append("\n").append(Log.getStackTraceString(generalsecurityexception)).toString());
            } else
            {
                (new ExceptionReporter()).a(generalsecurityexception);
                return null;
            }
        }
        return abyte1;
    }

    public String b()
    {
        return Base64.encodeToString(b, 0);
    }

    public byte[] b(byte abyte0[])
    {
        byte abyte1[];
        try
        {
            Cipher cipher = d();
            cipher.init(2, new SecretKeySpec(a, "AES"), new IvParameterSpec(b));
            abyte1 = cipher.doFinal(abyte0);
        }
        catch (GeneralSecurityException generalsecurityexception)
        {
            if (ReleaseManager.f())
            {
                throw new RuntimeException((new StringBuilder()).append("Unable to decrypt data\n").append(Log.getStackTraceString(generalsecurityexception)).toString());
            } else
            {
                (new ExceptionReporter()).a(generalsecurityexception);
                return null;
            }
        }
        return abyte1;
    }

    public String c()
    {
        return Base64.encodeToString(c, 0);
    }
}
