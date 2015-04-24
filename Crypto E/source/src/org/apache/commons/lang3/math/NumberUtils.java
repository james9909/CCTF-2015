// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.math;

import java.lang.reflect.Array;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.apache.commons.lang3.StringUtils;

public class NumberUtils
{

    public static final Byte BYTE_MINUS_ONE = Byte.valueOf((byte)-1);
    public static final Byte BYTE_ONE = Byte.valueOf((byte)1);
    public static final Byte BYTE_ZERO = Byte.valueOf((byte)0);
    public static final Double DOUBLE_MINUS_ONE = Double.valueOf(-1D);
    public static final Double DOUBLE_ONE = Double.valueOf(1.0D);
    public static final Double DOUBLE_ZERO = Double.valueOf(0.0D);
    public static final Float FLOAT_MINUS_ONE = Float.valueOf(-1F);
    public static final Float FLOAT_ONE = Float.valueOf(1.0F);
    public static final Float FLOAT_ZERO = Float.valueOf(0.0F);
    public static final Integer INTEGER_MINUS_ONE = Integer.valueOf(-1);
    public static final Integer INTEGER_ONE = Integer.valueOf(1);
    public static final Integer INTEGER_ZERO = Integer.valueOf(0);
    public static final Long LONG_MINUS_ONE = Long.valueOf(-1L);
    public static final Long LONG_ONE = Long.valueOf(1L);
    public static final Long LONG_ZERO = Long.valueOf(0L);
    public static final Short SHORT_MINUS_ONE = Short.valueOf((short)-1);
    public static final Short SHORT_ONE = Short.valueOf((short)1);
    public static final Short SHORT_ZERO = Short.valueOf((short)0);

    public NumberUtils()
    {
    }

    public static BigDecimal createBigDecimal(String s)
    {
        if (s == null)
        {
            return null;
        }
        if (StringUtils.isBlank(s))
        {
            throw new NumberFormatException("A blank string is not a valid number");
        }
        if (s.trim().startsWith("--"))
        {
            throw new NumberFormatException((new StringBuilder()).append(s).append(" is not a valid number.").toString());
        } else
        {
            return new BigDecimal(s);
        }
    }

    public static BigInteger createBigInteger(String s)
    {
        boolean flag = true;
        if (s == null)
        {
            return null;
        }
        int i;
        int j;
        byte byte0;
        BigInteger biginteger;
        if (s.startsWith("-"))
        {
            i = ((flag) ? 1 : 0);
        } else
        {
            flag = false;
            i = 0;
        }
        if (s.startsWith("0x", i) || s.startsWith("0x", i))
        {
            j = i + 2;
            byte0 = 16;
        } else
        if (s.startsWith("#", i))
        {
            j = i + 1;
            byte0 = 16;
        } else
        if (s.startsWith("0", i) && s.length() > i + 1)
        {
            j = i + 1;
            byte0 = 8;
        } else
        {
            j = i;
            byte0 = 10;
        }
        biginteger = new BigInteger(s.substring(j), byte0);
        if (flag)
        {
            return biginteger.negate();
        } else
        {
            return biginteger;
        }
    }

