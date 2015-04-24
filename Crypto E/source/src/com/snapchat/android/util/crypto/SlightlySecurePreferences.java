// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import android.content.Context;
import android.os.Build;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.util.GsonUtil;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.network.CloseableUtils;
import com.snapchat.android.util.threading.ThreadUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.io.IOUtils;

// Referenced classes of package com.snapchat.android.util.crypto:
//            PrefixFilenameFilter, SlightlySecurePreferencesKeys, SlightlySecurePreferencesKey

public class SlightlySecurePreferences
{

    protected ExecutorService a;
    private final HashMap b = new HashMap();
    private boolean c;
    private boolean d;
    private boolean e;
    private final CountDownLatch f = new CountDownLatch(1);

    protected SlightlySecurePreferences()
    {
        a = Executors.newSingleThreadExecutor();
        e = true;
    }

    static HashMap a(SlightlySecurePreferences slightlysecurepreferences)
    {
        return slightlysecurepreferences.b;
    }

    private void a(File file)
    {
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        String s = file.getAbsolutePath();
        Timber.c("SlightlySecurePreferences", (new StringBuilder()).append("Try to delete the file that cannot be decrypted. ").append(s).toString(), new Object[0]);
        file.delete();
        Timber.c("SlightlySecurePreferences", (new StringBuilder()).append("Successfully deleted the file ").append(s).toString(), new Object[0]);
        return;
        Exception exception;
        exception;
        Timber.e("SlightlySecurePreferences", (new StringBuilder()).append("Failed to delete the file that cannot be decrypted.").append(exception).toString(), new Object[0]);
        return;
    }

    private boolean a(File file, String s)
    {
        int i = 0;
        boolean flag;
        if (!file.isDirectory())
        {
            flag = false;
        } else
        {
            File afile[] = file.listFiles(new PrefixFilenameFilter("bananas", null));
            int j = afile.length;
            int k = 0;
            flag = false;
            for (; k < j; k++)
            {
                File file1 = afile[k];
                b(file1);
                if (file1.delete())
                {
                    flag = true;
                }
            }

            File afile1[] = file.listFiles(new PrefixFilenameFilter("fdg78df67g5s6f", s));
            for (int l = afile1.length; i < l; i++)
            {
                if (afile1[i].delete())
                {
                    flag = true;
                }
            }

            if (flag)
            {
                StoryLibrary.a().c();
                Caches.b();
                return flag;
            }
        }
        return flag;
    }

    private SecretKeySpec b(Context context)
    {
        String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (s == null)
        {
            s = Build.FINGERPRINT;
        }
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(s.getBytes());
        messagedigest.update("seems legit...".getBytes());
        byte abyte0[] = messagedigest.digest();
        StringBuilder stringbuilder = new StringBuilder();
        int i = abyte0.length;
        for (int j = 0; j < i; j++)
        {
            String s1;
            for (s1 = Integer.toHexString(0xff & abyte0[j]); s1.length() < 2; s1 = (new StringBuilder()).append("0").append(s1).toString()) { }
            stringbuilder.append(s1);
        }

        return new SecretKeySpec(stringbuilder.toString().getBytes(), "AES");
    }

