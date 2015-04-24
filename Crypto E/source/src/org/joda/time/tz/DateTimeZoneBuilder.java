// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.joda.time.tz;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.chrono.ISOChronology;

// Referenced classes of package org.joda.time.tz:
//            FixedDateTimeZone, CachedDateTimeZone

public class DateTimeZoneBuilder
{
    static final class DSTZone extends DateTimeZone
    {

        final int b;
        final Recurrence c;
        final Recurrence d;

        static DSTZone a(DataInput datainput, String s)
        {
            return new DSTZone(s, (int)DateTimeZoneBuilder.a(datainput), Recurrence.a(datainput), Recurrence.a(datainput));
        }

        private Recurrence g(long l)
        {
            int i;
            Recurrence recurrence;
            Recurrence recurrence1;
            i = b;
            recurrence = c;
            recurrence1 = d;
            long l3 = recurrence.a(l, i, recurrence1.b());
            long l1 = l3;
_L1:
            long l2 = recurrence1.a(l, i, recurrence.b());
            l = l2;
_L2:
            ArithmeticException arithmeticexception;
            IllegalArgumentException illegalargumentexception1;
            if (l1 > l)
            {
                return recurrence;
            } else
            {
                return recurrence1;
            }
            illegalargumentexception1;
            l1 = l;
              goto _L1
            arithmeticexception;
            l1 = l;
              goto _L1
            ArithmeticException arithmeticexception1;
            arithmeticexception1;
              goto _L2
            IllegalArgumentException illegalargumentexception;
            illegalargumentexception;
              goto _L2
        }

        public String a(long l)
        {
            return g(l).a();
        }

        public int b(long l)
        {
            return b + g(l).b();
        }

        public boolean d()
        {
            return false;
        }

        public long e(long l)
        {
            int i;
            Recurrence recurrence;
            Recurrence recurrence1;
            i = b;
            recurrence = c;
            recurrence1 = d;
            long l4 = recurrence.a(l, i, recurrence1.b());
            long l1;
            long l5 = l4;
            if (l > 0L && l5 < 0L)
            {
                l5 = l;
            }
            l1 = l5;
_L2:
label0:
            {
                ArithmeticException arithmeticexception;
                long l2;
                long l3;
                IllegalArgumentException illegalargumentexception1;
                try
                {
                    l3 = recurrence1.a(l, i, recurrence.b());
                }
                catch (IllegalArgumentException illegalargumentexception)
                {
                    l2 = l;
                    break label0;
                }
                catch (ArithmeticException arithmeticexception1)
                {
                    l2 = l;
                    break label0;
                }
                if (l <= 0L || l3 >= 0L)
                {
                    l = l3;
                }
                l2 = l;
            }
            if (l1 > l2)
            {
                return l2;
            } else
            {
                return l1;
            }
            illegalargumentexception1;
            l1 = l;
            continue; /* Loop/switch isn't completed */
            arithmeticexception;
            l1 = l;
            if (true) goto _L2; else goto _L1
_L1:
        }

        public boolean equals(Object obj)
        {
            DSTZone dstzone;
            if (this != obj)
            {
                if (obj instanceof DSTZone)
                {
                    if (!c().equals((dstzone = (DSTZone)obj).c()) || b != dstzone.b || !c.equals(dstzone.c) || !d.equals(dstzone.d))
                    {
                        return false;
                    }
                } else
                {
                    return false;
                }
            }
            return true;
        }

        public long f(long l)
        {
            long l1;
            int i;
            Recurrence recurrence;
            Recurrence recurrence1;
            l1 = l + 1L;
            i = b;
            recurrence = c;
            recurrence1 = d;
            long l5 = recurrence.b(l1, i, recurrence1.b());
            long l2;
            long l6 = l5;
            if (l1 < 0L && l6 > 0L)
            {
                l6 = l1;
            }
            l2 = l6;
_L2:
label0:
            {
                ArithmeticException arithmeticexception;
                long l3;
                long l4;
                IllegalArgumentException illegalargumentexception1;
                try
                {
                    l4 = recurrence1.b(l1, i, recurrence.b());
                }
                catch (IllegalArgumentException illegalargumentexception)
                {
                    l3 = l1;
                    break label0;
                }
                catch (ArithmeticException arithmeticexception1)
                {
                    l3 = l1;
                    break label0;
                }
                if (l1 >= 0L || l4 <= 0L)
                {
                    l1 = l4;
                }
                l3 = l1;
            }
            if (l2 > l3)
            {
                l3 = l2;
            }
            return l3 - 1L;
            illegalargumentexception1;
            l2 = l1;
            continue; /* Loop/switch isn't completed */
            arithmeticexception;
            l2 = l1;
            if (true) goto _L2; else goto _L1
_L1:
        }