    public static Double createDouble(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return Double.valueOf(s);
        }
    }

    public static Float createFloat(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return Float.valueOf(s);
        }
    }

    public static Integer createInteger(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return Integer.decode(s);
        }
    }

    public static Long createLong(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return Long.decode(s);
        }
    }

    public static Number createNumber(String s)
    {
        char c;
        Object obj;
        c = '\0';
        obj = null;
        if (s != null) goto _L2; else goto _L1
_L1:
        return ((Number) (obj));
_L13:
        if (k > 0)
        {
            int j2 = k;
            do
            {
                if (k >= s.length())
                {
                    break;
                }
                c = s.charAt(k);
                if (c != '0')
                {
                    break;
                }
                j2++;
                k++;
            } while (true);
            int k2 = s.length() - j2;
            if (k2 > 16 || k2 == 16 && c > '7')
            {
                return createBigInteger(s);
            }
            if (k2 > 8 || k2 == 8 && c > '7')
            {
                return createLong(s);
            } else
            {
                return createInteger(s);
            }
        }
        char c1 = s.charAt(-1 + s.length());
        int l = s.indexOf('.');
        i1 = 1 + (s.indexOf('e') + s.indexOf('E'));
        if (l > -1)
        {
            int l1;
            String s7;
            int i2;
            if (i1 > -1)
            {
                if (i1 < l || i1 > s.length())
                {
                    throw new NumberFormatException((new StringBuilder()).append(s).append(" is not a valid number.").toString());
                }
                s7 = s.substring(l + 1, i1);
            } else
            {
                s7 = s.substring(l + 1);
            }
            s2 = s.substring(0, l);
            i2 = s7.length();
            s3 = s7;
            j1 = i2;
        } else
        {
            String s1;
            if (i1 > -1)
            {
                if (i1 > s.length())
                {
                    throw new NumberFormatException((new StringBuilder()).append(s).append(" is not a valid number.").toString());
                }
                s1 = s.substring(0, i1);
            } else
            {
                s1 = s;
            }
            s2 = s1;
            j1 = 0;
            s3 = null;
        }
        if (Character.isDigit(c1) || c1 == '.') goto _L4; else goto _L3
_L3:
        s5 = null;
        if (i1 > -1)
        {
            l1 = -1 + s.length();
            s5 = null;
            if (i1 < l1)
            {
                s5 = s.substring(i1 + 1, -1 + s.length());
            }
        }
        s6 = s.substring(0, -1 + s.length());
        if (isAllZeros(s2) && isAllZeros(s5))
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        c1;
        JVM INSTR lookupswitch 6: default 488
    //                   68: 721
    //                   70: 690
    //                   76: 604
    //                   100: 721
    //                   102: 690
    //                   108: 604;
           goto _L5 _L6 _L7 _L8 _L6 _L7 _L8
_L6:
        break; /* Loop/switch isn't completed */
_L5:
        throw new NumberFormatException((new StringBuilder()).append(s).append(" is not a valid number.").toString());
_L8:
        if (s3 == null && s5 == null && (s6.charAt(0) == '-' && isDigits(s6.substring(1)) || isDigits(s6)))
        {
            Long long2;
            try
            {
                long2 = createLong(s6);
            }
            catch (NumberFormatException numberformatexception7)
            {
                return createBigInteger(s6);
            }
            return long2;
        } else
        {
            throw new NumberFormatException((new StringBuilder()).append(s).append(" is not a valid number.").toString());
        }
_L7:
        obj = createFloat(s6);
        if (((Float) (obj)).isInfinite())
        {
            break; /* Loop/switch isn't completed */
        }
        f2 = ((Float) (obj)).floatValue();
        if (f2 != 0.0F || flag3) goto _L1; else goto _L9
_L9:
        obj = createDouble(s6);
        if (((Double) (obj)).isInfinite())
        {
            break; /* Loop/switch isn't completed */
        }
        f1 = ((Double) (obj)).floatValue();
        if ((double)f1 != 0.0D || flag3) goto _L1; else goto _L10
_L10:
        bigdecimal = createBigDecimal(s6);
        return bigdecimal;
_L4:
        String s4 = null;
        if (i1 > -1)
        {
            int k1 = -1 + s.length();
            s4 = null;
            if (i1 < k1)
            {
                s4 = s.substring(i1 + 1, s.length());
            }
        }
        if (s3 == null && s4 == null)
        {
            Integer integer;
            try
            {
                integer = createInteger(s);
            }
            catch (NumberFormatException numberformatexception2)
            {
                Long long1;
                try
                {
                    long1 = createLong(s);
                }
                catch (NumberFormatException numberformatexception3)
                {
                    return createBigInteger(s);
                }
                return long1;
            }
            return integer;
        }
        boolean flag = isAllZeros(s2);
        flag1 = false;
        if (flag)
        {
            boolean flag2 = isAllZeros(s4);
            flag1 = false;
            if (flag2)
            {
                flag1 = true;
            }
        }
        if (j1 > 7)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = createFloat(s);
        if (((Float) (obj)).isInfinite())
        {
            break; /* Loop/switch isn't completed */
        }
        f = ((Float) (obj)).floatValue();
        if (f != 0.0F || flag1) goto _L1; else goto _L11
_L11:
        if (j1 > 16)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = createDouble(s);
        if (((Double) (obj)).isInfinite())
        {
            break; /* Loop/switch isn't completed */
        }
        d = ((Double) (obj)).doubleValue();
        if (d != 0.0D || flag1) goto _L1; else goto _L12
_L12:
        return createBigDecimal(s);
        numberformatexception5;
          goto _L5
        numberformatexception;
          goto _L12
        numberformatexception1;
          goto _L11
        numberformatexception4;
          goto _L10
        NumberFormatException numberformatexception6;
        numberformatexception6;
          goto _L9
_L2:
        if (StringUtils.isBlank(s))
        {
            throw new NumberFormatException("A blank string is not a valid number");
        }
        String as[] = {
            "0x", "0X", "-0x", "-0X", "#", "-#"
        };
        int i = as.length;
        int k;
        int i1;
        String s2;
        int j1;
        String s3;
        boolean flag1;
        NumberFormatException numberformatexception;
        double d;
        NumberFormatException numberformatexception1;
        float f;
        String s5;
        String s6;
        boolean flag3;
        NumberFormatException numberformatexception4;
        NumberFormatException numberformatexception5;
        BigDecimal bigdecimal;
        float f1;
        float f2;
        for (int j = 0; j < i; j++)
        {
            String s8 = as[j];
            if (s.startsWith(s8))
            {
                k = 0 + s8.length();
                break MISSING_BLOCK_LABEL_101;
            }
        }

        k = 0;
          goto _L13
    }

    private static boolean isAllZeros(String s)
    {
        if (s != null)
        {
            for (int i = -1 + s.length(); i >= 0; i--)
            {
                if (s.charAt(i) != '0')
                {
                    return false;
                }
            }

            if (s.length() <= 0)
            {
                return false;
            }
        }
        return true;
    }

    public static boolean isDigits(String s)
    {
        if (!StringUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= s.length())
                {
                    break label1;
                }
                if (!Character.isDigit(s.charAt(i)))
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static boolean isNumber(String s)
    {
        boolean flag = true;
        if (!StringUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        char ac[];
        int k;
        int l;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        ac = s.toCharArray();
        int i = ac.length;
        int j;
        if (ac[0] == '-')
        {
            j = ((flag) ? 1 : 0);
        } else
        {
            j = 0;
        }
        if (i > j + 1 && ac[j] == '0')
        {
            if (ac[j + 1] == 'x' || ac[j + 1] == 'X')
            {
                int i1 = j + 2;
                if (i1 == i)
                {
                    continue; /* Loop/switch isn't completed */
                }
                for (; i1 < ac.length; i1++)
                {
                    if ((ac[i1] < '0' || ac[i1] > '9') && (ac[i1] < 'a' || ac[i1] > 'f') && (ac[i1] < 'A' || ac[i1] > 'F'))
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                }

                return flag;
            }
            if (Character.isDigit(ac[j + 1]))
            {
                for (int j1 = j + 1; j1 < ac.length; j1++)
                {
                    if (ac[j1] < '0' || ac[j1] > '7')
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                }

                return flag;
            }
        }
        k = i - 1;
        l = j;
        flag1 = false;
        flag2 = false;
        flag3 = false;
        flag4 = false;
_L3:
        if (l >= k && (l >= k + 1 || !flag1 || flag4))
        {
            break MISSING_BLOCK_LABEL_378;
        }
        if (ac[l] >= '0' && ac[l] <= '9')
        {
            flag4 = flag;
            flag1 = false;
        } else
        if (ac[l] == '.')
        {
            if (flag2 || flag3)
            {
                continue; /* Loop/switch isn't completed */
            }
            flag2 = flag;
        } else
        {
            if (ac[l] != 'e' && ac[l] != 'E')
            {
                continue; /* Loop/switch isn't completed */
            }
            if (flag3 || !flag4)
            {
                continue; /* Loop/switch isn't completed */
            }
            flag1 = flag;
            flag3 = flag;
        }
_L5:
        l++;
          goto _L3
        if (ac[l] != '+' && ac[l] != '-' || !flag1) goto _L1; else goto _L4
_L4:
        flag4 = false;
        flag1 = false;
          goto _L5
        if (l < ac.length)
        {
            if (ac[l] >= '0' && ac[l] <= '9')
            {
                return flag;
            }
            if (ac[l] != 'e' && ac[l] != 'E')
            {
                if (ac[l] == '.')
                {
                    if (!flag2 && !flag3)
                    {
                        return flag4;
                    }
                } else
                {
                    if (!flag1 && (ac[l] == 'd' || ac[l] == 'D' || ac[l] == 'f' || ac[l] == 'F'))
                    {
                        return flag4;
                    }
                    if (ac[l] == 'l' || ac[l] == 'L')
                    {
                        if (!flag4 || flag3 || flag2)
                        {
                            flag = false;
                        }
                        return flag;
                    }
                }
            }
        } else
        {
            if (flag1 || !flag4)
            {
                flag = false;
            }
            return flag;
        }
        if (true) goto _L1; else goto _L6
_L6:
    }

    public static byte max(byte byte0, byte byte1, byte byte2)
    {
        byte byte3;
        if (byte1 > byte0)
        {
            byte3 = byte1;
        } else
        {
            byte3 = byte0;
        }
        if (byte2 > byte3)
        {
            return byte2;
        } else
        {
            return byte3;
        }
    }

    public static byte max(byte abyte0[])
    {
        validateArray(abyte0);
        byte byte0 = abyte0[0];
        for (int i = 1; i < abyte0.length; i++)
        {
            if (abyte0[i] > byte0)
            {
                byte0 = abyte0[i];
            }
        }

        return byte0;
    }

    public static double max(double d, double d1, double d2)
    {
        return Math.max(Math.max(d, d1), d2);
    }

    public static double max(double ad[])
    {
        validateArray(ad);
        double d = ad[0];
        int i = 1;
        do
        {
label0:
            {
                if (i < ad.length)
                {
                    if (!Double.isNaN(ad[i]))
                    {
                        break label0;
                    }
                    d = (0.0D / 0.0D);
                }
                return d;
            }
            if (ad[i] > d)
            {
                d = ad[i];
            }
            i++;
        } while (true);
    }

    public static float max(float f, float f1, float f2)
    {
        return Math.max(Math.max(f, f1), f2);
    }

    public static float max(float af[])
    {
        validateArray(af);
        float f = af[0];
        int i = 1;
        do
        {
label0:
            {
                if (i < af.length)
                {
                    if (!Float.isNaN(af[i]))
                    {
                        break label0;
                    }
                    f = (0.0F / 0.0F);
                }
                return f;
            }
            if (af[i] > f)
            {
                f = af[i];
            }
            i++;
        } while (true);
    }

    public static int max(int i, int j, int k)
    {
        int l;
        if (j > i)
        {
            l = j;
        } else
        {
            l = i;
        }
        if (k > l)
        {
            return k;
        } else
        {
            return l;
        }
    }

    public static int max(int ai[])
    {
        validateArray(ai);
        int i = ai[0];
        for (int j = 1; j < ai.length; j++)
        {
            if (ai[j] > i)
            {
                i = ai[j];
            }
        }

        return i;
    }

    public static long max(long l, long l1, long l2)
    {
        long l3;
        if (l1 > l)
        {
            l3 = l1;
        } else
        {
            l3 = l;
        }
        if (l2 > l3)
        {
            return l2;
        } else
        {
            return l3;
        }
    }

    public static long max(long al[])
    {
        validateArray(al);
        long l = al[0];
        for (int i = 1; i < al.length; i++)
        {
            if (al[i] > l)
            {
                l = al[i];
            }
        }

        return l;
    }

    public static short max(short word0, short word1, short word2)
    {
        short word3;
        if (word1 > word0)
        {
            word3 = word1;
        } else
        {
            word3 = word0;
        }
        if (word2 > word3)
        {
            return word2;
        } else
        {
            return word3;
        }
    }

    public static short max(short aword0[])
    {
        validateArray(aword0);
        short word0 = aword0[0];
        for (int i = 1; i < aword0.length; i++)
        {
            if (aword0[i] > word0)
            {
                word0 = aword0[i];
            }
        }

        return word0;
    }

    public static byte min(byte byte0, byte byte1, byte byte2)
    {
        byte byte3;
        if (byte1 < byte0)
        {
            byte3 = byte1;
        } else
        {
            byte3 = byte0;
        }
        if (byte2 < byte3)
        {
            return byte2;
        } else
        {
            return byte3;
        }
    }

    public static byte min(byte abyte0[])
    {
        validateArray(abyte0);
        byte byte0 = abyte0[0];
        for (int i = 1; i < abyte0.length; i++)
        {
            if (abyte0[i] < byte0)
            {
                byte0 = abyte0[i];
            }
        }

        return byte0;
    }

    public static double min(double d, double d1, double d2)
    {
        return Math.min(Math.min(d, d1), d2);
    }

    public static double min(double ad[])
    {
        validateArray(ad);
        double d = ad[0];
        int i = 1;
        do
        {
label0:
            {
                if (i < ad.length)
                {
                    if (!Double.isNaN(ad[i]))
                    {
                        break label0;
                    }
                    d = (0.0D / 0.0D);
                }
                return d;
            }
            if (ad[i] < d)
            {
                d = ad[i];
            }
            i++;
        } while (true);
    }

    public static float min(float f, float f1, float f2)
    {
        return Math.min(Math.min(f, f1), f2);
    }

    public static float min(float af[])
    {
        validateArray(af);
        float f = af[0];
        int i = 1;
        do
        {
label0:
            {
                if (i < af.length)
                {
                    if (!Float.isNaN(af[i]))
                    {
                        break label0;
                    }
                    f = (0.0F / 0.0F);
                }
                return f;
            }
            if (af[i] < f)
            {
                f = af[i];
            }
            i++;
        } while (true);
    }

    public static int min(int i, int j, int k)
    {
        int l;
        if (j < i)
        {
            l = j;
        } else
        {
            l = i;
        }
        if (k < l)
        {
            return k;
        } else
        {
            return l;
        }
    }

    public static int min(int ai[])
    {
        validateArray(ai);
        int i = ai[0];
        for (int j = 1; j < ai.length; j++)
        {
            if (ai[j] < i)
            {
                i = ai[j];
            }
        }

        return i;
    }

    public static long min(long l, long l1, long l2)
    {
        long l3;
        if (l1 < l)
        {
            l3 = l1;
        } else
        {
            l3 = l;
        }
        if (l2 < l3)
        {
            return l2;
        } else
        {
            return l3;
        }
    }

    public static long min(long al[])
    {
        validateArray(al);
        long l = al[0];
        for (int i = 1; i < al.length; i++)
        {
            if (al[i] < l)
            {
                l = al[i];
            }
        }

        return l;
    }

    public static short min(short word0, short word1, short word2)
    {
        short word3;
        if (word1 < word0)
        {
            word3 = word1;
        } else
        {
            word3 = word0;
        }
        if (word2 < word3)
        {
            return word2;
        } else
        {
            return word3;
        }
    }

    public static short min(short aword0[])
    {
        validateArray(aword0);
        short word0 = aword0[0];
        for (int i = 1; i < aword0.length; i++)
        {
            if (aword0[i] < word0)
            {
                word0 = aword0[i];
            }
        }

        return word0;
    }

    public static byte toByte(String s)
    {
        return toByte(s, (byte)0);
    }

    public static byte toByte(String s, byte byte0)
    {
        if (s == null)
        {
            return byte0;
        }
        byte byte1;
        try
        {
            byte1 = Byte.parseByte(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            return byte0;
        }
        return byte1;
    }

    public static double toDouble(String s)
    {
        return toDouble(s, 0.0D);
    }

    public static double toDouble(String s, double d)
    {
        if (s == null)
        {
            return d;
        }
        double d1;
        try
        {
            d1 = Double.parseDouble(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            return d;
        }
        return d1;
    }

    public static float toFloat(String s)
    {
        return toFloat(s, 0.0F);
    }

    public static float toFloat(String s, float f)
    {
        if (s == null)
        {
            return f;
        }
        float f1;
        try
        {
            f1 = Float.parseFloat(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            return f;
        }
        return f1;
    }

    public static int toInt(String s)
    {
        return toInt(s, 0);
    }

    public static int toInt(String s, int i)
    {
        if (s == null)
        {
            return i;
        }
        int j;
        try
        {
            j = Integer.parseInt(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            return i;
        }
        return j;
    }

    public static long toLong(String s)
    {
        return toLong(s, 0L);
    }

    public static long toLong(String s, long l)
    {
        if (s == null)
        {
            return l;
        }
        long l1;
        try
        {
            l1 = Long.parseLong(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            return l;
        }
        return l1;
    }

    public static short toShort(String s)
    {
        return toShort(s, (short)0);
    }

    public static short toShort(String s, short word0)
    {
        if (s == null)
        {
            return word0;
        }
        short word1;
        try
        {
            word1 = Short.parseShort(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            return word0;
        }
        return word1;
    }

    private static void validateArray(Object obj)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (Array.getLength(obj) == 0)
        {
            throw new IllegalArgumentException("Array cannot be empty.");
        } else
        {
            return;
        }
    }

}
