// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import android.content.Context;
import android.graphics.Bitmap;
import com.snapchat.android.Timber;
import com.snapchat.android.TimberTimingLogger;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.bitmap.BitmapDecodeResult;
import com.snapchat.android.util.crypto.EncryptionAlgorithm;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.snapchat.android.util.cache:
//            CacheType, FileUtils, ExternalStorageUnavailableException

public class Cache
{
    static final class DiskCacheMissReason extends Enum
    {

        public static final DiskCacheMissReason a;
        public static final DiskCacheMissReason b;
        public static final DiskCacheMissReason c;
        public static final DiskCacheMissReason d;
        public static final DiskCacheMissReason e;
        private static final DiskCacheMissReason f[];

        public static DiskCacheMissReason valueOf(String s)
        {
            return (DiskCacheMissReason)Enum.valueOf(com/snapchat/android/util/cache/Cache$DiskCacheMissReason, s);
        }

        public static DiskCacheMissReason[] values()
        {
            return (DiskCacheMissReason[])f.clone();
        }

        static 
        {
            a = new DiskCacheMissReason("FILE_NOT_EXIST", 0);
            b = new DiskCacheMissReason("EXPIRED", 1);
            c = new DiskCacheMissReason("DECODING_ERROR", 2);
            d = new DiskCacheMissReason("EMPTY_FILE", 3);
            e = new DiskCacheMissReason("UNKNOWN", 4);
            DiskCacheMissReason adiskcachemissreason[] = new DiskCacheMissReason[5];
            adiskcachemissreason[0] = a;
            adiskcachemissreason[1] = b;
            adiskcachemissreason[2] = c;
            adiskcachemissreason[3] = d;
            adiskcachemissreason[4] = e;
            f = adiskcachemissreason;
        }

        private DiskCacheMissReason(String s, int i)
        {
            super(s, i);
        }
    }

    public static interface OnCompleted
    {

        public abstract void a(Bitmap bitmap);
    }


    protected Map a;
    protected long b;
    protected CacheType c;

    public Cache(CacheType cachetype, long l)
    {
        if (cachetype == null)
        {
            throw new NullPointerException();
        } else
        {
            b = l;
            c = cachetype;
            a = new ConcurrentHashMap();
            return;
        }
    }

    private static Map b(Map map)
    {
        HashMap hashmap = new HashMap();
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); hashmap.put(entry.getValue(), entry.getKey()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return hashmap;
    }

    public Bitmap a(Context context, String s, EncryptionAlgorithm encryptionalgorithm)
    {
        return a(context, s, encryptionalgorithm, android.graphics.Bitmap.Config.ARGB_8888);
    }

    public Bitmap a(Context context, String s, EncryptionAlgorithm encryptionalgorithm, android.graphics.Bitmap.Config config)
    {
        TimberTimingLogger timbertiminglogger = new TimberTimingLogger("Cache", "getBitmap");
        byte abyte0[] = a(s);
        timbertiminglogger.a("get");
        if (abyte0 != null)
        {
            if (encryptionalgorithm != null)
            {
                abyte0 = encryptionalgorithm.b(abyte0);
                timbertiminglogger.a("decrypt");
            }
            if (abyte0 != null)
            {
                BitmapDecodeResult bitmapdecoderesult = SnapMediaUtils.a(context, abyte0, config);
                String s1;
                if (bitmapdecoderesult.a())
                {
                    s1 = "decodePooled";
                } else
                {
                    s1 = "decodeNotPooled";
                }
                timbertiminglogger.a(s1);
                Timber.a(timbertiminglogger);
                return bitmapdecoderesult.b();
            }
        }
        return null;
    }

    public String a(String s, byte abyte0[], int i)
    {
        String s1;
        if (s == null)
        {
            Timber.e("Cache", (new StringBuilder()).append("put: Trying to put null key in ").append(c.name()).toString(), new Object[0]);
            if (ReleaseManager.e())
            {
                throw new NullPointerException();
            }
            s1 = null;
        } else
        {
            s1 = a(abyte0, i);
            if (s1 != null)
            {
                a.put(s, s1);
                return s1;
            }
        }
        return s1;
    }