        DSTZone(String s, int i, Recurrence recurrence, Recurrence recurrence1)
        {
            super(s);
            b = i;
            c = recurrence;
            d = recurrence1;
        }
    }

    static final class OfYear
    {

        final char a;
        final int b;
        final int c;
        final int d;
        final boolean e;
        final int f;

        private long a(Chronology chronology, long l)
        {
            long l1;
            try
            {
                l1 = c(chronology, l);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                if (b == 2 && c == 29)
                {
                    for (; !chronology.E().b(l); l = chronology.E().a(l, 1)) { }
                    return c(chronology, l);
                } else
                {
                    throw illegalargumentexception;
                }
            }
            return l1;
        }

        static OfYear a(DataInput datainput)
        {
            return new OfYear((char)datainput.readUnsignedByte(), datainput.readUnsignedByte(), datainput.readByte(), datainput.readUnsignedByte(), datainput.readBoolean(), (int)DateTimeZoneBuilder.a(datainput));
        }

        private long b(Chronology chronology, long l)
        {
            long l1;
            try
            {
                l1 = c(chronology, l);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                if (b == 2 && c == 29)
                {
                    for (; !chronology.E().b(l); l = chronology.E().a(l, -1)) { }
                    return c(chronology, l);
                } else
                {
                    throw illegalargumentexception;
                }
            }
            return l1;
        }

        private long c(Chronology chronology, long l)
        {
            if (c >= 0)
            {
                return chronology.u().b(l, c);
            } else
            {
                long l1 = chronology.u().b(l, 1);
                long l2 = chronology.C().a(l1, 1);
                return chronology.u().a(l2, c);
            }
        }

        private long d(Chronology chronology, long l)
        {
            int j;
            int i = chronology.t().a(l);
            j = d - i;
            if (j == 0) goto _L2; else goto _L1
_L1:
            if (!e) goto _L4; else goto _L3
_L3:
            if (j < 0)
            {
                j += 7;
            }
_L6:
            l = chronology.t().a(l, j);
_L2:
            return l;
_L4:
            if (j > 0)
            {
                j -= 7;
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        public long a(long l, int i, int j)
        {
            long l1;
            ISOChronology isochronology;
            long l2;
            long l3;
            long l4;
            if (a == 'w')
            {
                i += j;
            } else
            if (a != 's')
            {
                i = 0;
            }
            l1 = l + (long)i;
            isochronology = ISOChronology.N();
            l2 = isochronology.C().b(l1, b);
            l3 = isochronology.e().b(l2, 0);
            l4 = a(((Chronology) (isochronology)), isochronology.e().a(l3, f));
            if (d == 0)
            {
                if (l4 <= l1)
                {
                    l4 = a(((Chronology) (isochronology)), isochronology.E().a(l4, 1));
                }
            } else
            {
                l4 = d(isochronology, l4);
                if (l4 <= l1)
                {
                    long l5 = isochronology.E().a(l4, 1);
                    l4 = d(isochronology, a(((Chronology) (isochronology)), isochronology.C().b(l5, b)));
                }
            }
            return l4 - (long)i;
        }

        public long b(long l, int i, int j)
        {
            long l1;
            ISOChronology isochronology;
            long l2;
            long l3;
            long l4;
            if (a == 'w')
            {
                i += j;
            } else
            if (a != 's')
            {
                i = 0;
            }
            l1 = l + (long)i;
            isochronology = ISOChronology.N();
            l2 = isochronology.C().b(l1, b);
            l3 = isochronology.e().b(l2, 0);
            l4 = b(((Chronology) (isochronology)), isochronology.e().a(l3, f));
            if (d == 0)
            {
                if (l4 >= l1)
                {
                    l4 = b(((Chronology) (isochronology)), isochronology.E().a(l4, -1));
                }
            } else
            {
                l4 = d(isochronology, l4);
                if (l4 >= l1)
                {
                    long l5 = isochronology.E().a(l4, -1);
                    l4 = d(isochronology, b(((Chronology) (isochronology)), isochronology.C().b(l5, b)));
                }
            }
            return l4 - (long)i;
        }

        public boolean equals(Object obj)
        {
            OfYear ofyear;
            if (this != obj)
            {
                if (obj instanceof OfYear)
                {
                    if (a != (ofyear = (OfYear)obj).a || b != ofyear.b || c != ofyear.c || d != ofyear.d || e != ofyear.e || f != ofyear.f)
                    {
                        return false;
                    }
                } else
                {
                    return false;
                }
            }
            return true;
        }

        OfYear(char c1, int i, int j, int k, boolean flag, int l)
        {
            if (c1 != 'u' && c1 != 'w' && c1 != 's')
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Unknown mode: ").append(c1).toString());
            } else
            {
                a = c1;
                b = i;
                c = j;
                d = k;
                e = flag;
                f = l;
                return;
            }
        }
    }

