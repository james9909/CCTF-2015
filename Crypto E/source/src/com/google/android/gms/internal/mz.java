// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.fitness.data.DataSource;

// Referenced classes of package com.google.android.gms.internal:
//            md

public class mz
{

    private static final ThreadLocal ack = new ThreadLocal();

    public static String bD(String s)
    {
        return t(s, (String)ack.get());
    }

    public static DataSource c(DataSource datasource)
    {
        if (datasource.lI())
        {
            String s = (String)ack.get();
            if (!lW() && !s.equals(datasource.getAppPackageName()))
            {
                return datasource.lJ();
            }
        }
        return datasource;
    }

    public static boolean lW()
    {
        String s = (String)ack.get();
        return s == null || s.startsWith("com.google");
    }

    private static String t(String s, String s1)
    {
        if (s == null || s1 == null)
        {
            return s;
        } else
        {
            byte abyte0[] = new byte[s.length() + s1.length()];
            System.arraycopy(s.getBytes(), 0, abyte0, 0, s.length());
            System.arraycopy(s1.getBytes(), 0, abyte0, s.length(), s1.length());
            return Integer.toHexString(md.a(abyte0, 0, abyte0.length, 0));
        }
    }

}
