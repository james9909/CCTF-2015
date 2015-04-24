// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import org.apache.commons.lang3.math.NumberUtils;

// Referenced classes of package org.apache.commons.lang3:
//            ArrayUtils

public class BooleanUtils
{

    public BooleanUtils()
    {
    }

    public static transient Boolean and(Boolean aboolean[])
    {
        if (aboolean == null)
        {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (aboolean.length == 0)
        {
            throw new IllegalArgumentException("Array is empty");
        }
        Boolean boolean1;
        try
        {
            if (and(ArrayUtils.toPrimitive(aboolean)))
            {
                return Boolean.TRUE;
            }
            boolean1 = Boolean.FALSE;
        }
        catch (NullPointerException nullpointerexception)
        {
            throw new IllegalArgumentException("The array must not contain any null elements");
        }
        return boolean1;
    }

    public static transient boolean and(boolean aflag[])
    {
        if (aflag == null)
        {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (aflag.length == 0)
        {
            throw new IllegalArgumentException("Array is empty");
        }
        int i = aflag.length;
        for (int j = 0; j < i; j++)
        {
            if (!aflag[j])
            {
                return false;
            }
        }

        return true;
    }

    public static boolean isFalse(Boolean boolean1)
    {
        return Boolean.FALSE.equals(boolean1);
    }

    public static boolean isNotFalse(Boolean boolean1)
    {
        return !isFalse(boolean1);
    }

    public static boolean isNotTrue(Boolean boolean1)
    {
        return !isTrue(boolean1);
    }

    public static boolean isTrue(Boolean boolean1)
    {
        return Boolean.TRUE.equals(boolean1);
    }

    public static Boolean negate(Boolean boolean1)
    {
        if (boolean1 == null)
        {
            return null;
        }
        if (boolean1.booleanValue())
        {
            return Boolean.FALSE;
        } else
        {
            return Boolean.TRUE;
        }
    }

    public static transient Boolean or(Boolean aboolean[])
    {
        if (aboolean == null)
        {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (aboolean.length == 0)
        {
            throw new IllegalArgumentException("Array is empty");
        }
        Boolean boolean1;
        try
        {
            if (or(ArrayUtils.toPrimitive(aboolean)))
            {
                return Boolean.TRUE;
            }
            boolean1 = Boolean.FALSE;
        }
        catch (NullPointerException nullpointerexception)
        {
            throw new IllegalArgumentException("The array must not contain any null elements");
        }
        return boolean1;
    }

    public static transient boolean or(boolean aflag[])
    {
        if (aflag == null)
        {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (aflag.length == 0)
        {
            throw new IllegalArgumentException("Array is empty");
        }
        int i = aflag.length;
        int j = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (j < i)
                {
                    if (!aflag[j])
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j++;
        } while (true);
    }

    public static boolean toBoolean(int i)
    {
        return i != 0;
    }

    public static boolean toBoolean(int i, int j, int k)
    {
        if (i == j)
        {
            return true;
        }
        if (i == k)
        {
            return false;
        } else
        {
            throw new IllegalArgumentException("The Integer did not match either specified value");
        }
    }

    public static boolean toBoolean(Boolean boolean1)
    {
        return boolean1 != null && boolean1.booleanValue();
    }

    public static boolean toBoolean(Integer integer, Integer integer1, Integer integer2)
    {
        if (integer != null) goto _L2; else goto _L1
_L1:
        if (integer1 != null) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        if (integer2 == null)
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (integer.equals(integer1))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (integer.equals(integer2))
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
        if (true) goto _L3; else goto _L5
_L5:
        throw new IllegalArgumentException("The Integer did not match either specified value");
    }

    public static boolean toBoolean(String s)
    {
        return toBooleanObject(s) == Boolean.TRUE;
    }

    public static boolean toBoolean(String s, String s1, String s2)
    {
        if (s != s1) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (s == s2)
        {
            return false;
        }
        if (s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (s.equals(s1))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (s.equals(s2))
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        throw new IllegalArgumentException("The String did not match either specified value");
    }

    public static boolean toBooleanDefaultIfNull(Boolean boolean1, boolean flag)
    {
        if (boolean1 == null)
        {
            return flag;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    public static Boolean toBooleanObject(int i)
    {
        if (i == 0)
        {
            return Boolean.FALSE;
        } else
        {
            return Boolean.TRUE;
        }
    }

    public static Boolean toBooleanObject(int i, int j, int k, int l)
    {
        if (i == j)
        {
            return Boolean.TRUE;
        }
        if (i == k)
        {
            return Boolean.FALSE;
        }
        if (i == l)
        {
            return null;
        } else
        {
            throw new IllegalArgumentException("The Integer did not match any specified value");
        }
    }

    public static Boolean toBooleanObject(Integer integer)
    {
        if (integer == null)
        {
            return null;
        }
        if (integer.intValue() == 0)
        {
            return Boolean.FALSE;
        } else
        {
            return Boolean.TRUE;
        }
    }

    public static Boolean toBooleanObject(Integer integer, Integer integer1, Integer integer2, Integer integer3)
    {
        if (integer != null) goto _L2; else goto _L1
_L1:
        if (integer1 != null) goto _L4; else goto _L3
_L3:
        Boolean boolean1 = Boolean.TRUE;
_L6:
        return boolean1;
_L4:
        if (integer2 == null)
        {
            return Boolean.FALSE;
        }
        boolean1 = null;
        if (integer3 == null) goto _L6; else goto _L5
_L5:
        throw new IllegalArgumentException("The Integer did not match any specified value");
_L2:
        if (integer.equals(integer1))
        {
            return Boolean.TRUE;
        }
        if (integer.equals(integer2))
        {
            return Boolean.FALSE;
        }
        if (integer.equals(integer3))
        {
            return null;
        }
        if (true) goto _L5; else goto _L7
_L7:
    }

    public static Boolean toBooleanObject(String s)
    {
        if (s == "true")
        {
            return Boolean.TRUE;
        }
        if (s == null)
        {
            return null;
        }
        s.length();
        JVM INSTR tableswitch 1 5: default 56
    //                   1 58
    //                   2 129
    //                   3 207
    //                   4 320
    //                   5 408;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return null;
_L2:
        char c14 = s.charAt(0);
        if (c14 == 'y' || c14 == 'Y' || c14 == 't' || c14 == 'T')
        {
            return Boolean.TRUE;
        }
        if (c14 == 'n' || c14 == 'N' || c14 == 'f' || c14 == 'F')
        {
            return Boolean.FALSE;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        char c12 = s.charAt(0);
        char c13 = s.charAt(1);
        if ((c12 == 'o' || c12 == 'O') && (c13 == 'n' || c13 == 'N'))
        {
            return Boolean.TRUE;
        }
        if ((c12 == 'n' || c12 == 'N') && (c13 == 'o' || c13 == 'O'))
        {
            return Boolean.FALSE;
        }
        if (true) goto _L1; else goto _L4
_L4:
        char c9 = s.charAt(0);
        char c10 = s.charAt(1);
        char c11 = s.charAt(2);
        if ((c9 == 'y' || c9 == 'Y') && (c10 == 'e' || c10 == 'E') && (c11 == 's' || c11 == 'S'))
        {
            return Boolean.TRUE;
        }
        if ((c9 == 'o' || c9 == 'O') && (c10 == 'f' || c10 == 'F') && (c11 == 'f' || c11 == 'F'))
        {
            return Boolean.FALSE;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L5:
        char c5 = s.charAt(0);
        char c6 = s.charAt(1);
        char c7 = s.charAt(2);
        char c8 = s.charAt(3);
        if ((c5 == 't' || c5 == 'T') && (c6 == 'r' || c6 == 'R') && (c7 == 'u' || c7 == 'U') && (c8 == 'e' || c8 == 'E'))
        {
            return Boolean.TRUE;
        }
        if (true) goto _L1; else goto _L6
_L6:
        char c = s.charAt(0);
        char c1 = s.charAt(1);
        char c2 = s.charAt(2);
        char c3 = s.charAt(3);
        char c4 = s.charAt(4);
        if ((c == 'f' || c == 'F') && (c1 == 'a' || c1 == 'A') && (c2 == 'l' || c2 == 'L') && (c3 == 's' || c3 == 'S') && (c4 == 'e' || c4 == 'E'))
        {
            return Boolean.FALSE;
        }
        if (true) goto _L1; else goto _L7
_L7:
    }

    public static Boolean toBooleanObject(String s, String s1, String s2, String s3)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        if (s1 != null) goto _L4; else goto _L3
_L3:
        Boolean boolean1 = Boolean.TRUE;
_L6:
        return boolean1;
_L4:
        if (s2 == null)
        {
            return Boolean.FALSE;
        }
        boolean1 = null;
        if (s3 == null) goto _L6; else goto _L5
_L5:
        throw new IllegalArgumentException("The String did not match any specified value");
_L2:
        if (s.equals(s1))
        {
            return Boolean.TRUE;
        }
        if (s.equals(s2))
        {
            return Boolean.FALSE;
        }
        if (s.equals(s3))
        {
            return null;
        }
        if (true) goto _L5; else goto _L7
_L7:
    }

    public static int toInteger(Boolean boolean1, int i, int j, int k)
    {
        if (boolean1 == null)
        {
            return k;
        }
        if (!boolean1.booleanValue())
        {
            i = j;
        }
        return i;
    }

    public static int toInteger(boolean flag)
    {
        return !flag ? 0 : 1;
    }

    public static int toInteger(boolean flag, int i, int j)
    {
        if (flag)
        {
            return i;
        } else
        {
            return j;
        }
    }

    public static Integer toIntegerObject(Boolean boolean1)
    {
        if (boolean1 == null)
        {
            return null;
        }
        if (boolean1.booleanValue())
        {
            return NumberUtils.INTEGER_ONE;
        } else
        {
            return NumberUtils.INTEGER_ZERO;
        }
    }

    public static Integer toIntegerObject(Boolean boolean1, Integer integer, Integer integer1, Integer integer2)
    {
        if (boolean1 == null)
        {
            return integer2;
        }
        if (!boolean1.booleanValue())
        {
            integer = integer1;
        }
        return integer;
    }

    public static Integer toIntegerObject(boolean flag)
    {
        if (flag)
        {
            return NumberUtils.INTEGER_ONE;
        } else
        {
            return NumberUtils.INTEGER_ZERO;
        }
    }

    public static Integer toIntegerObject(boolean flag, Integer integer, Integer integer1)
    {
        if (flag)
        {
            return integer;
        } else
        {
            return integer1;
        }
    }

    public static String toString(Boolean boolean1, String s, String s1, String s2)
    {
        if (boolean1 == null)
        {
            return s2;
        }
        if (!boolean1.booleanValue())
        {
            s = s1;
        }
        return s;
    }

    public static String toString(boolean flag, String s, String s1)
    {
        if (flag)
        {
            return s;
        } else
        {
            return s1;
        }
    }

    public static String toStringOnOff(Boolean boolean1)
    {
        return toString(boolean1, "on", "off", null);
    }

    public static String toStringOnOff(boolean flag)
    {
        return toString(flag, "on", "off");
    }

    public static String toStringTrueFalse(Boolean boolean1)
    {
        return toString(boolean1, "true", "false", null);
    }

    public static String toStringTrueFalse(boolean flag)
    {
        return toString(flag, "true", "false");
    }

    public static String toStringYesNo(Boolean boolean1)
    {
        return toString(boolean1, "yes", "no", null);
    }

    public static String toStringYesNo(boolean flag)
    {
        return toString(flag, "yes", "no");
    }

    public static transient Boolean xor(Boolean aboolean[])
    {
        if (aboolean == null)
        {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (aboolean.length == 0)
        {
            throw new IllegalArgumentException("Array is empty");
        }
        Boolean boolean1;
        try
        {
            if (xor(ArrayUtils.toPrimitive(aboolean)))
            {
                return Boolean.TRUE;
            }
            boolean1 = Boolean.FALSE;
        }
        catch (NullPointerException nullpointerexception)
        {
            throw new IllegalArgumentException("The array must not contain any null elements");
        }
        return boolean1;
    }

    public static transient boolean xor(boolean aflag[])
    {
        int i = 0;
        if (aflag == null)
        {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (aflag.length == 0)
        {
            throw new IllegalArgumentException("Array is empty");
        }
        int j = aflag.length;
        boolean flag = false;
        for (; i < j; i++)
        {
            flag ^= aflag[i];
        }

        return flag;
    }
}