    static final class PrecalculatedZone extends DateTimeZone
    {

        private final long b[];
        private final int c[];
        private final int d[];
        private final String e[];
        private final DSTZone f;

        static PrecalculatedZone a(DataInput datainput, String s)
        {
            int i;
            String as[];
            int k;
            long al[];
            int ai[];
            int ai1[];
            String as1[];
            int l;
            i = datainput.readUnsignedShort();
            as = new String[i];
            for (int j = 0; j < i; j++)
            {
                as[j] = datainput.readUTF();
            }

            k = datainput.readInt();
            al = new long[k];
            ai = new int[k];
            ai1 = new int[k];
            as1 = new String[k];
            l = 0;
_L3:
            if (l >= k)
            {
                break MISSING_BLOCK_LABEL_166;
            }
            al[l] = DateTimeZoneBuilder.a(datainput);
            ai[l] = (int)DateTimeZoneBuilder.a(datainput);
            ai1[l] = (int)DateTimeZoneBuilder.a(datainput);
            if (i >= 256)
            {
                break MISSING_BLOCK_LABEL_139;
            }
            int j1 = datainput.readUnsignedByte();
_L1:
            as1[l] = as[j1];
            l++;
            continue; /* Loop/switch isn't completed */
            int i1;
            try
            {
                i1 = datainput.readUnsignedShort();
            }
            catch (ArrayIndexOutOfBoundsException arrayindexoutofboundsexception)
            {
                throw new IOException("Invalid encoding");
            }
            j1 = i1;
              goto _L1
            boolean flag = datainput.readBoolean();
            DSTZone dstzone = null;
            if (flag)
            {
                dstzone = DSTZone.a(datainput, s);
            }
            return new PrecalculatedZone(s, al, ai, ai1, as1, dstzone);
            if (true) goto _L3; else goto _L2
_L2:
        }

        public String a(long l)
        {
            long al[] = b;
            int i = Arrays.binarySearch(al, l);
            if (i >= 0)
            {
                return e[i];
            }
            int j = ~i;
            if (j < al.length)
            {
                if (j > 0)
                {
                    return e[j - 1];
                } else
                {
                    return "UTC";
                }
            }
            if (f == null)
            {
                return e[j - 1];
            } else
            {
                return f.a(l);
            }
        }

        public int b(long l)
        {
            long al[] = b;
            int i = Arrays.binarySearch(al, l);
            if (i >= 0)
            {
                return c[i];
            }
            int j = ~i;
            if (j < al.length)
            {
                if (j > 0)
                {
                    return c[j - 1];
                } else
                {
                    return 0;
                }
            }
            if (f == null)
            {
                return c[j - 1];
            } else
            {
                return f.b(l);
            }
        }

        public boolean d()
        {
            return false;
        }

        public long e(long l)
        {
            long al[] = b;
            int i = Arrays.binarySearch(al, l);
            int j;
            if (i >= 0)
            {
                j = i + 1;
            } else
            {
                j = ~i;
            }
            if (j < al.length)
            {
                l = al[j];
            } else
            if (f != null)
            {
                long l1 = al[-1 + al.length];
                if (l < l1)
                {
                    l = l1;
                }
                return f.e(l);
            }
            return l;
        }

        public boolean equals(Object obj)
        {
            if (this != obj) goto _L2; else goto _L1
_L1:
            return true;
_L2:
            PrecalculatedZone precalculatedzone;
            if (!(obj instanceof PrecalculatedZone))
            {
                break MISSING_BLOCK_LABEL_121;
            }
            precalculatedzone = (PrecalculatedZone)obj;
            if (!c().equals(precalculatedzone.c()) || !Arrays.equals(b, precalculatedzone.b) || !Arrays.equals(e, precalculatedzone.e) || !Arrays.equals(c, precalculatedzone.c) || !Arrays.equals(d, precalculatedzone.d))
            {
                break; /* Loop/switch isn't completed */
            }
            if (f != null) goto _L4; else goto _L3
_L3:
            if (precalculatedzone.f == null) goto _L1; else goto _L5
_L5:
            return false;
_L4:
            if (!f.equals(precalculatedzone.f)) goto _L5; else goto _L6
_L6:
            return true;
            return false;
        }

