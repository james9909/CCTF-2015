// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.math.BigInteger;

// Referenced classes of package crittercism.android:
//            bm, bn

public static final class a
    implements bm
{

    private String a;

    public final String a()
    {
        return "disk_space_free";
    }

    public final volatile Object b()
    {
        return a;
    }

    public ()
    {
        a = null;
        try
        {
            BigInteger.valueOf(-1L);
            StatFs statfs = new StatFs(Environment.getDataDirectory().getPath());
            a = BigInteger.valueOf(statfs.getAvailableBlocks()).multiply(BigInteger.valueOf(statfs.getBlockSize())).toString();
            return;
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable)
        {
            a = null;
        }
    }
}
