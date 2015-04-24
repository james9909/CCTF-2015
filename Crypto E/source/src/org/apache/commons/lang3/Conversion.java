// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.util.UUID;

public class Conversion
{

    static final boolean $assertionsDisabled;

    public Conversion()
    {
    }

    public static char binaryBeMsb0ToHexDigit(boolean aflag[])
    {
        return binaryBeMsb0ToHexDigit(aflag, 0);
    }

    public static char binaryBeMsb0ToHexDigit(boolean aflag[], int i)
    {
        if (aflag.length == 0)
        {
            throw new IllegalArgumentException("Cannot convert an empty array.");
        }
        int j = (-1 + aflag.length) - i;
        int k = Math.min(4, j + 1);
        boolean aflag1[] = new boolean[4];
        System.arraycopy(aflag, (j + 1) - k, aflag1, 4 - k, k);
        if (aflag1[0])
        {
            if (aflag1.length > 1 && aflag1[1])
            {
                if (aflag1.length > 2 && aflag1[2])
                {
                    return aflag1.length <= 3 || !aflag1[3] ? 'e' : 'f';
                }
                return aflag1.length <= 3 || !aflag1[3] ? 'c' : 'd';
            }
            if (aflag1.length > 2 && aflag1[2])
            {
                return aflag1.length <= 3 || !aflag1[3] ? 'a' : 'b';
            }
            return aflag1.length <= 3 || !aflag1[3] ? '8' : '9';
        }
        if (aflag1.length > 1 && aflag1[1])
        {
            if (aflag1.length > 2 && aflag1[2])
            {
                return aflag1.length <= 3 || !aflag1[3] ? '6' : '7';
            }
            return aflag1.length <= 3 || !aflag1[3] ? '4' : '5';
        }
        if (aflag1.length > 2 && aflag1[2])
        {
            return aflag1.length <= 3 || !aflag1[3] ? '2' : '3';
        }
        return aflag1.length <= 3 || !aflag1[3] ? '0' : '1';
    }

    public static byte binaryToByte(boolean aflag[], int i, byte byte0, int j, int k)
    {
        if ((aflag.length != 0 || i != 0) && k != 0)
        {
            if (j + (k - 1) >= 8)
            {
                throw new IllegalArgumentException("nBools-1+dstPos is greather or equal to than 8");
            }
            int l = 0;
            while (l < k) 
            {
                int i1 = j + l * 1;
                int j1;
                if (aflag[l + i])
                {
                    j1 = 1;
                } else
                {
                    j1 = 0;
                }
                byte0 = (byte)(j1 << i1 | byte0 & (-1 ^ 1 << i1));
                l++;
            }
        }
        return byte0;
    }

    public static char binaryToHexDigit(boolean aflag[])
    {
        return binaryToHexDigit(aflag, 0);
    }

    public static char binaryToHexDigit(boolean aflag[], int i)
    {
        if (aflag.length == 0)
        {
            throw new IllegalArgumentException("Cannot convert an empty array.");
        }
        if (aflag.length > i + 3 && aflag[i + 3])
        {
            if (aflag.length > i + 2 && aflag[i + 2])
            {
                if (aflag.length > i + 1 && aflag[i + 1])
                {
                    return !aflag[i] ? 'e' : 'f';
                }
                return !aflag[i] ? 'c' : 'd';
            }
            if (aflag.length > i + 1 && aflag[i + 1])
            {
                return !aflag[i] ? 'a' : 'b';
            }
            return !aflag[i] ? '8' : '9';
        }
        if (aflag.length > i + 2 && aflag[i + 2])
        {
            if (aflag.length > i + 1 && aflag[i + 1])
            {
                return !aflag[i] ? '6' : '7';
            }
            return !aflag[i] ? '4' : '5';
        }
        if (aflag.length > i + 1 && aflag[i + 1])
        {
            return !aflag[i] ? '2' : '3';
        }
        return !aflag[i] ? '0' : '1';
    }