    private void b(File file)
    {
        Object obj;
        SnapchatApplication snapchatapplication;
        obj = null;
        snapchatapplication = SnapchatApplication.e();
        Object obj1 = new FileInputStream(file);
        Exception exception;
        Object obj2;
        Exception exception1;
        Object obj3;
        String s;
        HashMap hashmap;
        try
        {
            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(2, b(((Context) (snapchatapplication))));
            obj3 = new CipherInputStream(((java.io.InputStream) (obj1)), cipher);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            obj2 = obj1;
            obj = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            obj3 = null;
            continue; /* Loop/switch isn't completed */
        }
        s = IOUtils.toString(((java.io.InputStream) (obj3)), "UTF-8");
        hashmap = (HashMap)GsonUtil.a().fromJson(s, java/util/HashMap);
        if (hashmap.containsKey(SlightlySecurePreferencesKeys.e.a()))
        {
            a(SlightlySecurePreferencesKeys.e, (String)hashmap.get(SlightlySecurePreferencesKeys.e.a()));
        }
        if (hashmap.containsKey(SlightlySecurePreferencesKeys.f.a()))
        {
            a(SlightlySecurePreferencesKeys.f, (String)hashmap.get(SlightlySecurePreferencesKeys.f.a()));
        }
        CloseableUtils.a(((java.io.Closeable) (obj3)));
        CloseableUtils.a(((java.io.Closeable) (obj1)));
        return;
        exception;
        obj2 = null;
_L4:
        Timber.a("SlightlySecurePreferences", exception);
        CloseableUtils.a(((java.io.Closeable) (obj)));
        CloseableUtils.a(((java.io.Closeable) (obj2)));
        return;
        exception1;
        obj3 = null;
        obj1 = null;
_L2:
        CloseableUtils.a(((java.io.Closeable) (obj3)));
        CloseableUtils.a(((java.io.Closeable) (obj1)));
        throw exception1;
        exception1;
        continue; /* Loop/switch isn't completed */
        exception1;
        obj1 = obj2;
        obj3 = obj;
        if (true) goto _L2; else goto _L1
_L1:
        break MISSING_BLOCK_LABEL_47;
        exception;
        obj = obj3;
        obj2 = obj1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String a(SlightlySecurePreferencesKey slightlysecurepreferenceskey)
    {
        String s;
        synchronized (b)
        {
            s = (String)b.get(slightlysecurepreferenceskey);
        }
        return s;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected SecretKeySpec a(Context context)
    {
        String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (s == null)
        {
            s = Build.FINGERPRINT;
        }
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(s.getBytes());
        messagedigest.update("7f6as9d7f6dasf7".getBytes());
        byte abyte0[] = messagedigest.digest();
        StringBuilder stringbuilder = new StringBuilder();
        int i = abyte0.length;
        for (int j = 0; j < i; j++)
        {
            String s1;
            for (s1 = Integer.toHexString(0xff & abyte0[j]); s1.length() < 2; s1 = (new StringBuilder()).append("0").append(s1).toString()) { }
            stringbuilder.append(s1);
        }

        return new SecretKeySpec(stringbuilder.toString().getBytes(), "AES");
    }

    public void a()
    {
        SnapchatApplication snapchatapplication;
        if (e)
        {
            ThreadUtils.b();
        }
        snapchatapplication = SnapchatApplication.e();
        d = true;
        File file = snapchatapplication.getCacheDir();
        if (file == null)
        {
            f.countDown();
            return;
        }
        boolean flag;
        File file1;
        boolean flag1;
        flag = a(file, "fdg78df67g5s6f2");
        file1 = new File((new StringBuilder()).append(file.getPath()).append("/fdg78df67g5s6f2").toString());
        flag1 = file1.exists();
        if (!flag1)
        {
            f.countDown();
            return;
        }
        break MISSING_BLOCK_LABEL_139;
        Exception exception1;
        exception1;
        if (ReleaseManager.e())
        {
            throw new RuntimeException("Could not open file", exception1);
        }
        break MISSING_BLOCK_LABEL_131;
        Exception exception;
        exception;
        f.countDown();
        throw exception;
        f.countDown();
        return;
        Object obj = new FileInputStream(file1);
        CipherInputStream cipherinputstream;
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(2, a(((Context) (snapchatapplication))));
        cipherinputstream = new CipherInputStream(((java.io.InputStream) (obj)), cipher);
        HashMap hashmap;
        String s = IOUtils.toString(cipherinputstream, "UTF-8");
        java.lang.reflect.Type type = (new TypeToken() {

            final SlightlySecurePreferences a;

            
            {
                a = SlightlySecurePreferences.this;
                super();
            }
        }).getType();
        hashmap = (HashMap)GsonUtil.a().fromJson(s, type);
        if (hashmap == null) goto _L2; else goto _L1
_L1:
        if (hashmap.isEmpty()) goto _L2; else goto _L3
_L3:
        synchronized (b)
        {
            b.putAll(hashmap);
        }
        d = false;
          goto _L2
_L7:
        boolean flag2;
        c = flag2;
        CloseableUtils.a(cipherinputstream);
        CloseableUtils.a(((java.io.Closeable) (obj)));
_L4:
        f.countDown();
        return;
        exception4;
        hashmap1;
        JVM INSTR monitorexit ;
        throw exception4;
        Exception exception2;
        exception2;
        Object obj1 = obj;
_L6:
        if ((exception2 instanceof IOException) || (exception2 instanceof GeneralSecurityException))
        {
            a(file1);
        }
        Timber.a("SlightlySecurePreferences", exception2);
        CloseableUtils.a(cipherinputstream);
        CloseableUtils.a(((java.io.Closeable) (obj1)));
          goto _L4
_L5:
        Exception exception3;
        CloseableUtils.a(cipherinputstream);
        CloseableUtils.a(((java.io.Closeable) (obj)));
        throw exception3;
        exception3;
        cipherinputstream = null;
          goto _L5
        exception3;
          goto _L5
        exception3;
        obj = obj1;
          goto _L5
        exception2;
        cipherinputstream = null;
        obj1 = null;
          goto _L6
        exception2;
        obj1 = obj;
        cipherinputstream = null;
          goto _L6
_L2:
        if (!flag)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
          goto _L7
        exception3;
        cipherinputstream = null;
        obj = null;
          goto _L5
    }

    public void a(SlightlySecurePreferencesKey slightlysecurepreferenceskey, String s)
    {
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        b.remove(slightlysecurepreferenceskey);
_L1:
        hashmap;
        JVM INSTR monitorexit ;
        c = false;
        return;
        b.put(slightlysecurepreferenceskey, s);
          goto _L1
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b()
    {
        try
        {
            f.await();
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            Timber.a("SlightlySecurePreferences", interruptedexception);
        }
    }

    public boolean c()
    {
        Object obj;
        SnapchatApplication snapchatapplication;
        File file1;
        obj = null;
        if (e)
        {
            ThreadUtils.b();
        }
        snapchatapplication = SnapchatApplication.e();
        if (c)
        {
            return true;
        }
        c = true;
        File file;
        boolean flag;
        try
        {
            file = snapchatapplication.getCacheDir();
        }
        catch (Exception exception)
        {
            if (ReleaseManager.e())
            {
                throw new RuntimeException("Could not open file", exception);
            } else
            {
                return false;
            }
        }
        if (file == null)
        {
            return false;
        }
        file1 = new File((new StringBuilder()).append(file.getPath()).append("/fdg78df67g5s6f2").toString());
        if (file1.exists())
        {
            break MISSING_BLOCK_LABEL_119;
        }
        flag = file1.createNewFile();
        if (!flag)
        {
            return false;
        }
        FileOutputStream fileoutputstream;
        Exception exception1;
        Exception exception2;
        Cipher cipher;
        CipherOutputStream cipheroutputstream;
        String s;
        try
        {
            fileoutputstream = new FileOutputStream(file1);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1)
        {
            fileoutputstream = null;
            obj = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            fileoutputstream = null;
            obj = null;
            continue; /* Loop/switch isn't completed */
        }
        cipher = Cipher.getInstance("AES");
        cipher.init(1, a(snapchatapplication));
        cipheroutputstream = new CipherOutputStream(fileoutputstream, cipher);
        synchronized (b)
        {
            java.lang.reflect.Type type = (new TypeToken() {

                final SlightlySecurePreferences a;

            
            {
                a = SlightlySecurePreferences.this;
                super();
            }
            }).getType();
            s = GsonUtil.a().toJson(b, type);
        }
        cipheroutputstream.write(s.getBytes());
        cipheroutputstream.flush();
        fileoutputstream.flush();
        CloseableUtils.a(cipheroutputstream);
        CloseableUtils.a(fileoutputstream);
        d = false;
        return true;
        exception3;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception3;
        exception1;
        obj = cipheroutputstream;
_L5:
        if (ReleaseManager.e())
        {
            throw new RuntimeException("Could not encrypt file", exception1);
        }
          goto _L1
        exception2;
_L3:
        CloseableUtils.a(((java.io.Closeable) (obj)));
        CloseableUtils.a(fileoutputstream);
        throw exception2;
_L1:
        CloseableUtils.a(((java.io.Closeable) (obj)));
        CloseableUtils.a(fileoutputstream);
        return false;
        exception2;
        obj = cipheroutputstream;
        if (true) goto _L3; else goto _L2
_L2:
        break MISSING_BLOCK_LABEL_130;
        exception1;
        obj = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void d()
    {
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        Iterator iterator = b.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (((SlightlySecurePreferencesKey)iterator.next()).c())
            {
                iterator.remove();
                c = false;
            }
        } while (true);
        break MISSING_BLOCK_LABEL_63;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        hashmap;
        JVM INSTR monitorexit ;
        if (!c)
        {
            a.execute(new Runnable() {

                final SlightlySecurePreferences a;

                public void run()
                {
                    int i;
                    synchronized (SlightlySecurePreferences.a(a))
                    {
                        i = SlightlySecurePreferences.a(a).size();
                    }
                    if (i > 0)
                    {
                        if (!a.c())
                        {
                            synchronized (SlightlySecurePreferences.a(a))
                            {
                                SlightlySecurePreferences.a(a).clear();
                            }
                            a.f();
                        }
                        return;
                    } else
                    {
                        a.f();
                        return;
                    }
                    exception1;
                    hashmap1;
                    JVM INSTR monitorexit ;
                    throw exception1;
                    exception2;
                    hashmap2;
                    JVM INSTR monitorexit ;
                    throw exception2;
                }

            
            {
                a = SlightlySecurePreferences.this;
                super();
            }
            });
        }
        return;
    }

    public void e()
    {
        if (!d) goto _L2; else goto _L1
_L1:
        return;
_L2:
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        Iterator iterator = b.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (((SlightlySecurePreferencesKey)iterator.next()).d())
            {
                iterator.remove();
                c = false;
            }
        } while (true);
        break MISSING_BLOCK_LABEL_71;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        hashmap;
        JVM INSTR monitorexit ;
        if (!c)
        {
            a.execute(new Runnable() {

                final SlightlySecurePreferences a;

                public void run()
                {
                    a.c();
                }

            
            {
                a = SlightlySecurePreferences.this;
                super();
            }
            });
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected void f()
    {
        if (e)
        {
            ThreadUtils.b();
        }
        if (!d) goto _L2; else goto _L1
_L1:
        File file;
        return;
_L2:
        if ((file = SnapchatApplication.e().getCacheDir()) != null)
        {
            try
            {
                a(file, null);
                d = true;
                return;
            }
            catch (Exception exception)
            {
                if (ReleaseManager.e())
                {
                    throw new RuntimeException(exception);
                }
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
