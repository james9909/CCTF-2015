// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.language;

import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class Metaphone
    implements StringEncoder
{

    private static final String FRONTV = "EIY";
    private static final String VARSON = "CSPTG";
    private static final String VOWELS = "AEIOU";
    private int maxCodeLen;

    public Metaphone()
    {
        maxCodeLen = 4;
    }

    private boolean isLastChar(int i, int j)
    {
        return j + 1 == i;
    }

    private boolean isNextChar(StringBuffer stringbuffer, int i, char c)
    {
        boolean flag = false;
        if (i >= 0)
        {
            int j = -1 + stringbuffer.length();
            flag = false;
            if (i < j)
            {
                char c1 = stringbuffer.charAt(i + 1);
                flag = false;
                if (c1 == c)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    private boolean isPreviousChar(StringBuffer stringbuffer, int i, char c)
    {
        boolean flag = false;
        if (i > 0)
        {
            int j = stringbuffer.length();
            flag = false;
            if (i < j)
            {
                char c1 = stringbuffer.charAt(i - 1);
                flag = false;
                if (c1 == c)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    private boolean isVowel(StringBuffer stringbuffer, int i)
    {
        return "AEIOU".indexOf(stringbuffer.charAt(i)) >= 0;
    }

    private boolean regionMatch(StringBuffer stringbuffer, int i, String s)
    {
        boolean flag = false;
        if (i >= 0)
        {
            int j = -1 + (i + s.length());
            int k = stringbuffer.length();
            flag = false;
            if (j < k)
            {
                flag = stringbuffer.substring(i, i + s.length()).equals(s);
            }
        }
        return flag;
    }

    public Object encode(Object obj)
    {
        if (!(obj instanceof String))
        {
            throw new EncoderException("Parameter supplied to Metaphone encode is not of type java.lang.String");
        } else
        {
            return metaphone((String)obj);
        }
    }

    public String encode(String s)
    {
        return metaphone(s);
    }

    public int getMaxCodeLen()
    {
        return maxCodeLen;
    }

    public boolean isMetaphoneEqual(String s, String s1)
    {
        return metaphone(s).equals(metaphone(s1));
    }

    public String metaphone(String s)
    {
        char ac[];
        StringBuffer stringbuffer;
        StringBuffer stringbuffer1;
        if (s == null || s.length() == 0)
        {
            return "";
        }
        if (s.length() == 1)
        {
            return s.toUpperCase(Locale.ENGLISH);
        }
        ac = s.toUpperCase(Locale.ENGLISH).toCharArray();
        stringbuffer = new StringBuffer(40);
        stringbuffer1 = new StringBuffer(10);
        ac[0];
        JVM INSTR lookupswitch 6: default 124
    //                   65: 243
    //                   71: 212
    //                   75: 212
    //                   80: 212
    //                   87: 274
    //                   88: 334;
           goto _L1 _L2 _L3 _L3 _L3 _L4 _L5
_L1:
        stringbuffer.append(ac);
_L9:
        int i;
        i = stringbuffer.length();
_L8:
        int j;
        char c;
        for (j = 0; stringbuffer1.length() >= getMaxCodeLen() || j >= i;)
        {
            break MISSING_BLOCK_LABEL_1320;
        }

        c = stringbuffer.charAt(j);
        if (c == 'C' || !isPreviousChar(stringbuffer, j, c)) goto _L7; else goto _L6
_L6:
        j++;
_L27:
        if (stringbuffer1.length() > getMaxCodeLen())
        {
            stringbuffer1.setLength(getMaxCodeLen());
        }
          goto _L8
_L3:
        if (ac[1] == 'N')
        {
            stringbuffer.append(ac, 1, -1 + ac.length);
        } else
        {
            stringbuffer.append(ac);
        }
          goto _L9
_L2:
        if (ac[1] == 'E')
        {
            stringbuffer.append(ac, 1, -1 + ac.length);
        } else
        {
            stringbuffer.append(ac);
        }
          goto _L9
_L4:
        if (ac[1] == 'R')
        {
            stringbuffer.append(ac, 1, -1 + ac.length);
        } else
        if (ac[1] == 'H')
        {
            stringbuffer.append(ac, 1, -1 + ac.length);
            stringbuffer.setCharAt(0, 'W');
        } else
        {
            stringbuffer.append(ac);
        }
          goto _L9
_L5:
        ac[0] = 'S';
        stringbuffer.append(ac);
          goto _L9
_L7:
        c;
        JVM INSTR tableswitch 65 90: default 468
    //                   65 474
    //                   66 490
    //                   67 524
    //                   68 724
    //                   69 474
    //                   70 1011
    //                   71 790
    //                   72 956
    //                   73 474
    //                   74 1011
    //                   75 1022
    //                   76 1011
    //                   77 1011
    //                   78 1011
    //                   79 474
    //                   80 1061
    //                   81 1095
    //                   82 1011
    //                   83 1106
    //                   84 1164
    //                   85 474
    //                   86 1245
    //                   87 1256
    //                   88 1290
    //                   89 1256
    //                   90 1309;
           goto _L10 _L11 _L12 _L13 _L14 _L11 _L15 _L16 _L17 _L11 _L15 _L18 _L15 _L15 _L15 _L11 _L19 _L20 _L15 _L21 _L22 _L11 _L23 _L24 _L25 _L24 _L26
_L10:
        break; /* Loop/switch isn't completed */
_L26:
        break MISSING_BLOCK_LABEL_1309;
_L28:
        j++;
          goto _L27
_L11:
        if (j == 0)
        {
            stringbuffer1.append(c);
        }
          goto _L28
_L12:
        if (!isPreviousChar(stringbuffer, j, 'M') || !isLastChar(i, j))
        {
            stringbuffer1.append(c);
        }
          goto _L28
_L13:
        if (!isPreviousChar(stringbuffer, j, 'S') || isLastChar(i, j) || "EIY".indexOf(stringbuffer.charAt(j + 1)) < 0)
        {
            if (regionMatch(stringbuffer, j, "CIA"))
            {
                stringbuffer1.append('X');
            } else
            if (!isLastChar(i, j) && "EIY".indexOf(stringbuffer.charAt(j + 1)) >= 0)
            {
                stringbuffer1.append('S');
            } else
            if (isPreviousChar(stringbuffer, j, 'S') && isNextChar(stringbuffer, j, 'H'))
            {
                stringbuffer1.append('K');
            } else
            if (isNextChar(stringbuffer, j, 'H'))
            {
                if (j == 0 && i >= 3 && isVowel(stringbuffer, 2))
                {
                    stringbuffer1.append('K');
                } else
                {
                    stringbuffer1.append('X');
                }
            } else
            {
                stringbuffer1.append('K');
            }
        }
          goto _L28
_L14:
        if (!isLastChar(i, j + 1) && isNextChar(stringbuffer, j, 'G') && "EIY".indexOf(stringbuffer.charAt(j + 2)) >= 0)
        {
            stringbuffer1.append('J');
            j += 2;
        } else
        {
            stringbuffer1.append('T');
        }
          goto _L28
_L16:
        if ((!isLastChar(i, j + 1) || !isNextChar(stringbuffer, j, 'H')) && (isLastChar(i, j + 1) || !isNextChar(stringbuffer, j, 'H') || isVowel(stringbuffer, j + 2)) && (j <= 0 || !regionMatch(stringbuffer, j, "GN") && !regionMatch(stringbuffer, j, "GNED")))
        {
            boolean flag;
            if (isPreviousChar(stringbuffer, j, 'G'))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!isLastChar(i, j) && "EIY".indexOf(stringbuffer.charAt(j + 1)) >= 0 && !flag)
            {
                stringbuffer1.append('J');
            } else
            {
                stringbuffer1.append('K');
            }
        }
          goto _L28
_L17:
        if (!isLastChar(i, j) && (j <= 0 || "CSPTG".indexOf(stringbuffer.charAt(j - 1)) < 0) && isVowel(stringbuffer, j + 1))
        {
            stringbuffer1.append('H');
        }
          goto _L28
_L15:
        stringbuffer1.append(c);
          goto _L28
_L18:
        if (j > 0)
        {
            if (!isPreviousChar(stringbuffer, j, 'C'))
            {
                stringbuffer1.append(c);
            }
        } else
        {
            stringbuffer1.append(c);
        }
          goto _L28
_L19:
        if (isNextChar(stringbuffer, j, 'H'))
        {
            stringbuffer1.append('F');
        } else
        {
            stringbuffer1.append(c);
        }
          goto _L28
_L20:
        stringbuffer1.append('K');
          goto _L28
_L21:
        if (regionMatch(stringbuffer, j, "SH") || regionMatch(stringbuffer, j, "SIO") || regionMatch(stringbuffer, j, "SIA"))
        {
            stringbuffer1.append('X');
        } else
        {
            stringbuffer1.append('S');
        }
          goto _L28
_L22:
        if (regionMatch(stringbuffer, j, "TIA") || regionMatch(stringbuffer, j, "TIO"))
        {
            stringbuffer1.append('X');
        } else
        if (!regionMatch(stringbuffer, j, "TCH"))
        {
            if (regionMatch(stringbuffer, j, "TH"))
            {
                stringbuffer1.append('0');
            } else
            {
                stringbuffer1.append('T');
            }
        }
          goto _L28
_L23:
        stringbuffer1.append('F');
          goto _L28
_L24:
        if (!isLastChar(i, j) && isVowel(stringbuffer, j + 1))
        {
            stringbuffer1.append(c);
        }
          goto _L28
_L25:
        stringbuffer1.append('K');
        stringbuffer1.append('S');
          goto _L28
        stringbuffer1.append('S');
          goto _L28
        return stringbuffer1.toString();
          goto _L8
    }

    public void setMaxCodeLen(int i)
    {
        maxCodeLen = i;
    }
}
