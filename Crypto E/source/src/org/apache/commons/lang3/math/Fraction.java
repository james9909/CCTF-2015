// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.math;

import java.math.BigInteger;

public final class Fraction extends Number
    implements Comparable
{

    public static final Fraction FOUR_FIFTHS = new Fraction(4, 5);
    public static final Fraction ONE = new Fraction(1, 1);
    public static final Fraction ONE_FIFTH = new Fraction(1, 5);
    public static final Fraction ONE_HALF = new Fraction(1, 2);
    public static final Fraction ONE_QUARTER = new Fraction(1, 4);
    public static final Fraction ONE_THIRD = new Fraction(1, 3);
    public static final Fraction THREE_FIFTHS = new Fraction(3, 5);
    public static final Fraction THREE_QUARTERS = new Fraction(3, 4);
    public static final Fraction TWO_FIFTHS = new Fraction(2, 5);
    public static final Fraction TWO_QUARTERS = new Fraction(2, 4);
    public static final Fraction TWO_THIRDS = new Fraction(2, 3);
    public static final Fraction ZERO = new Fraction(0, 1);
    private static final long serialVersionUID = 0x3b76f0847842L;
    private final int denominator;
    private transient int hashCode;
    private final int numerator;
    private transient String toProperString;
    private transient String toString;

    private Fraction(int i, int j)
    {
        hashCode = 0;
        toString = null;
        toProperString = null;
        numerator = i;
        denominator = j;
    }

    private static int addAndCheck(int i, int j)
    {
        long l = (long)i + (long)j;
        if (l < 0xffffffff80000000L || l > 0x7fffffffL)
        {
            throw new ArithmeticException("overflow: add");
        } else
        {
            return (int)l;
        }
    }

    private Fraction addSub(Fraction fraction, boolean flag)
    {
        if (fraction == null)
        {
            throw new IllegalArgumentException("The fraction must not be null");
        }
        if (numerator == 0)
        {
            if (flag)
            {
                return fraction;
            } else
            {
                return fraction.negate();
            }
        }
        if (fraction.numerator == 0)
        {
            return this;
        }
        int i = greatestCommonDivisor(denominator, fraction.denominator);
        if (i == 1)
        {
            int l = mulAndCheck(numerator, fraction.denominator);
            int i1 = mulAndCheck(fraction.numerator, denominator);
            int j1;
            if (flag)
            {
                j1 = addAndCheck(l, i1);
            } else
            {
                j1 = subAndCheck(l, i1);
            }
            return new Fraction(j1, mulPosAndCheck(denominator, fraction.denominator));
        }
        BigInteger biginteger = BigInteger.valueOf(numerator).multiply(BigInteger.valueOf(fraction.denominator / i));
        BigInteger biginteger1 = BigInteger.valueOf(fraction.numerator).multiply(BigInteger.valueOf(denominator / i));
        BigInteger biginteger2;
        int j;
        int k;
        BigInteger biginteger3;
        if (flag)
        {
            biginteger2 = biginteger.add(biginteger1);
        } else
        {
            biginteger2 = biginteger.subtract(biginteger1);
        }
        j = biginteger2.mod(BigInteger.valueOf(i)).intValue();
        if (j == 0)
        {
            k = i;
        } else
        {
            k = greatestCommonDivisor(j, i);
        }
        biginteger3 = biginteger2.divide(BigInteger.valueOf(k));
        if (biginteger3.bitLength() > 31)
        {
            throw new ArithmeticException("overflow: numerator too large after multiply");
        } else
        {
            return new Fraction(biginteger3.intValue(), mulPosAndCheck(denominator / i, fraction.denominator / k));
        }
    }

    public static Fraction getFraction(double d)
    {
        byte byte0;
        double d1;
        if (d < 0.0D)
        {
            byte0 = -1;
        } else
        {
            byte0 = 1;
        }
        d1 = Math.abs(d);
        if (d1 > 2147483647D || Double.isNaN(d1))
        {
            throw new ArithmeticException("The value must not be greater than Integer.MAX_VALUE or NaN");
        }
        int i = (int)d1;
        double d2 = d1 - (double)i;
        int j = (int)d2;
        double d3 = d2 - (double)j;
        double d4 = 1.7976931348623157E+308D;
        int k = 1;
        int l = 1;
        int i1 = 0;
        int j1 = 0;
        int k1 = 1;
        int l1 = j;
        double d5 = 1.0D;
        double d6 = d3;
        do
        {
            int i2 = (int)(d5 / d6);
            double d7 = d5 - d6 * (double)i2;
            int j2 = i1 + l1 * k1;
            int k2 = l + l1 * j1;
            double d8 = Math.abs(d2 - (double)j2 / (double)k2);
            k++;
            if (d4 <= d8 || k2 > 10000 || k2 <= 0 || k >= 25)
            {
                if (k == 25)
                {
                    throw new ArithmeticException("Unable to convert double to fraction");
                } else
                {
                    return getReducedFraction(byte0 * (k1 + i * j1), j1);
                }
            }
            d4 = d8;
            l = j1;
            d5 = d6;
            j1 = k2;
            l1 = i2;
            d6 = d7;
            i1 = k1;
            k1 = j2;
        } while (true);
    }

    public static Fraction getFraction(int i, int j)
    {
        if (j == 0)
        {
            throw new ArithmeticException("The denominator must not be zero");
        }
        if (j < 0)
        {
            if (i == 0x80000000 || j == 0x80000000)
            {
                throw new ArithmeticException("overflow: can't negate");
            }
            i = -i;
            j = -j;
        }
        return new Fraction(i, j);
    }

    public static Fraction getFraction(int i, int j, int k)
    {
        if (k == 0)
        {
            throw new ArithmeticException("The denominator must not be zero");
        }
        if (k < 0)
        {
            throw new ArithmeticException("The denominator must not be negative");
        }
        if (j < 0)
        {
            throw new ArithmeticException("The numerator must not be negative");
        }
        long l;
        if (i < 0)
        {
            l = (long)i * (long)k - (long)j;
        } else
        {
            l = (long)i * (long)k + (long)j;
        }
        if (l < 0xffffffff80000000L || l > 0x7fffffffL)
        {
            throw new ArithmeticException("Numerator too large to represent as an Integer.");
        } else
        {
            return new Fraction((int)l, k);
        }
    }

    public static Fraction getFraction(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("The string must not be null");
        }
        if (s.indexOf('.') >= 0)
        {
            return getFraction(Double.parseDouble(s));
        }
        int i = s.indexOf(' ');
        if (i > 0)
        {
            int k = Integer.parseInt(s.substring(0, i));
            String s1 = s.substring(i + 1);
            int l = s1.indexOf('/');
            if (l < 0)
            {
                throw new NumberFormatException("The fraction could not be parsed as the format X Y/Z");
            } else
            {
                return getFraction(k, Integer.parseInt(s1.substring(0, l)), Integer.parseInt(s1.substring(l + 1)));
            }
        }
        int j = s.indexOf('/');
        if (j < 0)
        {
            return getFraction(Integer.parseInt(s), 1);
        } else
        {
            return getFraction(Integer.parseInt(s.substring(0, j)), Integer.parseInt(s.substring(j + 1)));
        }
    }

    public static Fraction getReducedFraction(int i, int j)
    {
        if (j == 0)
        {
            throw new ArithmeticException("The denominator must not be zero");
        }
        if (i == 0)
        {
            return ZERO;
        }
        int k;
        int l;
        int i1;
        if (j == 0x80000000 && (i & 1) == 0)
        {
            int j1 = i / 2;
            k = j / 2;
            l = j1;
        } else
        {
            k = j;
            l = i;
        }
        if (k < 0)
        {
            if (l == 0x80000000 || k == 0x80000000)
            {
                throw new ArithmeticException("overflow: can't negate");
            }
            l = -l;
            k = -k;
        }
        i1 = greatestCommonDivisor(l, k);
        return new Fraction(l / i1, k / i1);
    }

    private static int greatestCommonDivisor(int i, int j)
    {
        if (i == 0 || j == 0)
        {
            if (i == 0x80000000 || j == 0x80000000)
            {
                throw new ArithmeticException("overflow: gcd is 2^31");
            } else
            {
                return Math.abs(i) + Math.abs(j);
            }
        }
        if (Math.abs(i) == 1 || Math.abs(j) == 1)
        {
            return 1;
        }
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        if (i > 0)
        {
            k = -i;
        } else
        {
            k = i;
        }
        if (j > 0)
        {
            j = -j;
        }
        l = 0;
        for (i1 = j; (k & 1) == 0 && (i1 & 1) == 0 && l < 31; l++)
        {
            k /= 2;
            i1 /= 2;
        }

        if (l == 31)
        {
            throw new ArithmeticException("overflow: gcd is 2^31");
        }
        if ((k & 1) == 1)
        {
            j1 = i1;
        } else
        {
            j1 = -(k / 2);
        }
        k1 = j1;
        l1 = i1;
        do
        {
            int i2;
            for (i2 = k1; (i2 & 1) == 0; i2 /= 2) { }
            int j2;
            int k2;
            if (i2 > 0)
            {
                j2 = -i2;
            } else
            {
                l1 = i2;
                j2 = k;
            }
            k2 = (l1 - j2) / 2;
            if (k2 == 0)
            {
                return -j2 * (1 << l);
            }
            k = j2;
            i2 = k2;
        } while (true);
    }

    private static int mulAndCheck(int i, int j)
    {
        long l = (long)i * (long)j;
        if (l < 0xffffffff80000000L || l > 0x7fffffffL)
        {
            throw new ArithmeticException("overflow: mul");
        } else
        {
            return (int)l;
        }
    }

    private static int mulPosAndCheck(int i, int j)
    {
        long l = (long)i * (long)j;
        if (l > 0x7fffffffL)
        {
            throw new ArithmeticException("overflow: mulPos");
        } else
        {
            return (int)l;
        }
    }

    private static int subAndCheck(int i, int j)
    {
        long l = (long)i - (long)j;
        if (l < 0xffffffff80000000L || l > 0x7fffffffL)
        {
            throw new ArithmeticException("overflow: add");
        } else
        {
            return (int)l;
        }
    }

    public Fraction abs()
    {
        if (numerator >= 0)
        {
            return this;
        } else
        {
            return negate();
        }
    }

    public Fraction add(Fraction fraction)
    {
        return addSub(fraction, true);
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((Fraction)obj);
    }

    public int compareTo(Fraction fraction)
    {
        if (this != fraction && (numerator != fraction.numerator || denominator != fraction.denominator))
        {
            long l = (long)numerator * (long)fraction.denominator;
            long l1 = (long)fraction.numerator * (long)denominator;
            if (l != l1)
            {
                return l >= l1 ? 1 : -1;
            }
        }
        return 0;
    }

    public Fraction divideBy(Fraction fraction)
    {
        if (fraction == null)
        {
            throw new IllegalArgumentException("The fraction must not be null");
        }
        if (fraction.numerator == 0)
        {
            throw new ArithmeticException("The fraction to divide by must not be zero");
        } else
        {
            return multiplyBy(fraction.invert());
        }
    }

    public double doubleValue()
    {
        return (double)numerator / (double)denominator;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof Fraction))
            {
                return false;
            }
            Fraction fraction = (Fraction)obj;
            if (getNumerator() != fraction.getNumerator() || getDenominator() != fraction.getDenominator())
            {
                return false;
            }
        }
        return true;
    }

    public float floatValue()
    {
        return (float)numerator / (float)denominator;
    }

    public int getDenominator()
    {
        return denominator;
    }

    public int getNumerator()
    {
        return numerator;
    }

    public int getProperNumerator()
    {
        return Math.abs(numerator % denominator);
    }

    public int getProperWhole()
    {
        return numerator / denominator;
    }

    public int hashCode()
    {
        if (hashCode == 0)
        {
            hashCode = 37 * (629 + getNumerator()) + getDenominator();
        }
        return hashCode;
    }

    public int intValue()
    {
        return numerator / denominator;
    }

    public Fraction invert()
    {
        if (numerator == 0)
        {
            throw new ArithmeticException("Unable to invert zero.");
        }
        if (numerator == 0x80000000)
        {
            throw new ArithmeticException("overflow: can't negate numerator");
        }
        if (numerator < 0)
        {
            return new Fraction(-denominator, -numerator);
        } else
        {
            return new Fraction(denominator, numerator);
        }
    }

    public long longValue()
    {
        return (long)numerator / (long)denominator;
    }

    public Fraction multiplyBy(Fraction fraction)
    {
        if (fraction == null)
        {
            throw new IllegalArgumentException("The fraction must not be null");
        }
        if (numerator == 0 || fraction.numerator == 0)
        {
            return ZERO;
        } else
        {
            int i = greatestCommonDivisor(numerator, fraction.denominator);
            int j = greatestCommonDivisor(fraction.numerator, denominator);
            return getReducedFraction(mulAndCheck(numerator / i, fraction.numerator / j), mulPosAndCheck(denominator / j, fraction.denominator / i));
        }
    }

    public Fraction negate()
    {
        if (numerator == 0x80000000)
        {
            throw new ArithmeticException("overflow: too large to negate");
        } else
        {
            return new Fraction(-numerator, denominator);
        }
    }

    public Fraction pow(int i)
    {
        if (i == 1)
        {
            return this;
        }
        if (i == 0)
        {
            return ONE;
        }
        if (i < 0)
        {
            if (i == 0x80000000)
            {
                return invert().pow(2).pow(-(i / 2));
            } else
            {
                return invert().pow(-i);
            }
        }
        Fraction fraction = multiplyBy(this);
        if (i % 2 == 0)
        {
            return fraction.pow(i / 2);
        } else
        {
            return fraction.pow(i / 2).multiplyBy(this);
        }
    }

    public Fraction reduce()
    {
        if (numerator != 0) goto _L2; else goto _L1
_L1:
        if (!equals(ZERO)) goto _L4; else goto _L3
_L3:
        return this;
_L4:
        return ZERO;
_L2:
        int i = greatestCommonDivisor(Math.abs(numerator), denominator);
        if (i != 1)
        {
            return getFraction(numerator / i, denominator / i);
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public Fraction subtract(Fraction fraction)
    {
        return addSub(fraction, false);
    }

    public String toProperString()
    {
        if (toProperString == null)
        {
            if (numerator == 0)
            {
                toProperString = "0";
            } else
            if (numerator == denominator)
            {
                toProperString = "1";
            } else
            if (numerator == -1 * denominator)
            {
                toProperString = "-1";
            } else
            {
                int i;
                if (numerator > 0)
                {
                    i = -numerator;
                } else
                {
                    i = numerator;
                }
                if (i < -denominator)
                {
                    int j = getProperNumerator();
                    if (j == 0)
                    {
                        toProperString = Integer.toString(getProperWhole());
                    } else
                    {
                        toProperString = (new StringBuilder(32)).append(getProperWhole()).append(' ').append(j).append('/').append(getDenominator()).toString();
                    }
                } else
                {
                    toProperString = (new StringBuilder(32)).append(getNumerator()).append('/').append(getDenominator()).toString();
                }
            }
        }
        return toProperString;
    }

    public String toString()
    {
        if (toString == null)
        {
            toString = (new StringBuilder(32)).append(getNumerator()).append('/').append(getDenominator()).toString();
        }
        return toString;
    }

}
