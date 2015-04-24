// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import org.apache.commons.lang3.StringUtils;

public class DurationFormatUtils
{
    static class Token
    {

        private int count;
        private final Object value;

        static boolean containsTokenWithValue(Token atoken[], Object obj)
        {
            int i = atoken.length;
            int j = 0;
            do
            {
label0:
                {
                    boolean flag = false;
                    if (j < i)
                    {
                        if (atoken[j].getValue() != obj)
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

        public boolean equals(Object obj)
        {
            Token token;
            if (obj instanceof Token)
            {
                token = (Token)obj;
                break MISSING_BLOCK_LABEL_12;
            }
_L1:
            return false;
            if (value.getClass() == token.value.getClass() && count == token.count)
            {
                if (value instanceof StringBuilder)
                {
                    return value.toString().equals(token.value.toString());
                }
                if (value instanceof Number)
                {
                    return value.equals(token.value);
                }
                if (value == token.value)
                {
                    return true;
                }
            }
              goto _L1
        }

        int getCount()
        {
            return count;
        }

        Object getValue()
        {
            return value;
        }

        public int hashCode()
        {
            return value.hashCode();
        }

        void increment()
        {
            count = 1 + count;
        }

        public String toString()
        {
            return StringUtils.repeat(value.toString(), count);
        }

        Token(Object obj)
        {
            value = obj;
            count = 1;
        }

        Token(Object obj, int i)
        {
            value = obj;
            count = i;
        }
    }


    static final Object H = "H";
    public static final String ISO_EXTENDED_FORMAT_PATTERN = "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.S'S'";
    static final Object M = "M";
    static final Object S = "S";
    static final Object d = "d";
    static final Object m = "m";
    static final Object s = "s";
    static final Object y = "y";

    public DurationFormatUtils()
    {
    }

    static String format(Token atoken[], long l, long l1, long l2, long l3, long l4, long l5, long l6, 
            boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = atoken.length;
        boolean flag1 = false;
        int j = 0;
        do
        {
            if (j < i)
            {
                Token token = atoken[j];
                Object obj = token.getValue();
                int k = token.getCount();
                if (obj instanceof StringBuilder)
                {
                    stringbuilder.append(obj.toString());
                } else
                if (obj == y)
                {
                    stringbuilder.append(paddedValue(l, flag, k));
                    flag1 = false;
                } else
                if (obj == M)
                {
                    stringbuilder.append(paddedValue(l1, flag, k));
                    flag1 = false;
                } else
                if (obj == d)
                {
                    stringbuilder.append(paddedValue(l2, flag, k));
                    flag1 = false;
                } else
                if (obj == H)
                {
                    stringbuilder.append(paddedValue(l3, flag, k));
                    flag1 = false;
                } else
                if (obj == m)
                {
                    stringbuilder.append(paddedValue(l4, flag, k));
                    flag1 = false;
                } else
                if (obj == s)
                {
                    stringbuilder.append(paddedValue(l5, flag, k));
                    flag1 = true;
                } else
                if (obj == S)
                {
                    if (flag1)
                    {
                        int i1;
                        if (flag)
                        {
                            i1 = Math.max(3, k);
                        } else
                        {
                            i1 = 3;
                        }
                        stringbuilder.append(paddedValue(l6, true, i1));
                    } else
                    {
                        stringbuilder.append(paddedValue(l6, flag, k));
                    }
                    flag1 = false;
                }
            } else
            {
                return stringbuilder.toString();
            }
            j++;
        } while (true);
    }

    public static String formatDuration(long l, String s1)
    {
        return formatDuration(l, s1, true);
    }

    public static String formatDuration(long l, String s1, boolean flag)
    {
        Token atoken[] = lexx(s1);
        long l1 = 0L;
        long l2 = 0L;
        long l3 = 0L;
        long l4 = 0L;
        if (Token.containsTokenWithValue(atoken, d))
        {
            l1 = l / 0x5265c00L;
            l -= 0x5265c00L * l1;
        }
        if (Token.containsTokenWithValue(atoken, H))
        {
            l2 = l / 0x36ee80L;
            l -= 0x36ee80L * l2;
        }
        if (Token.containsTokenWithValue(atoken, m))
        {
            l3 = l / 60000L;
            l -= 60000L * l3;
        }
        long l5;
        if (Token.containsTokenWithValue(atoken, s))
        {
            l4 = l / 1000L;
            l5 = l - 1000L * l4;
        } else
        {
            l5 = l;
        }
        return format(atoken, 0L, 0L, l1, l2, l3, l4, l5, flag);
    }

    public static String formatDurationHMS(long l)
    {
        return formatDuration(l, "H:mm:ss.SSS");
    }

    public static String formatDurationISO(long l)
    {
        return formatDuration(l, "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.S'S'", false);
    }

    public static String formatDurationWords(long l, boolean flag, boolean flag1)
    {
        String s1 = formatDuration(l, "d' days 'H' hours 'm' minutes 's' seconds'");
        if (flag)
        {
            String s4 = (new StringBuilder()).append(" ").append(s1).toString();
            s1 = StringUtils.replaceOnce(s4, " 0 days", "");
            String s2;
            String s3;
            if (s1.length() != s4.length())
            {
                String s5 = StringUtils.replaceOnce(s1, " 0 hours", "");
                if (s5.length() != s1.length())
                {
                    s1 = StringUtils.replaceOnce(s5, " 0 minutes", "");
                    if (s1.length() != s1.length())
                    {
                        s1 = StringUtils.replaceOnce(s1, " 0 seconds", "");
                    }
                }
            } else
            {
                s1 = s4;
            }
            if (s1.length() != 0)
            {
                s1 = s1.substring(1);
            }
        }
        if (flag1)
        {
            s2 = StringUtils.replaceOnce(s1, " 0 seconds", "");
            if (s2.length() != s1.length())
            {
                s1 = StringUtils.replaceOnce(s2, " 0 minutes", "");
                if (s1.length() != s2.length())
                {
                    s3 = StringUtils.replaceOnce(s1, " 0 hours", "");
                    if (s3.length() != s1.length())
                    {
                        s1 = StringUtils.replaceOnce(s3, " 0 days", "");
                    }
                } else
                {
                    s1 = s2;
                }
            }
        }
        return StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce((new StringBuilder()).append(" ").append(s1).toString(), " 1 seconds", " 1 second"), " 1 minutes", " 1 minute"), " 1 hours", " 1 hour"), " 1 days", " 1 day").trim();
    }

