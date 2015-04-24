// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.util.Random;

// Referenced classes of package org.apache.commons.lang3:
//            Validate

public class RandomUtils
{

    private static final Random RANDOM = new Random();

    public RandomUtils()
    {
    }

    public static byte[] nextBytes(int i)
    {
        boolean flag;
        byte abyte0[];
        if (i >= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Validate.isTrue(flag, "Count cannot be negative.", new Object[0]);
        abyte0 = new byte[i];
        RANDOM.nextBytes(abyte0);
        return abyte0;
    }

    public static double nextDouble(double d, double d1)
    {
        boolean flag = true;
        boolean flag1;
        if (d1 >= d)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "Start value must be smaller or equal to end value.", new Object[0]);
        if (d < 0.0D)
        {
            flag = false;
        }
        Validate.isTrue(flag, "Both range values must be non-negative.", new Object[0]);
        if (d == d1)
        {
            return d;
        } else
        {
            return d + (d1 - d) * RANDOM.nextDouble();
        }
    }

    public static float nextFloat(float f, float f1)
    {
        boolean flag = true;
        boolean flag1;
        if (f1 >= f)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "Start value must be smaller or equal to end value.", new Object[0]);
        if (f < 0.0F)
        {
            flag = false;
        }
        Validate.isTrue(flag, "Both range values must be non-negative.", new Object[0]);
        if (f == f1)
        {
            return f;
        } else
        {
            return f + (f1 - f) * RANDOM.nextFloat();
        }
    }

    public static int nextInt(int i, int j)
    {
        boolean flag = true;
        boolean flag1;
        if (j >= i)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "Start value must be smaller or equal to end value.", new Object[0]);
        if (i < 0)
        {
            flag = false;
        }
        Validate.isTrue(flag, "Both range values must be non-negative.", new Object[0]);
        if (i == j)
        {
            return i;
        } else
        {
            return i + RANDOM.nextInt(j - i);
        }
    }

    public static long nextLong(long l, long l1)
    {
        boolean flag = true;
        boolean flag1;
        if (l1 >= l)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "Start value must be smaller or equal to end value.", new Object[0]);
        if (l < 0L)
        {
            flag = false;
        }
        Validate.isTrue(flag, "Both range values must be non-negative.", new Object[0]);
        if (l == l1)
        {
            return l;
        } else
        {
            return (long)nextDouble(l, l1);
        }
    }

}