    public static char binaryToHexDigitMsb0_4bits(boolean aflag[])
    {
        return binaryToHexDigitMsb0_4bits(aflag, 0);
    }

    public static char binaryToHexDigitMsb0_4bits(boolean aflag[], int i)
    {
        if (aflag.length > 8)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("src.length>8: src.length=").append(aflag.length).toString());
        }
        if (aflag.length - i < 4)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("src.length-srcPos<4: src.length=").append(aflag.length).append(", srcPos=").append(i).toString());
        }
        if (aflag[i + 3])
        {
            if (aflag[i + 2])
            {
                if (aflag[i + 1])
                {
                    return !aflag[i] ? '7' : 'f';
                }
                return !aflag[i] ? '3' : 'b';
            }
            if (aflag[i + 1])
            {
                return !aflag[i] ? '5' : 'd';
            }
            return !aflag[i] ? '1' : '9';
        }
        if (aflag[i + 2])
        {
            if (aflag[i + 1])
            {
                return !aflag[i] ? '6' : 'e';
            }
            return !aflag[i] ? '2' : 'a';
        }
        if (aflag[i + 1])
        {
            return !aflag[i] ? '4' : 'c';
        }
        return !aflag[i] ? '0' : '8';
    }

    public static int binaryToInt(boolean aflag[], int i, int j, int k, int l)
    {
        if ((aflag.length != 0 || i != 0) && l != 0)
        {
            if (k + (l - 1) >= 32)
            {
                throw new IllegalArgumentException("nBools-1+dstPos is greather or equal to than 32");
            }
            int i1 = 0;
            while (i1 < l) 
            {
                int j1 = k + i1 * 1;
                int k1;
                if (aflag[i1 + i])
                {
                    k1 = 1;
                } else
                {
                    k1 = 0;
                }
                j = k1 << j1 | j & (-1 ^ 1 << j1);
                i1++;
            }
        }
        return j;
    }

    public static long binaryToLong(boolean aflag[], int i, long l, int j, int k)
    {
        if ((aflag.length != 0 || i != 0) && k != 0)
        {
            if (j + (k - 1) >= 64)
            {
                throw new IllegalArgumentException("nBools-1+dstPos is greather or equal to than 64");
            }
            int i1 = 0;
            while (i1 < k) 
            {
                int j1 = j + i1 * 1;
                long l1;
                if (aflag[i1 + i])
                {
                    l1 = 1L;
                } else
                {
                    l1 = 0L;
                }
                l = l1 << j1 | l & (-1L ^ 1L << j1);
                i1++;
            }
        }
        return l;
    }

    public static short binaryToShort(boolean aflag[], int i, short word0, int j, int k)
    {
        if ((aflag.length != 0 || i != 0) && k != 0)
        {
            if (j + (k - 1) >= 16)
            {
                throw new IllegalArgumentException("nBools-1+dstPos is greather or equal to than 16");
            }
            int l = 0;
            while (l < k) 
            {
                int i1 = j + l * 1;
                int j1;
                if (aflag[l + i])
                {
                    j1 = 1;
                } else
                {
                    j1 = 0;
                }
                word0 = (short)(j1 << i1 | word0 & (-1 ^ 1 << i1));
                l++;
            }
        }
        return word0;
    }

    public static int byteArrayToInt(byte abyte0[], int i, int j, int k, int l)
    {
        if ((abyte0.length != 0 || i != 0) && l != 0)
        {
            if (k + 8 * (l - 1) >= 32)
            {
                throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greather or equal to than 32");
            }
            int i1 = 0;
            while (i1 < l) 
            {
                int j1 = k + i1 * 8;
                j = (0xff & abyte0[i1 + i]) << j1 | j & (-1 ^ 255 << j1);
                i1++;
            }
        }
        return j;
    }

    public static long byteArrayToLong(byte abyte0[], int i, long l, int j, int k)
    {
        if ((abyte0.length != 0 || i != 0) && k != 0)
        {
            if (j + 8 * (k - 1) >= 64)
            {
                throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greather or equal to than 64");
            }
            int i1 = 0;
            while (i1 < k) 
            {
                int j1 = j + i1 * 8;
                l = (255L & (long)abyte0[i1 + i]) << j1 | l & (-1L ^ 255L << j1);
                i1++;
            }
        }
        return l;
    }

    public static short byteArrayToShort(byte abyte0[], int i, short word0, int j, int k)
    {
        if ((abyte0.length != 0 || i != 0) && k != 0)
        {
            if (j + 8 * (k - 1) >= 16)
            {
                throw new IllegalArgumentException("(nBytes-1)*8+dstPos is greather or equal to than 16");
            }
            int l = 0;
            while (l < k) 
            {
                int i1 = j + l * 8;
                word0 = (short)((0xff & abyte0[l + i]) << i1 | word0 & (-1 ^ 255 << i1));
                l++;
            }
        }
        return word0;
    }

    public static UUID byteArrayToUuid(byte abyte0[], int i)
    {
        if (abyte0.length - i < 16)
        {
            throw new IllegalArgumentException("Need at least 16 bytes for UUID");
        } else
        {
            return new UUID(byteArrayToLong(abyte0, i, 0L, 0, 8), byteArrayToLong(abyte0, i + 8, 0L, 0, 8));
        }
    }

    public static boolean[] byteToBinary(byte byte0, int i, boolean aflag[], int j, int k)
    {
        if (k != 0)
        {
            if (i + (k - 1) >= 8)
            {
                throw new IllegalArgumentException("nBools-1+srcPos is greather or equal to than 8");
            }
            int l = 0;
            while (l < k) 
            {
                int i1 = i + l * 1;
                int j1 = j + l;
                boolean flag;
                if ((1 & byte0 >> i1) != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                aflag[j1] = flag;
                l++;
            }
        }
        return aflag;
    }

    public static String byteToHex(byte byte0, int i, String s, int j, int k)
    {
        if (k == 0)
        {
            return s;
        }
        if (i + 4 * (k - 1) >= 8)
        {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greather or equal to than 8");
        }
        StringBuilder stringbuilder = new StringBuilder(s);
        int l = stringbuilder.length();
        int i1 = 0;
        while (i1 < k) 
        {
            int j1 = 0xf & byte0 >> i + i1 * 4;
            if (j + i1 == l)
            {
                l++;
                stringbuilder.append(intToHexDigit(j1));
            } else
            {
                stringbuilder.setCharAt(j + i1, intToHexDigit(j1));
            }
            i1++;
        }
        return stringbuilder.toString();
    }

    public static boolean[] hexDigitMsb0ToBinary(char c)
    {
        switch (c)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Cannot interpret '").append(c).append("' as a hexadecimal digit").toString());

        case 48: // '0'
            return (new boolean[] {
                0, 0, 0, 0
            });

        case 49: // '1'
            return (new boolean[] {
                0, 0, 0, 1
            });

        case 50: // '2'
            return (new boolean[] {
                0, 0, 1, 0
            });

        case 51: // '3'
            return (new boolean[] {
                0, 0, 1, 1
            });

        case 52: // '4'
            return (new boolean[] {
                0, 1, 0, 0
            });

        case 53: // '5'
            return (new boolean[] {
                0, 1, 0, 1
            });

        case 54: // '6'
            return (new boolean[] {
                0, 1, 1, 0
            });

        case 55: // '7'
            return (new boolean[] {
                0, 1, 1, 1
            });

        case 56: // '8'
            return (new boolean[] {
                1, 0, 0, 0
            });

        case 57: // '9'
            return (new boolean[] {
                1, 0, 0, 1
            });

        case 65: // 'A'
        case 97: // 'a'
            return (new boolean[] {
                1, 0, 1, 0
            });

        case 66: // 'B'
        case 98: // 'b'
            return (new boolean[] {
                1, 0, 1, 1
            });

        case 67: // 'C'
        case 99: // 'c'
            return (new boolean[] {
                1, 1, 0, 0
            });

        case 68: // 'D'
        case 100: // 'd'
            return (new boolean[] {
                1, 1, 0, 1
            });

        case 69: // 'E'
        case 101: // 'e'
            return (new boolean[] {
                1, 1, 1, 0
            });

        case 70: // 'F'
        case 102: // 'f'
            return (new boolean[] {
                1, 1, 1, 1
            });
        }
    }

    public static int hexDigitMsb0ToInt(char c)
    {
        switch (c)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Cannot interpret '").append(c).append("' as a hexadecimal digit").toString());

        case 48: // '0'
            return 0;

        case 49: // '1'
            return 8;

        case 50: // '2'
            return 4;

        case 51: // '3'
            return 12;

        case 52: // '4'
            return 2;

        case 53: // '5'
            return 10;

        case 54: // '6'
            return 6;

        case 55: // '7'
            return 14;

        case 56: // '8'
            return 1;

        case 57: // '9'
            return 9;

        case 65: // 'A'
        case 97: // 'a'
            return 5;

        case 66: // 'B'
        case 98: // 'b'
            return 13;

        case 67: // 'C'
        case 99: // 'c'
            return 3;

        case 68: // 'D'
        case 100: // 'd'
            return 11;

        case 69: // 'E'
        case 101: // 'e'
            return 7;

        case 70: // 'F'
        case 102: // 'f'
            return 15;
        }
    }

    public static boolean[] hexDigitToBinary(char c)
    {
        switch (c)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Cannot interpret '").append(c).append("' as a hexadecimal digit").toString());

        case 48: // '0'
            return (new boolean[] {
                0, 0, 0, 0
            });

        case 49: // '1'
            return (new boolean[] {
                1, 0, 0, 0
            });

        case 50: // '2'
            return (new boolean[] {
                0, 1, 0, 0
            });

        case 51: // '3'
            return (new boolean[] {
                1, 1, 0, 0
            });

        case 52: // '4'
            return (new boolean[] {
                0, 0, 1, 0
            });

        case 53: // '5'
            return (new boolean[] {
                1, 0, 1, 0
            });

        case 54: // '6'
            return (new boolean[] {
                0, 1, 1, 0
            });

        case 55: // '7'
            return (new boolean[] {
                1, 1, 1, 0
            });

        case 56: // '8'
            return (new boolean[] {
                0, 0, 0, 1
            });

        case 57: // '9'
            return (new boolean[] {
                1, 0, 0, 1
            });

        case 65: // 'A'
        case 97: // 'a'
            return (new boolean[] {
                0, 1, 0, 1
            });

        case 66: // 'B'
        case 98: // 'b'
            return (new boolean[] {
                1, 1, 0, 1
            });

        case 67: // 'C'
        case 99: // 'c'
            return (new boolean[] {
                0, 0, 1, 1
            });

        case 68: // 'D'
        case 100: // 'd'
            return (new boolean[] {
                1, 0, 1, 1
            });

        case 69: // 'E'
        case 101: // 'e'
            return (new boolean[] {
                0, 1, 1, 1
            });

        case 70: // 'F'
        case 102: // 'f'
            return (new boolean[] {
                1, 1, 1, 1
            });
        }
    }

    public static int hexDigitToInt(char c)
    {
        int i = Character.digit(c, 16);
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Cannot interpret '").append(c).append("' as a hexadecimal digit").toString());
        } else
        {
            return i;
        }
    }

    public static byte hexToByte(String s, int i, byte byte0, int j, int k)
    {
        if (k != 0)
        {
            if (j + 4 * (k - 1) >= 8)
            {
                throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greather or equal to than 8");
            }
            int l = 0;
            while (l < k) 
            {
                int i1 = j + l * 4;
                byte0 = (byte)((0xf & hexDigitToInt(s.charAt(l + i))) << i1 | byte0 & (-1 ^ 15 << i1));
                l++;
            }
        }
        return byte0;
    }

    public static int hexToInt(String s, int i, int j, int k, int l)
    {
        if (l != 0)
        {
            if (k + 4 * (l - 1) >= 32)
            {
                throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greather or equal to than 32");
            }
            int i1 = 0;
            while (i1 < l) 
            {
                int j1 = k + i1 * 4;
                j = (0xf & hexDigitToInt(s.charAt(i1 + i))) << j1 | j & (-1 ^ 15 << j1);
                i1++;
            }
        }
        return j;
    }

    public static long hexToLong(String s, int i, long l, int j, int k)
    {
        if (k != 0)
        {
            if (j + 4 * (k - 1) >= 64)
            {
                throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greather or equal to than 64");
            }
            int i1 = 0;
            while (i1 < k) 
            {
                int j1 = j + i1 * 4;
                l = (15L & (long)hexDigitToInt(s.charAt(i1 + i))) << j1 | l & (-1L ^ 15L << j1);
                i1++;
            }
        }
        return l;
    }

    public static short hexToShort(String s, int i, short word0, int j, int k)
    {
        if (k != 0)
        {
            if (j + 4 * (k - 1) >= 16)
            {
                throw new IllegalArgumentException("(nHexs-1)*4+dstPos is greather or equal to than 16");
            }
            int l = 0;
            while (l < k) 
            {
                int i1 = j + l * 4;
                word0 = (short)((0xf & hexDigitToInt(s.charAt(l + i))) << i1 | word0 & (-1 ^ 15 << i1));
                l++;
            }
        }
        return word0;
    }

    public static long intArrayToLong(int ai[], int i, long l, int j, int k)
    {
        if ((ai.length != 0 || i != 0) && k != 0)
        {
            if (j + 32 * (k - 1) >= 64)
            {
                throw new IllegalArgumentException("(nInts-1)*32+dstPos is greather or equal to than 64");
            }
            int i1 = 0;
            while (i1 < k) 
            {
                int j1 = j + i1 * 32;
                l = (0xffffffffL & (long)ai[i1 + i]) << j1 | l & (-1L ^ 0xffffffffL << j1);
                i1++;
            }
        }
        return l;
    }

    public static boolean[] intToBinary(int i, int j, boolean aflag[], int k, int l)
    {
        if (l != 0)
        {
            if (j + (l - 1) >= 32)
            {
                throw new IllegalArgumentException("nBools-1+srcPos is greather or equal to than 32");
            }
            int i1 = 0;
            while (i1 < l) 
            {
                int j1 = j + i1 * 1;
                int k1 = k + i1;
                boolean flag;
                if ((1 & i >> j1) != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                aflag[k1] = flag;
                i1++;
            }
        }
        return aflag;
    }

    public static byte[] intToByteArray(int i, int j, byte abyte0[], int k, int l)
    {
        if (l != 0)
        {
            if (j + 8 * (l - 1) >= 32)
            {
                throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greather or equal to than 32");
            }
            int i1 = 0;
            while (i1 < l) 
            {
                int j1 = j + i1 * 8;
                abyte0[k + i1] = (byte)(0xff & i >> j1);
                i1++;
            }
        }
        return abyte0;
    }

    public static String intToHex(int i, int j, String s, int k, int l)
    {
        if (l == 0)
        {
            return s;
        }
        if (j + 4 * (l - 1) >= 32)
        {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greather or equal to than 32");
        }
        StringBuilder stringbuilder = new StringBuilder(s);
        int i1 = stringbuilder.length();
        int j1 = 0;
        while (j1 < l) 
        {
            int k1 = 0xf & i >> j + j1 * 4;
            if (k + j1 == i1)
            {
                i1++;
                stringbuilder.append(intToHexDigit(k1));
            } else
            {
                stringbuilder.setCharAt(k + j1, intToHexDigit(k1));
            }
            j1++;
        }
        return stringbuilder.toString();
    }

    public static char intToHexDigit(int i)
    {
        char c = Character.forDigit(i, 16);
        if (c == 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("nibble value not between 0 and 15: ").append(i).toString());
        } else
        {
            return c;
        }
    }

    public static char intToHexDigitMsb0(int i)
    {
        switch (i)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("nibble value not between 0 and 15: ").append(i).toString());

        case 0: // '\0'
            return '0';

        case 1: // '\001'
            return '8';

        case 2: // '\002'
            return '4';

        case 3: // '\003'
            return 'c';

        case 4: // '\004'
            return '2';

        case 5: // '\005'
            return 'a';

        case 6: // '\006'
            return '6';

        case 7: // '\007'
            return 'e';

        case 8: // '\b'
            return '1';

        case 9: // '\t'
            return '9';

        case 10: // '\n'
            return '5';

        case 11: // '\013'
            return 'd';

        case 12: // '\f'
            return '3';

        case 13: // '\r'
            return 'b';

        case 14: // '\016'
            return '7';

        case 15: // '\017'
            return 'f';
        }
    }

    public static short[] intToShortArray(int i, int j, short aword0[], int k, int l)
    {
        if (l != 0)
        {
            if (j + 16 * (l - 1) >= 32)
            {
                throw new IllegalArgumentException("(nShorts-1)*16+srcPos is greather or equal to than 32");
            }
            int i1 = 0;
            while (i1 < l) 
            {
                int j1 = j + i1 * 16;
                aword0[k + i1] = (short)(0xffff & i >> j1);
                i1++;
            }
        }
        return aword0;
    }

    public static boolean[] longToBinary(long l, int i, boolean aflag[], int j, int k)
    {
        if (k != 0)
        {
            if (i + (k - 1) >= 64)
            {
                throw new IllegalArgumentException("nBools-1+srcPos is greather or equal to than 64");
            }
            int i1 = 0;
            while (i1 < k) 
            {
                int j1 = i + i1 * 1;
                int k1 = j + i1;
                boolean flag;
                if ((1L & l >> j1) != 0L)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                aflag[k1] = flag;
                i1++;
            }
        }
        return aflag;
    }

    public static byte[] longToByteArray(long l, int i, byte abyte0[], int j, int k)
    {
        if (k != 0)
        {
            if (i + 8 * (k - 1) >= 64)
            {
                throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greather or equal to than 64");
            }
            int i1 = 0;
            while (i1 < k) 
            {
                int j1 = i + i1 * 8;
                abyte0[j + i1] = (byte)(int)(255L & l >> j1);
                i1++;
            }
        }
        return abyte0;
    }

    public static String longToHex(long l, int i, String s, int j, int k)
    {
        if (k == 0)
        {
            return s;
        }
        if (i + 4 * (k - 1) >= 64)
        {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greather or equal to than 64");
        }
        StringBuilder stringbuilder = new StringBuilder(s);
        int i1 = stringbuilder.length();
        int j1 = 0;
        while (j1 < k) 
        {
            int k1 = (int)(15L & l >> i + j1 * 4);
            if (j + j1 == i1)
            {
                i1++;
                stringbuilder.append(intToHexDigit(k1));
            } else
            {
                stringbuilder.setCharAt(j + j1, intToHexDigit(k1));
            }
            j1++;
        }
        return stringbuilder.toString();
    }

    public static int[] longToIntArray(long l, int i, int ai[], int j, int k)
    {
        if (k != 0)
        {
            if (i + 32 * (k - 1) >= 64)
            {
                throw new IllegalArgumentException("(nInts-1)*32+srcPos is greather or equal to than 64");
            }
            int i1 = 0;
            while (i1 < k) 
            {
                int j1 = i + i1 * 32;
                ai[j + i1] = (int)(-1L & l >> j1);
                i1++;
            }
        }
        return ai;
    }

    public static short[] longToShortArray(long l, int i, short aword0[], int j, int k)
    {
        if (k != 0)
        {
            if (i + 16 * (k - 1) >= 64)
            {
                throw new IllegalArgumentException("(nShorts-1)*16+srcPos is greather or equal to than 64");
            }
            int i1 = 0;
            while (i1 < k) 
            {
                int j1 = i + i1 * 16;
                aword0[j + i1] = (short)(int)(65535L & l >> j1);
                i1++;
            }
        }
        return aword0;
    }

    public static int shortArrayToInt(short aword0[], int i, int j, int k, int l)
    {
        if ((aword0.length != 0 || i != 0) && l != 0)
        {
            if (k + 16 * (l - 1) >= 32)
            {
                throw new IllegalArgumentException("(nShorts-1)*16+dstPos is greather or equal to than 32");
            }
            int i1 = 0;
            while (i1 < l) 
            {
                int j1 = k + i1 * 16;
                j = (0xffff & aword0[i1 + i]) << j1 | j & (-1 ^ 65535 << j1);
                i1++;
            }
        }
        return j;
    }

    public static long shortArrayToLong(short aword0[], int i, long l, int j, int k)
    {
        if ((aword0.length != 0 || i != 0) && k != 0)
        {
            if (j + 16 * (k - 1) >= 64)
            {
                throw new IllegalArgumentException("(nShorts-1)*16+dstPos is greather or equal to than 64");
            }
            int i1 = 0;
            while (i1 < k) 
            {
                int j1 = j + i1 * 16;
                l = (65535L & (long)aword0[i1 + i]) << j1 | l & (-1L ^ 65535L << j1);
                i1++;
            }
        }
        return l;
    }

    public static boolean[] shortToBinary(short word0, int i, boolean aflag[], int j, int k)
    {
        if (k != 0)
        {
            if (i + (k - 1) >= 16)
            {
                throw new IllegalArgumentException("nBools-1+srcPos is greather or equal to than 16");
            }
            if (!$assertionsDisabled && 1 * (k - 1) >= 16 - i)
            {
                throw new AssertionError();
            }
            int l = 0;
            while (l < k) 
            {
                int i1 = i + l * 1;
                int j1 = j + l;
                boolean flag;
                if ((1 & word0 >> i1) != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                aflag[j1] = flag;
                l++;
            }
        }
        return aflag;
    }

    public static byte[] shortToByteArray(short word0, int i, byte abyte0[], int j, int k)
    {
        if (k != 0)
        {
            if (i + 8 * (k - 1) >= 16)
            {
                throw new IllegalArgumentException("(nBytes-1)*8+srcPos is greather or equal to than 16");
            }
            int l = 0;
            while (l < k) 
            {
                int i1 = i + l * 8;
                abyte0[j + l] = (byte)(0xff & word0 >> i1);
                l++;
            }
        }
        return abyte0;
    }

    public static String shortToHex(short word0, int i, String s, int j, int k)
    {
        if (k == 0)
        {
            return s;
        }
        if (i + 4 * (k - 1) >= 16)
        {
            throw new IllegalArgumentException("(nHexs-1)*4+srcPos is greather or equal to than 16");
        }
        StringBuilder stringbuilder = new StringBuilder(s);
        int l = stringbuilder.length();
        int i1 = 0;
        while (i1 < k) 
        {
            int j1 = 0xf & word0 >> i + i1 * 4;
            if (j + i1 == l)
            {
                l++;
                stringbuilder.append(intToHexDigit(j1));
            } else
            {
                stringbuilder.setCharAt(j + i1, intToHexDigit(j1));
            }
            i1++;
        }
        return stringbuilder.toString();
    }

    public static byte[] uuidToByteArray(UUID uuid, byte abyte0[], int i, int j)
    {
        if (j != 0)
        {
            if (j > 16)
            {
                throw new IllegalArgumentException("nBytes is greather than 16");
            }
            long l = uuid.getMostSignificantBits();
            int k;
            if (j > 8)
            {
                k = 8;
            } else
            {
                k = j;
            }
            longToByteArray(l, 0, abyte0, i, k);
            if (j >= 8)
            {
                longToByteArray(uuid.getLeastSignificantBits(), 0, abyte0, i + 8, j - 8);
                return abyte0;
            }
        }
        return abyte0;
    }

    static 
    {
        boolean flag;
        if (!org/apache/commons/lang3/Conversion.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
