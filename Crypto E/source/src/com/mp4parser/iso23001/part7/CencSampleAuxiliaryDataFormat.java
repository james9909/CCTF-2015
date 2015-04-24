// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso23001.part7;

import com.coremedia.iso.Hex;
import java.math.BigInteger;
import java.util.Arrays;

public class CencSampleAuxiliaryDataFormat
{
    abstract class AbstractPair
        implements Pair
    {

        final CencSampleAuxiliaryDataFormat a;

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null || getClass() != obj.getClass())
                {
                    return false;
                }
                Pair pair = (Pair)obj;
                if (a() != pair.a())
                {
                    return false;
                }
                if (b() != pair.b())
                {
                    return false;
                }
            }
            return true;
        }

        public String toString()
        {
            return (new StringBuilder("P(")).append(a()).append("|").append(b()).append(")").toString();
        }

        private AbstractPair()
        {
            a = CencSampleAuxiliaryDataFormat.this;
            super();
        }

        AbstractPair(AbstractPair abstractpair)
        {
            this();
        }
    }

    class ByteBytePair extends AbstractPair
    {

        final CencSampleAuxiliaryDataFormat b;
        private byte c;
        private byte d;

        public int a()
        {
            return c;
        }

        public long b()
        {
            return (long)d;
        }

        public ByteBytePair(int i, long l)
        {
            b = CencSampleAuxiliaryDataFormat.this;
            super(null);
            c = (byte)i;
            d = (byte)(int)l;
        }
    }

    class ByteIntPair extends AbstractPair
    {

        final CencSampleAuxiliaryDataFormat b;
        private byte c;
        private int d;

        public int a()
        {
            return c;
        }

        public long b()
        {
            return (long)d;
        }

        public ByteIntPair(int i, long l)
        {
            b = CencSampleAuxiliaryDataFormat.this;
            super(null);
            c = (byte)i;
            d = (int)l;
        }
    }

    class ByteLongPair extends AbstractPair
    {

        final CencSampleAuxiliaryDataFormat b;
        private byte c;
        private long d;

        public int a()
        {
            return c;
        }

        public long b()
        {
            return d;
        }

        public ByteLongPair(int i, long l)
        {
            b = CencSampleAuxiliaryDataFormat.this;
            super(null);
            c = (byte)i;
            d = l;
        }
    }

    class ByteShortPair extends AbstractPair
    {

        final CencSampleAuxiliaryDataFormat b;
        private byte c;
        private short d;

        public int a()
        {
            return c;
        }

        public long b()
        {
            return (long)d;
        }

        public ByteShortPair(int i, long l)
        {
            b = CencSampleAuxiliaryDataFormat.this;
            super(null);
            c = (byte)i;
            d = (short)(int)l;
        }
    }

    class IntBytePair extends AbstractPair
    {

        final CencSampleAuxiliaryDataFormat b;
        private int c;
        private byte d;

        public int a()
        {
            return c;
        }

        public long b()
        {
            return (long)d;
        }

        public IntBytePair(int i, long l)
        {
            b = CencSampleAuxiliaryDataFormat.this;
            super(null);
            c = i;
            d = (byte)(int)l;
        }
    }

    class IntIntPair extends AbstractPair
    {

        final CencSampleAuxiliaryDataFormat b;
        private int c;
        private int d;

        public int a()
        {
            return c;
        }

        public long b()
        {
            return (long)d;
        }

        public IntIntPair(int i, long l)
        {
            b = CencSampleAuxiliaryDataFormat.this;
            super(null);
            c = i;
            d = (int)l;
        }
    }

    class IntLongPair extends AbstractPair
    {

        final CencSampleAuxiliaryDataFormat b;
        private int c;
        private long d;

        public int a()
        {
            return c;
        }

        public long b()
        {
            return d;
        }

        public IntLongPair(int i, long l)
        {
            b = CencSampleAuxiliaryDataFormat.this;
            super(null);
            c = i;
            d = l;
        }
    }

    class IntShortPair extends AbstractPair
    {

        final CencSampleAuxiliaryDataFormat b;
        private int c;
        private short d;

        public int a()
        {
            return c;
        }

        public long b()
        {
            return (long)d;
        }

        public IntShortPair(int i, long l)
        {
            b = CencSampleAuxiliaryDataFormat.this;
            super(null);
            c = i;
            d = (short)(int)l;
        }
    }

    public static interface Pair
    {

        public abstract int a();

        public abstract long b();
    }

    class ShortBytePair extends AbstractPair
    {

        final CencSampleAuxiliaryDataFormat b;
        private short c;
        private byte d;

        public int a()
        {
            return c;
        }

        public long b()
        {
            return (long)d;
        }

        public ShortBytePair(int i, long l)
        {
            b = CencSampleAuxiliaryDataFormat.this;
            super(null);
            c = (short)i;
            d = (byte)(int)l;
        }
    }

    class ShortIntPair extends AbstractPair
    {

        final CencSampleAuxiliaryDataFormat b;
        private short c;
        private int d;

        public int a()
        {
            return c;
        }

        public long b()
        {
            return (long)d;
        }

        public ShortIntPair(int i, long l)
        {
            b = CencSampleAuxiliaryDataFormat.this;
            super(null);
            c = (short)i;
            d = (int)l;
        }
    }

    class ShortLongPair extends AbstractPair
    {

        final CencSampleAuxiliaryDataFormat b;
        private short c;
        private long d;

        public int a()
        {
            return c;
        }

        public long b()
        {
            return d;
        }

        public ShortLongPair(int i, long l)
        {
            b = CencSampleAuxiliaryDataFormat.this;
            super(null);
            c = (short)i;
            d = l;
        }
    }

    class ShortShortPair extends AbstractPair
    {

        final CencSampleAuxiliaryDataFormat b;
        private short c;
        private short d;

        public int a()
        {
            return c;
        }

        public long b()
        {
            return (long)d;
        }

        public ShortShortPair(int i, long l)
        {
            b = CencSampleAuxiliaryDataFormat.this;
            super(null);
            c = (short)i;
            d = (short)(int)l;
        }
    }


    public byte a[];
    public Pair b[];

    public CencSampleAuxiliaryDataFormat()
    {
        a = new byte[0];
        b = null;
    }

    public int a()
    {
        int i = a.length;
        if (b != null && b.length > 0)
        {
            i = i + 2 + 6 * b.length;
        }
        return i;
    }

    public Pair a(int i, long l)
    {
        if (i <= 127)
        {
            if (l <= 127L)
            {
                return new ByteBytePair(i, l);
            }
            if (l <= 32767L)
            {
                return new ByteShortPair(i, l);
            }
            if (l <= 0x7fffffffL)
            {
                return new ByteIntPair(i, l);
            } else
            {
                return new ByteLongPair(i, l);
            }
        }
        if (i <= 32767)
        {
            if (l <= 127L)
            {
                return new ShortBytePair(i, l);
            }
            if (l <= 32767L)
            {
                return new ShortShortPair(i, l);
            }
            if (l <= 0x7fffffffL)
            {
                return new ShortIntPair(i, l);
            } else
            {
                return new ShortLongPair(i, l);
            }
        }
        if (l <= 127L)
        {
            return new IntBytePair(i, l);
        }
        if (l <= 32767L)
        {
            return new IntShortPair(i, l);
        }
        if (l <= 0x7fffffffL)
        {
            return new IntIntPair(i, l);
        } else
        {
            return new IntLongPair(i, l);
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            CencSampleAuxiliaryDataFormat cencsampleauxiliarydataformat = (CencSampleAuxiliaryDataFormat)obj;
            if (!(new BigInteger(a)).equals(new BigInteger(cencsampleauxiliarydataformat.a)))
            {
                return false;
            }
            if (b == null ? cencsampleauxiliarydataformat.b != null : !Arrays.equals(b, cencsampleauxiliarydataformat.b))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i;
        int j;
        Pair apair[];
        int k;
        if (a != null)
        {
            i = Arrays.hashCode(a);
        } else
        {
            i = 0;
        }
        j = i * 31;
        apair = b;
        k = 0;
        if (apair != null)
        {
            k = Arrays.hashCode(b);
        }
        return j + k;
    }

    public String toString()
    {
        return (new StringBuilder("Entry{iv=")).append(Hex.a(a)).append(", pairs=").append(Arrays.toString(b)).append('}').toString();
    }
}