    protected String a(byte abyte0[], int i)
    {
        File file = new File((new StringBuilder()).append(c.b()).append("/").append(c.a()).toString());
        File file1 = c.b();
        if (file1.exists() || file1.mkdirs())
        {
            break MISSING_BLOCK_LABEL_102;
        }
        Timber.c("Cache", (new StringBuilder()).append("Failed to create directory ").append(file1.getAbsolutePath()).toString(), new Object[0]);
        return null;
        try
        {
            if (file.exists())
            {
                FileUtils.a(file);
            }
            file.createNewFile();
            (new FileUtils()).a(file, abyte0, i);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            Timber.a("Cache", filenotfoundexception);
            return null;
        }
        catch (IOException ioexception)
        {
            Timber.c("Cache", "Failed to write file...", new Object[0]);
            Timber.a("Cache", ioexception);
            return null;
        }
        return file.getAbsolutePath();
    }

    public void a(String s, Bitmap bitmap, android.graphics.Bitmap.CompressFormat compressformat)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(compressformat, 90, bytearrayoutputstream);
        a(s, bytearrayoutputstream.toByteArray());
    }

    public void a(String s, String s1)
    {
        if (s == null)
        {
            Timber.e("Cache", (new StringBuilder()).append("putVideoUri: Trying to put null key in ").append(c.name()).toString(), new Object[0]);
            if (ReleaseManager.e())
            {
                throw new NullPointerException();
            }
        } else
        {
            a.put(s, s1);
        }
    }

    public void a(String s, byte abyte0[])
    {
        int i;
        if (abyte0 != null)
        {
            i = abyte0.length;
        } else
        {
            i = 0;
        }
        a(s, abyte0, i);
    }

    public void a(Map map)
    {
        synchronized (a)
        {
            a.clear();
            a.putAll(map);
        }
        return;
        exception;
        map1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(Set set)
    {
        HashSet hashset = new HashSet();
        Iterator iterator = a.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (!set.contains(entry.getKey()))
            {
                hashset.add(entry.getKey());
            }
        } while (true);
        for (Iterator iterator1 = hashset.iterator(); iterator1.hasNext(); d((String)iterator1.next())) { }
    }

    public void a(boolean flag)
    {
        Map map1;
        Iterator iterator;
        synchronized (a)
        {
            map1 = b(a);
        }
        iterator = e().iterator();
_L2:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        File file = (File)iterator.next();
        String s = (String)map1.get(file.getAbsolutePath());
        if (flag && s == null)
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = file.toString();
            aobj1[1] = c.name();
            Timber.c("Cache", "sanitize: Deleting not tracked file %s from %s", aobj1);
            FileUtils.a(file);
        } else
        {
            long l = file.lastModified();
            if (((new Date()).getTime() - l) / 60000L >= b)
            {
                Object aobj[] = new Object[2];
                aobj[0] = file.toString();
                aobj[1] = c.name();
                Timber.c("Cache", "sanitize: DISK cache expiration for file %s from %s", aobj);
                if (s != null)
                {
                    a.remove(s);
                }
                FileUtils.a(file);
            }
        }
        continue; /* Loop/switch isn't completed */
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean a()
    {
        try
        {
            c.b();
        }
        catch (ExternalStorageUnavailableException externalstorageunavailableexception)
        {
            return false;
        }
        return true;
    }

    protected boolean a(File file)
    {
        long l = file.lastModified();
        return ((new Date()).getTime() - l) / 60000L >= b;
    }

    public byte[] a(String s)
    {
        String s1;
label0:
        {
            if (s == null)
            {
                Timber.e("Cache", (new StringBuilder()).append("get: Trying to get null key in ").append(c.name()).toString(), new Object[0]);
                if (ReleaseManager.e())
                {
                    throw new NullPointerException();
                }
            } else
            {
                s1 = b(s);
                if (s1 != null)
                {
                    break label0;
                }
            }
            return null;
        }
        return b(s, s1);
    }

    public String b(String s)
    {
        String s1;
        if (s == null)
        {
            Timber.e("Cache", (new StringBuilder()).append("getUri: Trying to get null key in ").append(c.name()).toString(), new Object[0]);
            if (ReleaseManager.e())
            {
                throw new NullPointerException();
            }
            s1 = null;
        } else
        {
            s1 = (String)a.get(s);
            if (s1 == null)
            {
                a.remove(s);
                return s1;
            }
        }
        return s1;
    }

    public void b()
    {
        a.clear();
        File file1 = c.b();
        File file = file1;
_L1:
        if (file != null && file.exists())
        {
            File afile[] = file.listFiles();
            ExternalStorageUnavailableException externalstorageunavailableexception;
            if (afile != null)
            {
                int i = afile.length;
                int j = 0;
                while (j < i) 
                {
                    FileUtils.a(afile[j]);
                    j++;
                }
            }
        }
        return;
        externalstorageunavailableexception;
        file = null;
          goto _L1
    }

    protected byte[] b(File file)
    {
        BufferedInputStream bufferedinputstream = new BufferedInputStream(new FileInputStream(file));
        long l = file.length();
        if (l > 0x7fffffffL)
        {
            throw new IOException("Cannot read files larger than 2147483647 bytes");
        } else
        {
            int i = (int)l;
            byte abyte0[] = new byte[i];
            bufferedinputstream.read(abyte0, 0, i);
            bufferedinputstream.close();
            return abyte0;
        }
    }

    protected byte[] b(String s, String s1)
    {
        byte abyte0[] = null;
        DiskCacheMissReason diskcachemissreason = DiskCacheMissReason.e;
        File file = c(s1);
        if (file.exists())
        {
            if (a(file))
            {
                diskcachemissreason = DiskCacheMissReason.b;
            } else
            {
                try
                {
                    abyte0 = b(file);
                    if (abyte0.length == 0)
                    {
                        diskcachemissreason = DiskCacheMissReason.d;
                    }
                }
                catch (IOException ioexception)
                {
                    DiskCacheMissReason diskcachemissreason1 = DiskCacheMissReason.c;
                    Timber.a("Cache", ioexception);
                    diskcachemissreason = diskcachemissreason1;
                }
            }
        } else
        {
            diskcachemissreason = DiskCacheMissReason.a;
            abyte0 = null;
        }
        if (abyte0 == null || abyte0.length == 0)
        {
            Timber.c("Cache", (new StringBuilder()).append("DISK cache MISS for ").append(s).append(" from ").append(c.name()).append(" reason: ").append(diskcachemissreason).toString(), new Object[0]);
            d(s);
            return abyte0;
        } else
        {
            Timber.c("Cache", (new StringBuilder()).append("DISK cache HIT for ").append(s).append(" from ").append(c.name()).toString(), new Object[0]);
            return abyte0;
        }
    }

    File c(String s)
    {
        return new File(s);
    }

    public Collection c()
    {
        Map map = a;
        map;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        Set set = a.entrySet();
        arraylist = new ArrayList(set.size());
        for (Iterator iterator = set.iterator(); iterator.hasNext(); arraylist.add((java.util.Map.Entry)iterator.next())) { }
        break MISSING_BLOCK_LABEL_76;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        map;
        JVM INSTR monitorexit ;
        return arraylist;
    }

    public void d()
    {
        a(false);
    }

    public void d(String s)
    {
        String s1;
label0:
        {
            if (s == null)
            {
                Timber.e("Cache", (new StringBuilder()).append("remove: Trying to remove null key in ").append(c.name()).toString(), new Object[0]);
                if (ReleaseManager.e())
                {
                    throw new NullPointerException();
                }
            } else
            {
                Object aobj[] = new Object[3];
                aobj[0] = c.name();
                aobj[1] = s;
                aobj[2] = a.get(s);
                Timber.c("Cache", "!!! [%s] deleting [Key: %s; Uri: %s]", aobj);
                s1 = (String)a.remove(s);
                if (s1 != null)
                {
                    break label0;
                }
            }
            return;
        }
        FileUtils.a(new File(s1));
    }

    public List e()
    {
        File afile1[] = c.b().listFiles();
        File afile[] = afile1;
_L1:
        ExternalStorageUnavailableException externalstorageunavailableexception;
        if (afile == null)
        {
            return Collections.emptyList();
        } else
        {
            return Arrays.asList(afile);
        }
        externalstorageunavailableexception;
        afile = null;
          goto _L1
    }

    public boolean e(String s)
    {
        boolean flag;
        if (s == null)
        {
            Timber.e("Cache", (new StringBuilder()).append("contains: Trying to check null key in ").append(c.name()).toString(), new Object[0]);
            boolean flag1 = ReleaseManager.e();
            flag = false;
            if (flag1)
            {
                throw new NullPointerException();
            }
        } else
        {
            flag = a.containsKey(s);
        }
        return flag;
    }

    public boolean f(String s)
    {
        if (s == null)
        {
            Timber.e("Cache", (new StringBuilder()).append("containsAndExists: Trying to check null key in ").append(c.name()).toString(), new Object[0]);
            if (ReleaseManager.e())
            {
                throw new NullPointerException();
            } else
            {
                return false;
            }
        }
        String s1 = (String)a.get(s);
        if (s1 == null)
        {
            return false;
        } else
        {
            return (new File(s1)).exists();
        }
    }
}
