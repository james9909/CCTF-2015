// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import com.google.gson.JsonSyntaxException;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.ApiTaskFactory;
import com.snapchat.android.api2.GetDeviceTokenTask;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.GsonWrapper;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.cache.Storage;
import com.snapchat.android.util.debug.DeveloperSettings;
import com.snapchat.android.util.network.CloseableUtils;
import dagger.ObjectGraph;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Hex;
import org.apache.commons.io.Charsets;

// Referenced classes of package com.snapchat.android.util.crypto:
//            DeviceToken, CbcEncryptionAlgorithm, CbcKeyAndIvWrapper, SlightlySecurePreferencesKeys, 
//            SlightlySecurePreferences, SecureHash

public class DeviceTokenManager
{

    private static DeviceTokenManager i;
    protected boolean a;
    protected ExecutorService b;
    private final SlightlySecurePreferences c;
    private final GsonWrapper d;
    private final ApiTaskFactory e;
    private final DeveloperSettings f;
    private final Object g = new Object();
    private DeviceToken h;

    protected DeviceTokenManager(SlightlySecurePreferences slightlysecurepreferences, GsonWrapper gsonwrapper, ApiTaskFactory apitaskfactory, DeveloperSettings developersettings)
    {
        a = false;
        b = ScExecutors.c;
        c = slightlysecurepreferences;
        d = gsonwrapper;
        e = apitaskfactory;
        f = developersettings;
    }

    public static DeviceTokenManager a()
    {
        com/snapchat/android/util/crypto/DeviceTokenManager;
        JVM INSTR monitorenter ;
        DeviceTokenManager devicetokenmanager;
        if (i == null)
        {
            i = (DeviceTokenManager)SnapchatApplication.e().c().a(com/snapchat/android/util/crypto/DeviceTokenManager);
        }
        devicetokenmanager = i;
        com/snapchat/android/util/crypto/DeviceTokenManager;
        JVM INSTR monitorexit ;
        return devicetokenmanager;
        Exception exception;
        exception;
        throw exception;
    }

    private void a(String s)
    {
        if (f.c())
        {
            if (h != null)
            {
                s = (new StringBuilder()).append(s).append("\n").append(h.a()).toString();
            }
            AlertDialogUtils.a(s, SnapchatApplication.e().getApplicationContext(), 1);
        }
        Timber.c("DeviceTokenManager", s, new Object[0]);
    }

    private byte[] a(File file)
    {
        BufferedInputStream bufferedinputstream = new BufferedInputStream(new FileInputStream(file));
        long l = file.length();
        if (l > 0x7fffffffL)
        {
            throw new IOException("Cannot read files larger than 2147483647 bytes");
        } else
        {
            int j = (int)l;
            byte abyte0[] = new byte[j];
            bufferedinputstream.read(abyte0, 0, j);
            bufferedinputstream.close();
            return abyte0;
        }
    }

