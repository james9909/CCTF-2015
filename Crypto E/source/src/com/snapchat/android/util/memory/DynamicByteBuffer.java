// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.memory;

import com.snapchat.android.Timber;
import java.io.InputStream;

// Referenced classes of package com.snapchat.android.util.memory:
//            Buffer

public class DynamicByteBuffer
    implements Buffer
{
    public static interface ExpansionStrategy
    {

        public abstract int a(int i);
    }

    public static class LinearExpansionStrategy
        implements ExpansionStrategy
    {

        private final int a;

        public int a(int i)
        {
            return i + a;
        }

        public LinearExpansionStrategy(int i)
        {
            a = i;
        }
    }


    private final ExpansionStrategy a;
    private byte b[];
    private int c;

    public DynamicByteBuffer(int i)
    {
        this(i, ((ExpansionStrategy) (new LinearExpansionStrategy(i))));
    }

    public DynamicByteBuffer(int i, ExpansionStrategy expansionstrategy)
    {
        c = 0;
        a = expansionstrategy;
        b = new byte[i];
    }

    public int a()
    {
        return c;
    }

    public int a(InputStream inputstream)
    {
        int i = b.length;
        int j = 0;
        do
        {
            int k = inputstream.read(b, j, i);
            if (k == -1)
            {
                break;
            }
            i -= k;
            j += k;
            if (i < 0)
            {
                Object aobj2[] = new Object[1];
                aobj2[0] = Integer.valueOf(i);
                throw new IllegalStateException(String.format("AvailableSize (%d) should not be less than 0!", aobj2));
            }
            if (i == 0)
            {
                int l = a.a(b.length);
                i = l - b.length;
                Object aobj[] = new Object[3];
                aobj[0] = toString();
                aobj[1] = Integer.valueOf(b.length);
                aobj[2] = Integer.valueOf(l);
                Timber.c("DynamicByteBuffer", "Increasing dynamic byte buffer (%s) size from %d to %d bytes", aobj);
                byte abyte0[];
                try
                {
                    abyte0 = new byte[l];
                }
                catch (OutOfMemoryError outofmemoryerror)
                {
                    Object aobj1[] = new Object[1];
                    aobj1[0] = Integer.valueOf(l);
                    Timber.e("DynamicByteBuffer", "Out of memory exception caught while trying to allocated %d bytes. Running GC then trying again.", aobj1);
                    System.gc();
                    abyte0 = new byte[l];
                }
                System.arraycopy(b, 0, abyte0, 0, b.length);
                b = abyte0;
            }
        } while (true);
        c = j;
        return c;
    }

    public byte[] b()
    {
        return b;
    }
}