        public long f(long l)
        {
            long al[];
            int i;
            al = b;
            i = Arrays.binarySearch(al, l);
            if (i < 0) goto _L2; else goto _L1
_L1:
            if (l > 0x8000000000000000L)
            {
                l--;
            }
_L4:
            return l;
_L2:
            int j;
            j = ~i;
            if (j >= al.length)
            {
                break; /* Loop/switch isn't completed */
            }
            if (j > 0)
            {
                long l3 = al[j - 1];
                if (l3 > 0x8000000000000000L)
                {
                    return l3 - 1L;
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
            if (f != null)
            {
                long l2 = f.f(l);
                if (l2 < l)
                {
                    return l2;
                }
            }
            long l1 = al[j - 1];
            if (l1 > 0x8000000000000000L)
            {
                return l1 - 1L;
            }
            if (true) goto _L4; else goto _L5
_L5:
        }

        private PrecalculatedZone(String s, long al[], int ai[], int ai1[], String as[], DSTZone dstzone)
        {
            super(s);
            b = al;
            c = ai;
            d = ai1;
            e = as;
            f = dstzone;
        }
    }

    static final class Recurrence
    {

        final OfYear a;
        final String b;
        final int c;

        static Recurrence a(DataInput datainput)
        {
            return new Recurrence(OfYear.a(datainput), datainput.readUTF(), (int)DateTimeZoneBuilder.a(datainput));
        }

        public long a(long l, int i, int j)
        {
            return a.a(l, i, j);
        }

        public String a()
        {
            return b;
        }

        public int b()
        {
            return c;
        }

        public long b(long l, int i, int j)
        {
            return a.b(l, i, j);
        }

        public boolean equals(Object obj)
        {
            Recurrence recurrence;
            if (this != obj)
            {
                if (obj instanceof Recurrence)
                {
                    if (c != (recurrence = (Recurrence)obj).c || !b.equals(recurrence.b) || !a.equals(recurrence.a))
                    {
                        return false;
                    }
                } else
                {
                    return false;
                }
            }
            return true;
        }

        Recurrence(OfYear ofyear, String s, int i)
        {
            a = ofyear;
            b = s;
            c = i;
        }
    }

    static final class Rule
    {
    }

    static final class RuleSet
    {

        private static final int a;
        private ArrayList b;
        private int c;

        static 
        {
            long l = DateTimeUtils.a();
            a = 100 + ISOChronology.N().E().a(l);
        }

        RuleSet()
        {
            b = new ArrayList(10);
            c = 0x7fffffff;
        }
    }

    static final class Transition
    {
    }


    private final ArrayList a = new ArrayList(10);

    public DateTimeZoneBuilder()
    {
    }

    static long a(DataInput datainput)
    {
        int i = datainput.readUnsignedByte();
        switch (i >> 6)
        {
        default:
            return 0x1b7740L * (long)((i << 26) >> 26);

        case 1: // '\001'
            return 60000L * (long)((i << 26) >> 2 | datainput.readUnsignedByte() << 16 | datainput.readUnsignedByte() << 8 | datainput.readUnsignedByte());

        case 2: // '\002'
            return 1000L * (((long)i << 58) >> 26 | (long)(datainput.readUnsignedByte() << 24) | (long)(datainput.readUnsignedByte() << 16) | (long)(datainput.readUnsignedByte() << 8) | (long)datainput.readUnsignedByte());

        case 3: // '\003'
            return datainput.readLong();
        }
    }

    public static DateTimeZone a(DataInput datainput, String s)
    {
        switch (datainput.readUnsignedByte())
        {
        default:
            throw new IOException("Invalid encoding");

        case 70: // 'F'
            Object obj = new FixedDateTimeZone(s, datainput.readUTF(), (int)a(datainput), (int)a(datainput));
            if (((DateTimeZone) (obj)).equals(DateTimeZone.a))
            {
                obj = DateTimeZone.a;
            }
            return ((DateTimeZone) (obj));

        case 67: // 'C'
            return CachedDateTimeZone.a(PrecalculatedZone.a(datainput, s));

        case 80: // 'P'
            return PrecalculatedZone.a(datainput, s);
        }
    }

    public static DateTimeZone a(InputStream inputstream, String s)
    {
        if (inputstream instanceof DataInput)
        {
            return a((DataInput)inputstream, s);
        } else
        {
            return a(((DataInput) (new DataInputStream(inputstream))), s);
        }
    }
}