    public String a(DeviceToken devicetoken, String s, String s1, String s2, String s3)
    {
        SecretKeySpec secretkeyspec = new SecretKeySpec(devicetoken.b().getBytes(Charsets.UTF_8), "HmacSHA256");
        String s4;
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(secretkeyspec);
        s4 = (new String(Hex.encodeHex(Arrays.copyOf(mac.doFinal((new StringBuilder()).append(s).append("|").append(s1).append("|").append(s2).append("|").append(s3).toString().getBytes(Charsets.UTF_8)), 10)))).toLowerCase(Locale.ENGLISH);
        return s4;
        Object obj;
        obj;
_L2:
        Timber.a("DeviceTokenManager", ((Throwable) (obj)));
        return null;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void a(DeviceToken devicetoken)
    {
label0:
        {
            synchronized (g)
            {
                h = devicetoken;
                a = false;
                if (h != null)
                {
                    break label0;
                }
            }
            return;
        }
        obj;
        JVM INSTR monitorexit ;
        byte abyte1[];
        File file;
        Object obj1;
        Timber.c("DeviceTokenManager", "A new device token was acquired from the server.", new Object[0]);
        byte abyte0[] = d.a(h).getBytes();
        CbcEncryptionAlgorithm cbcencryptionalgorithm = new CbcEncryptionAlgorithm();
        a(cbcencryptionalgorithm.a(), cbcencryptionalgorithm.b());
        abyte1 = cbcencryptionalgorithm.a(abyte0);
        if (abyte1 == null)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        file = c();
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        obj1 = null;
        BufferedOutputStream bufferedoutputstream;
        file.delete();
        file.createNewFile();
        bufferedoutputstream = new BufferedOutputStream(new FileOutputStream(file));
        bufferedoutputstream.write(abyte1);
        CloseableUtils.a(bufferedoutputstream);
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        IOException ioexception;
        ioexception;
        bufferedoutputstream = null;
_L4:
        Timber.a("DeviceTokenManager", ioexception);
        CloseableUtils.a(bufferedoutputstream);
        return;
        Exception exception1;
        exception1;
_L2:
        CloseableUtils.a(((java.io.Closeable) (obj1)));
        throw exception1;
        exception1;
        obj1 = bufferedoutputstream;
        if (true) goto _L2; else goto _L1
_L1:
        ioexception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(String s, String s1)
    {
        CbcKeyAndIvWrapper cbckeyandivwrapper = new CbcKeyAndIvWrapper(s, s1);
        c.a(SlightlySecurePreferencesKeys.g, d.a(cbckeyandivwrapper));
    }

    protected void a(boolean flag)
    {
label0:
        {
            c.b();
            synchronized (g)
            {
                if (h == null)
                {
                    break label0;
                }
                a("Device token successfully fetched in memory.");
            }
            return;
        }
        h = b();
        if (h == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        a("Device token successfully fetched from disk.");
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        IOException ioexception;
        ioexception;
        Timber.a("DeviceTokenManager", ioexception);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        if (!a)
        {
            a("Requesting a new device token from the server.");
            a = true;
            e.a().g();
        }
        obj;
        JVM INSTR monitorexit ;
    }

    protected DeviceToken b()
    {
        File file;
        byte abyte1[];
        file = c();
        if (file == null || !file.exists())
        {
            return null;
        }
        CbcKeyAndIvWrapper cbckeyandivwrapper = f();
        if (cbckeyandivwrapper == null)
        {
            file.delete();
            return null;
        }
        byte abyte0[] = a(file);
        abyte1 = (new CbcEncryptionAlgorithm(cbckeyandivwrapper.a(), cbckeyandivwrapper.b())).b(abyte0);
        if (abyte1 == null)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        DeviceToken devicetoken = (DeviceToken)d.a(new String(abyte1), com/snapchat/android/util/crypto/DeviceToken);
        return devicetoken;
        JsonSyntaxException jsonsyntaxexception;
        jsonsyntaxexception;
        Timber.a("DeviceTokenManager", jsonsyntaxexception);
        file.delete();
        return null;
    }

    protected File c()
    {
        File file = new File((new StringBuilder()).append(Storage.a().getAbsolutePath()).append("/Snapchat").toString());
        File file1 = new File(file, "device_token_1");
        if (!file.exists() && !file.mkdirs())
        {
            file1 = null;
        }
        return file1;
    }

    public DeviceToken d()
    {
        a(false);
        return h;
    }

    public void e()
    {
        Runnable runnable = new Runnable() {

            final DeviceTokenManager a;

            public void run()
            {
                Thread.currentThread().setName("DeviceTokenManager.checkForDeviceTokenOnDisk");
                a.a(true);
            }

            
            {
                a = DeviceTokenManager.this;
                super();
            }
        };
        b.execute(runnable);
    }

    public CbcKeyAndIvWrapper f()
    {
        String s = c.a(SlightlySecurePreferencesKeys.g);
        if (s == null)
        {
            return null;
        } else
        {
            return (CbcKeyAndIvWrapper)d.a(s, com/snapchat/android/util/crypto/CbcKeyAndIvWrapper);
        }
    }

    public String g()
    {
        DeviceToken devicetoken = d();
        if (devicetoken == null)
        {
            return null;
        } else
        {
            return SecureHash.c(devicetoken.a());
        }
    }
}