    public static String formatPeriod(long l, long l1, String s1)
    {
        return formatPeriod(l, l1, s1, true, TimeZone.getDefault());
    }

    public static String formatPeriod(long l, long l1, String s1, boolean flag, TimeZone timezone)
    {
        Token atoken[] = lexx(s1);
        Calendar calendar = Calendar.getInstance(timezone);
        calendar.setTime(new Date(l));
        Calendar calendar1 = Calendar.getInstance(timezone);
        calendar1.setTime(new Date(l1));
        int i = calendar1.get(14) - calendar.get(14);
        int j = calendar1.get(13) - calendar.get(13);
        int k = calendar1.get(12) - calendar.get(12);
        int i1 = calendar1.get(11) - calendar.get(11);
        int j1 = calendar1.get(5) - calendar.get(5);
        int k1 = calendar1.get(2) - calendar.get(2);
        int i2 = calendar1.get(1) - calendar.get(1);
        while (i < 0) 
        {
            i += 1000;
            j--;
        }
        while (j < 0) 
        {
            j += 60;
            k--;
        }
        while (k < 0) 
        {
            k += 60;
            i1--;
        }
        while (i1 < 0) 
        {
            i1 += 24;
            j1--;
        }
        int j2;
        int k2;
        if (Token.containsTokenWithValue(atoken, M))
        {
            j2 = j1;
            k2 = k1;
            while (j2 < 0) 
            {
                j2 += calendar.getActualMaximum(5);
                k2--;
                calendar.add(2, 1);
            }
            while (k2 < 0) 
            {
                k2 += 12;
                i2--;
            }
            if (!Token.containsTokenWithValue(atoken, y) && i2 != 0)
            {
                for (; i2 != 0; i2 = 0)
                {
                    k2 += i2 * 12;
                }

            }
        } else
        {
            if (!Token.containsTokenWithValue(atoken, y))
            {
                int j6 = calendar1.get(1);
                if (k1 < 0)
                {
                    j6--;
                }
                while (calendar.get(1) != j6) 
                {
                    int k6 = j1 + (calendar.getActualMaximum(6) - calendar.get(6));
                    if ((calendar instanceof GregorianCalendar) && calendar.get(2) == 1 && calendar.get(5) == 29)
                    {
                        k6++;
                    }
                    calendar.add(1, 1);
                    j1 = k6 + calendar.get(6);
                }
                i2 = 0;
            }
            for (; calendar.get(2) != calendar1.get(2); calendar.add(2, 1))
            {
                j1 += calendar.getActualMaximum(5);
            }

            j2 = j1;
            k2 = 0;
            while (j2 < 0) 
            {
                j2 += calendar.getActualMaximum(5);
                k2--;
                calendar.add(2, 1);
            }
        }
        int l2 = k2;
        int i3 = j2;
        int j3;
        int k3;
        int l3;
        int i4;
        int j4;
        int k4;
        int l4;
        int i5;
        if (!Token.containsTokenWithValue(atoken, d))
        {
            int i6 = i1 + i3 * 24;
            j3 = 0;
            k3 = i6;
        } else
        {
            j3 = i3;
            k3 = i1;
        }
        if (!Token.containsTokenWithValue(atoken, H))
        {
            int l5 = k + k3 * 60;
            l3 = 0;
            i4 = l5;
        } else
        {
            l3 = k3;
            i4 = k;
        }
        if (!Token.containsTokenWithValue(atoken, m))
        {
            int k5 = j + i4 * 60;
            j4 = 0;
            k4 = k5;
        } else
        {
            j4 = i4;
            k4 = j;
        }
        if (!Token.containsTokenWithValue(atoken, s))
        {
            int j5 = i + k4 * 1000;
            l4 = 0;
            i5 = j5;
        } else
        {
            l4 = k4;
            i5 = i;
        }
        return format(atoken, i2, l2, j3, l3, j4, l4, i5, flag);
    }

    public static String formatPeriodISO(long l, long l1)
    {
        return formatPeriod(l, l1, "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.S'S'", false, TimeZone.getDefault());
    }

    static Token[] lexx(String s1)
    {
        ArrayList arraylist;
        int i;
        Token token;
        StringBuilder stringbuilder;
        boolean flag;
        arraylist = new ArrayList(s1.length());
        i = 0;
        token = null;
        stringbuilder = null;
        flag = false;
_L2:
        char c;
        if (i >= s1.length())
        {
            break MISSING_BLOCK_LABEL_331;
        }
        c = s1.charAt(i);
        if (!flag || c == '\'')
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuilder.append(c);
_L12:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        c;
        JVM INSTR lookupswitch 8: default 140
    //                   39: 207
    //                   72: 280
    //                   77: 264
    //                   83: 304
    //                   100: 272
    //                   109: 288
    //                   115: 296
    //                   121: 256;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L7:
        break MISSING_BLOCK_LABEL_304;
_L3:
        Object obj;
        if (stringbuilder == null)
        {
            stringbuilder = new StringBuilder();
            arraylist.add(new Token(stringbuilder));
        }
        stringbuilder.append(c);
        obj = null;
_L13:
        if (obj != null)
        {
            if (token != null && token.getValue() == obj)
            {
                token.increment();
            } else
            {
                token = new Token(obj);
                arraylist.add(token);
            }
            stringbuilder = null;
        }
          goto _L12
_L4:
        if (flag)
        {
            stringbuilder = null;
            flag = false;
            obj = null;
        } else
        {
            stringbuilder = new StringBuilder();
            arraylist.add(new Token(stringbuilder));
            flag = true;
            obj = null;
        }
          goto _L13
_L11:
        obj = y;
          goto _L13
_L6:
        obj = M;
          goto _L13
_L8:
        obj = d;
          goto _L13
_L5:
        obj = H;
          goto _L13
_L9:
        obj = m;
          goto _L13
_L10:
        obj = s;
          goto _L13
        obj = S;
          goto _L13
        if (flag)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unmatched quote in format: ").append(s1).toString());
        }
        return (Token[])arraylist.toArray(new Token[arraylist.size()]);
          goto _L12
    }

    private static String paddedValue(long l, boolean flag, int i)
    {
        String s1 = Long.toString(l);
        if (flag)
        {
            s1 = StringUtils.leftPad(s1, i, '0');
        }
        return s1;
    }

}
