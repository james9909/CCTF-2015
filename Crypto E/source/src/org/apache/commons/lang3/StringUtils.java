// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.nio.charset.Charset;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package org.apache.commons.lang3:
//            CharSequenceUtils, ArrayUtils, CharUtils, ObjectUtils

public class StringUtils
{

    public static final String CR = "\r";
    public static final String EMPTY = "";
    public static final int INDEX_NOT_FOUND = -1;
    public static final String LF = "\n";
    private static final int PAD_LIMIT = 8192;
    public static final String SPACE = " ";
    private static final Pattern WHITESPACE_PATTERN = Pattern.compile("(?: |\\u00A0|\\s|[\\s&&[^ ]])\\s*");

    public StringUtils()
    {
    }

    public static String abbreviate(String s, int i)
    {
        return abbreviate(s, 0, i);
    }

    public static String abbreviate(String s, int i, int j)
    {
        if (s == null)
        {
            s = null;
        } else
        {
            if (j < 4)
            {
                throw new IllegalArgumentException("Minimum abbreviation width is 4");
            }
            if (s.length() > j)
            {
                if (i > s.length())
                {
                    i = s.length();
                }
                if (s.length() - i < j - 3)
                {
                    i = s.length() - (j - 3);
                }
                if (i <= 4)
                {
                    return (new StringBuilder()).append(s.substring(0, j - 3)).append("...").toString();
                }
                if (j < 7)
                {
                    throw new IllegalArgumentException("Minimum abbreviation width with offset is 7");
                }
                if (-3 + (i + j) < s.length())
                {
                    return (new StringBuilder()).append("...").append(abbreviate(s.substring(i), j - 3)).toString();
                } else
                {
                    return (new StringBuilder()).append("...").append(s.substring(s.length() - (j - 3))).toString();
                }
            }
        }
        return s;
    }

    public static String abbreviateMiddle(String s, String s1, int i)
    {
        while (isEmpty(s) || isEmpty(s1) || i >= s.length() || i < 2 + s1.length()) 
        {
            return s;
        }
        int j = i - s1.length();
        int k = j / 2 + j % 2;
        int l = s.length() - j / 2;
        StringBuilder stringbuilder = new StringBuilder(i);
        stringbuilder.append(s.substring(0, k));
        stringbuilder.append(s1);
        stringbuilder.append(s.substring(l));
        return stringbuilder.toString();
    }

    private static transient String appendIfMissing(String s, CharSequence charsequence, boolean flag, CharSequence acharsequence[])
    {
        if (s != null && !isEmpty(charsequence) && !endsWith(s, charsequence, flag)) goto _L2; else goto _L1
_L1:
        return s;
_L2:
label0:
        {
            if (acharsequence == null || acharsequence.length <= 0)
            {
                break label0;
            }
            int i = acharsequence.length;
            int j = 0;
            do
            {
                if (j >= i)
                {
                    break label0;
                }
                if (endsWith(s, acharsequence[j], flag))
                {
                    break;
                }
                j++;
            } while (true);
        }
        if (true) goto _L1; else goto _L3
_L3:
        return (new StringBuilder()).append(s).append(charsequence.toString()).toString();
    }

    public static transient String appendIfMissing(String s, CharSequence charsequence, CharSequence acharsequence[])
    {
        return appendIfMissing(s, charsequence, false, acharsequence);
    }

    public static transient String appendIfMissingIgnoreCase(String s, CharSequence charsequence, CharSequence acharsequence[])
    {
        return appendIfMissing(s, charsequence, true, acharsequence);
    }

    public static String capitalize(String s)
    {
        if (s != null)
        {
            int i = s.length();
            char c;
            if (i != 0)
            {
                if (!Character.isTitleCase(c = s.charAt(0)))
                {
                    return (new StringBuilder(i)).append(Character.toTitleCase(c)).append(s.substring(1)).toString();
                }
            }
        }
        return s;
    }

    public static String center(String s, int i)
    {
        return center(s, i, ' ');
    }

    public static String center(String s, int i, char c)
    {
        if (s != null && i > 0)
        {
            int j = s.length();
            int k = i - j;
            if (k > 0)
            {
                return rightPad(leftPad(s, j + k / 2, c), i, c);
            }
        }
        return s;
    }

    public static String center(String s, int i, String s1)
    {
        if (s != null && i > 0)
        {
            if (isEmpty(s1))
            {
                s1 = " ";
            }
            int j = s.length();
            int k = i - j;
            if (k > 0)
            {
                return rightPad(leftPad(s, j + k / 2, s1), i, s1);
            }
        }
        return s;
    }

    public static String chomp(String s)
    {
        if (!isEmpty(s)) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        char c1;
        if (s.length() != 1)
        {
            break; /* Loop/switch isn't completed */
        }
        if ((c1 = s.charAt(0)) == '\r' || c1 == '\n')
        {
            return "";
        }
        if (true) goto _L1; else goto _L3
_L3:
        int i;
        char c;
        i = -1 + s.length();
        c = s.charAt(i);
        if (c != '\n') goto _L5; else goto _L4
_L4:
        if (s.charAt(i - 1) == '\r')
        {
            i--;
        }
_L7:
        return s.substring(0, i);
_L5:
        if (c != '\r')
        {
            i++;
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static String chomp(String s, String s1)
    {
        return removeEnd(s, s1);
    }

    public static String chop(String s)
    {
        String s1;
        if (s == null)
        {
            s1 = null;
        } else
        {
            int i = s.length();
            if (i < 2)
            {
                return "";
            }
            int j = i - 1;
            s1 = s.substring(0, j);
            if (s.charAt(j) == '\n' && s1.charAt(j - 1) == '\r')
            {
                return s1.substring(0, j - 1);
            }
        }
        return s1;
    }

    private static int commonPrefixLength(CharSequence charsequence, CharSequence charsequence1)
    {
        String as[] = new String[2];
        as[0] = charsequence.toString();
        as[1] = charsequence1.toString();
        int i = getCommonPrefix(as).length();
        if (i > 4)
        {
            return 4;
        } else
        {
            return i;
        }
    }

    public static boolean contains(CharSequence charsequence, int i)
    {
        while (isEmpty(charsequence) || CharSequenceUtils.indexOf(charsequence, i, 0) < 0) 
        {
            return false;
        }
        return true;
    }

    public static boolean contains(CharSequence charsequence, CharSequence charsequence1)
    {
        while (charsequence == null || charsequence1 == null || CharSequenceUtils.indexOf(charsequence, charsequence1, 0) < 0) 
        {
            return false;
        }
        return true;
    }

    public static boolean containsAny(CharSequence charsequence, CharSequence charsequence1)
    {
        if (charsequence1 == null)
        {
            return false;
        } else
        {
            return containsAny(charsequence, CharSequenceUtils.toCharArray(charsequence1));
        }
    }

    public static transient boolean containsAny(CharSequence charsequence, char ac[])
    {
        boolean flag;
        flag = true;
        if (!isEmpty(charsequence) && !ArrayUtils.isEmpty(ac))
        {
            break MISSING_BLOCK_LABEL_20;
        }
        flag = false;
        return flag;
        int i;
        int j;
        int k;
        int l;
        int i1;
        char c;
        int j1;
        i = charsequence.length();
        j = ac.length;
        k = i - 1;
        l = j - 1;
        i1 = 0;
          goto _L1
        continue; /* Loop/switch isn't completed */
        i1++;
    }

    public static boolean containsIgnoreCase(CharSequence charsequence, CharSequence charsequence1)
    {
        if (charsequence != null && charsequence1 != null)
        {
            int i = charsequence1.length();
            int j = charsequence.length() - i;
            int k = 0;
            while (k <= j) 
            {
                if (CharSequenceUtils.regionMatches(charsequence, true, k, charsequence1, 0, i))
                {
                    return true;
                }
                k++;
            }
        }
        return false;
    }

    public static boolean containsNone(CharSequence charsequence, String s)
    {
        if (charsequence == null || s == null)
        {
            return true;
        } else
        {
            return containsNone(charsequence, s.toCharArray());
        }
    }

    public static transient boolean containsNone(CharSequence charsequence, char ac[])
    {
        if (charsequence != null && ac != null) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L6:
        return flag;
_L2:
        int i;
        int j;
        int k;
        int l;
        int i1;
        i = charsequence.length();
        j = i - 1;
        k = ac.length;
        l = k - 1;
        i1 = 0;
_L10:
        char c;
        int j1;
        if (i1 >= i)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        c = charsequence.charAt(i1);
        j1 = 0;
_L9:
        if (j1 >= k) goto _L4; else goto _L3
_L3:
        boolean flag1;
        if (ac[j1] != c)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag1 = Character.isHighSurrogate(c);
        flag = false;
        if (!flag1) goto _L6; else goto _L5
_L5:
        flag = false;
        if (j1 == l) goto _L6; else goto _L7
_L7:
        char c1;
        char c2;
        if (i1 >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        c1 = ac[j1 + 1];
        c2 = charsequence.charAt(i1 + 1);
        flag = false;
        if (c1 == c2) goto _L6; else goto _L8
_L8:
        j1++;
          goto _L9
_L4:
        i1++;
          goto _L10
        return true;
    }

    public static boolean containsOnly(CharSequence charsequence, String s)
    {
        if (charsequence == null || s == null)
        {
            return false;
        } else
        {
            return containsOnly(charsequence, s.toCharArray());
        }
    }

    public static transient boolean containsOnly(CharSequence charsequence, char ac[])
    {
        boolean flag = true;
        if (ac == null || charsequence == null)
        {
            flag = false;
        } else
        if (charsequence.length() != 0)
        {
            if (ac.length == 0)
            {
                return false;
            }
            if (indexOfAnyBut(charsequence, ac) != -1)
            {
                return false;
            }
        }
        return flag;
    }

    public static boolean containsWhitespace(CharSequence charsequence)
    {
        if (!isEmpty(charsequence))
        {
            int i = charsequence.length();
            int j = 0;
            while (j < i) 
            {
                if (Character.isWhitespace(charsequence.charAt(j)))
                {
                    return true;
                }
                j++;
            }
        }
        return false;
    }

    public static int countMatches(CharSequence charsequence, CharSequence charsequence1)
    {
        int i = 0;
        if (!isEmpty(charsequence) && !isEmpty(charsequence1)) goto _L2; else goto _L1
_L1:
        int j = 0;
_L4:
        return j;
_L2:
        j = 0;
        do
        {
            int k = CharSequenceUtils.indexOf(charsequence, charsequence1, i);
            if (k == -1)
            {
                continue;
            }
            j++;
            i = k + charsequence1.length();
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static CharSequence defaultIfBlank(CharSequence charsequence, CharSequence charsequence1)
    {
        if (isBlank(charsequence))
        {
            return charsequence1;
        } else
        {
            return charsequence;
        }
    }

    public static CharSequence defaultIfEmpty(CharSequence charsequence, CharSequence charsequence1)
    {
        if (isEmpty(charsequence))
        {
            return charsequence1;
        } else
        {
            return charsequence;
        }
    }

    public static String defaultString(String s)
    {
        if (s == null)
        {
            s = "";
        }
        return s;
    }

    public static String defaultString(String s, String s1)
    {
        if (s == null)
        {
            return s1;
        } else
        {
            return s;
        }
    }

    public static String deleteWhitespace(String s)
    {
        if (!isEmpty(s))
        {
            int i = s.length();
            char ac[] = new char[i];
            int j = 0;
            int k = 0;
            while (j < i) 
            {
                int l;
                if (!Character.isWhitespace(s.charAt(j)))
                {
                    l = k + 1;
                    ac[k] = s.charAt(j);
                } else
                {
                    l = k;
                }
                j++;
                k = l;
            }
            if (k != i)
            {
                return new String(ac, 0, k);
            }
        }
        return s;
    }

    public static String difference(String s, String s1)
    {
        if (s == null)
        {
            return s1;
        }
        if (s1 == null)
        {
            return s;
        }
        int i = indexOfDifference(s, s1);
        if (i == -1)
        {
            return "";
        } else
        {
            return s1.substring(i);
        }
    }

    public static boolean endsWith(CharSequence charsequence, CharSequence charsequence1)
    {
        return endsWith(charsequence, charsequence1, false);
    }

    private static boolean endsWith(CharSequence charsequence, CharSequence charsequence1, boolean flag)
    {
        boolean flag1;
        if (charsequence == null || charsequence1 == null)
        {
            flag1 = false;
            if (charsequence == null)
            {
                flag1 = false;
                if (charsequence1 == null)
                {
                    flag1 = true;
                }
            }
        } else
        {
            int i = charsequence1.length();
            int j = charsequence.length();
            flag1 = false;
            if (i <= j)
            {
                return CharSequenceUtils.regionMatches(charsequence, flag, charsequence.length() - charsequence1.length(), charsequence1, 0, charsequence1.length());
            }
        }
        return flag1;
    }

    public static transient boolean endsWithAny(CharSequence charsequence, CharSequence acharsequence[])
    {
        if (!isEmpty(charsequence) && !ArrayUtils.isEmpty(acharsequence))
        {
            int i = acharsequence.length;
            int j = 0;
            while (j < i) 
            {
                if (endsWith(charsequence, acharsequence[j]))
                {
                    return true;
                }
                j++;
            }
        }
        return false;
    }

    public static boolean endsWithIgnoreCase(CharSequence charsequence, CharSequence charsequence1)
    {
        return endsWith(charsequence, charsequence1, true);
    }

    public static boolean equals(CharSequence charsequence, CharSequence charsequence1)
    {
        boolean flag;
        if (charsequence == charsequence1)
        {
            flag = true;
        } else
        {
            flag = false;
            if (charsequence != null)
            {
                flag = false;
                if (charsequence1 != null)
                {
                    if ((charsequence instanceof String) && (charsequence1 instanceof String))
                    {
                        return charsequence.equals(charsequence1);
                    } else
                    {
                        return CharSequenceUtils.regionMatches(charsequence, false, 0, charsequence1, 0, Math.max(charsequence.length(), charsequence1.length()));
                    }
                }
            }
        }
        return flag;
    }

    public static boolean equalsIgnoreCase(CharSequence charsequence, CharSequence charsequence1)
    {
        if (charsequence != null && charsequence1 != null) goto _L2; else goto _L1
_L1:
        if (charsequence != charsequence1) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (charsequence != charsequence1)
        {
            if (charsequence.length() != charsequence1.length())
            {
                return false;
            } else
            {
                return CharSequenceUtils.regionMatches(charsequence, true, 0, charsequence1, 0, charsequence.length());
            }
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public static transient String getCommonPrefix(String as[])
    {
        if (as == null || as.length == 0)
        {
            return "";
        }
        int i = indexOfDifference(as);
        if (i == -1)
        {
            if (as[0] == null)
            {
                return "";
            } else
            {
                return as[0];
            }
        }
        if (i == 0)
        {
            return "";
        } else
        {
            return as[0].substring(0, i);
        }
    }

    public static double getJaroWinklerDistance(CharSequence charsequence, CharSequence charsequence1)
    {
        if (charsequence == null || charsequence1 == null)
        {
            throw new IllegalArgumentException("Strings must not be null");
        } else
        {
            double d = score(charsequence, charsequence1);
            return (double)Math.round(100D * (d + 0.10000000000000001D * (double)commonPrefixLength(charsequence, charsequence1) * (1.0D - d))) / 100D;
        }
    }

    public static int getLevenshteinDistance(CharSequence charsequence, CharSequence charsequence1)
    {
        if (charsequence == null || charsequence1 == null)
        {
            throw new IllegalArgumentException("Strings must not be null");
        }
        int i = charsequence.length();
        int j = charsequence1.length();
        if (i == 0)
        {
            return j;
        }
        if (j == 0)
        {
            return i;
        }
        int l;
        int ai[];
        int ai1[];
        int j1;
        if (i > j)
        {
            l = charsequence.length();
        } else
        {
            int k = j;
            j = i;
            l = k;
            CharSequence charsequence2 = charsequence1;
            charsequence1 = charsequence;
            charsequence = charsequence2;
        }
        ai = new int[j + 1];
        ai1 = new int[j + 1];
        for (int i1 = 0; i1 <= j; i1++)
        {
            ai[i1] = i1;
        }

        j1 = 1;
        int ai3[];
        for (int ai2[] = ai1; j1 <= l; ai2 = ai3)
        {
            char c = charsequence.charAt(j1 - 1);
            ai2[0] = j1;
            int k1 = 1;
            while (k1 <= j) 
            {
                int l1;
                if (charsequence1.charAt(k1 - 1) == c)
                {
                    l1 = 0;
                } else
                {
                    l1 = 1;
                }
                ai2[k1] = Math.min(Math.min(1 + ai2[k1 - 1], 1 + ai[k1]), l1 + ai[k1 - 1]);
                k1++;
            }
            j1++;
            ai3 = ai;
            ai = ai2;
        }

        return ai[j];
    }

    public static int getLevenshteinDistance(CharSequence charsequence, CharSequence charsequence1, int i)
    {
        if (charsequence == null || charsequence1 == null)
        {
            throw new IllegalArgumentException("Strings must not be null");
        }
        if (i < 0)
        {
            throw new IllegalArgumentException("Threshold must not be negative");
        }
        int j = charsequence.length();
        int k = charsequence1.length();
        if (j == 0)
        {
            if (k <= i)
            {
                return k;
            } else
            {
                return -1;
            }
        }
        if (k == 0)
        {
            if (j <= i)
            {
                return j;
            } else
            {
                return -1;
            }
        }
        int ai[];
        int ai1[];
        int l;
        int j1;
        if (j > k)
        {
            int i2 = charsequence.length();
            j = k;
            k = i2;
        } else
        {
            CharSequence charsequence2 = charsequence1;
            charsequence1 = charsequence;
            charsequence = charsequence2;
        }
        ai = new int[j + 1];
        ai1 = new int[j + 1];
        l = 1 + Math.min(j, i);
        for (int i1 = 0; i1 < l; i1++)
        {
            ai[i1] = i1;
        }

        Arrays.fill(ai, l, ai.length, 0x7fffffff);
        Arrays.fill(ai1, 0x7fffffff);
        j1 = 1;
        int ai3[];
        for (int ai2[] = ai1; j1 <= k; ai2 = ai3)
        {
            char c = charsequence.charAt(j1 - 1);
            ai2[0] = j1;
            int k1 = Math.max(1, j1 - i);
            int l1;
            if (j1 > 0x7fffffff - i)
            {
                l1 = j;
            } else
            {
                l1 = Math.min(j, j1 + i);
            }
            if (k1 > l1)
            {
                return -1;
            }
            if (k1 > 1)
            {
                ai2[k1 - 1] = 0x7fffffff;
            }
            while (k1 <= l1) 
            {
                if (charsequence1.charAt(k1 - 1) == c)
                {
                    ai2[k1] = ai[k1 - 1];
                } else
                {
                    ai2[k1] = 1 + Math.min(Math.min(ai2[k1 - 1], ai[k1]), ai[k1 - 1]);
                }
                k1++;
            }
            j1++;
            ai3 = ai;
            ai = ai2;
        }

        if (ai[j] <= i)
        {
            return ai[j];
        } else
        {
            return -1;
        }
    }

    private static String getSetOfMatchingCharacterWithin(CharSequence charsequence, CharSequence charsequence1, int i)
    {
        StringBuilder stringbuilder = new StringBuilder();
        StringBuilder stringbuilder1 = new StringBuilder(charsequence1);
        for (int j = 0; j < charsequence.length(); j++)
        {
            char c = charsequence.charAt(j);
            int k = Math.max(0, j - i);
            for (boolean flag = false; !flag && k < Math.min(j + i, charsequence1.length()); k++)
            {
                if (stringbuilder1.charAt(k) == c)
                {
                    flag = true;
                    stringbuilder.append(c);
                    stringbuilder1.setCharAt(k, '*');
                }
            }

        }

        return stringbuilder.toString();
    }

    public static int indexOf(CharSequence charsequence, int i)
    {
        if (isEmpty(charsequence))
        {
            return -1;
        } else
        {
            return CharSequenceUtils.indexOf(charsequence, i, 0);
        }
    }

    public static int indexOf(CharSequence charsequence, int i, int j)
    {
        if (isEmpty(charsequence))
        {
            return -1;
        } else
        {
            return CharSequenceUtils.indexOf(charsequence, i, j);
        }
    }

    public static int indexOf(CharSequence charsequence, CharSequence charsequence1)
    {
        if (charsequence == null || charsequence1 == null)
        {
            return -1;
        } else
        {
            return CharSequenceUtils.indexOf(charsequence, charsequence1, 0);
        }
    }

    public static int indexOf(CharSequence charsequence, CharSequence charsequence1, int i)
    {
        if (charsequence == null || charsequence1 == null)
        {
            return -1;
        } else
        {
            return CharSequenceUtils.indexOf(charsequence, charsequence1, i);
        }
    }

    public static int indexOfAny(CharSequence charsequence, String s)
    {
        if (isEmpty(charsequence) || isEmpty(s))
        {
            return -1;
        } else
        {
            return indexOfAny(charsequence, s.toCharArray());
        }
    }

    public static transient int indexOfAny(CharSequence charsequence, char ac[])
    {
        int i;
        if (!isEmpty(charsequence) && !ArrayUtils.isEmpty(ac))
        {
            break MISSING_BLOCK_LABEL_18;
        }
        i = -1;
        return i;
        int j;
        int k;
        int l;
        int i1;
        char c;
        int j1;
        j = charsequence.length();
        k = j - 1;
        l = ac.length;
        i1 = l - 1;
        i = 0;
          goto _L1
        continue; /* Loop/switch isn't completed */
        i++;
    }

    public static transient int indexOfAny(CharSequence charsequence, CharSequence acharsequence[])
    {
        if (charsequence != null && acharsequence != null) goto _L2; else goto _L1
_L1:
        int i = -1;
_L8:
        return i;
_L2:
        int j;
        int k;
        j = acharsequence.length;
        k = 0;
        i = 0x7fffffff;
_L4:
        CharSequence charsequence1;
        if (k >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        charsequence1 = acharsequence[k];
        if (charsequence1 != null)
        {
            break; /* Loop/switch isn't completed */
        }
_L5:
        k++;
        if (true) goto _L4; else goto _L3
_L3:
        int l = CharSequenceUtils.indexOf(charsequence, charsequence1, 0);
        if (l != -1 && l < i)
        {
            i = l;
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
        if (i != 0x7fffffff) goto _L8; else goto _L7
_L7:
        return -1;
    }

    public static int indexOfAnyBut(CharSequence charsequence, CharSequence charsequence1)
    {
        if (!isEmpty(charsequence) && !isEmpty(charsequence1)) goto _L2; else goto _L1
_L1:
        int i = -1;
_L6:
        return i;
_L2:
        int j;
        j = charsequence.length();
        i = 0;
_L7:
        boolean flag;
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        char c = charsequence.charAt(i);
        char c1;
        if (CharSequenceUtils.indexOf(charsequence1, c, 0) >= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i + 1 >= j || !Character.isHighSurrogate(c)) goto _L4; else goto _L3
_L3:
        c1 = charsequence.charAt(i + 1);
        if (flag && CharSequenceUtils.indexOf(charsequence1, c1, 0) < 0) goto _L6; else goto _L5
_L5:
        i++;
          goto _L7
_L4:
        if (flag) goto _L5; else goto _L8
_L8:
        return i;
        return -1;
    }

    public static transient int indexOfAnyBut(CharSequence charsequence, char ac[])
    {
        if (!isEmpty(charsequence) && !ArrayUtils.isEmpty(ac)) goto _L2; else goto _L1
_L1:
        int i = -1;
_L4:
        return i;
_L2:
        int j;
        int k;
        int l;
        int i1;
        j = charsequence.length();
        k = j - 1;
        l = ac.length;
        i1 = l - 1;
_L5:
        char c;
        int j1;
        for (i = 0; i >= j;)
        {
            break MISSING_BLOCK_LABEL_126;
        }

        c = charsequence.charAt(i);
        j1 = 0;
_L6:
        if (j1 >= l) goto _L4; else goto _L3
_L3:
label0:
        {
            if (ac[j1] != c || i < k && j1 < i1 && Character.isHighSurrogate(c) && ac[j1 + 1] != charsequence.charAt(i + 1))
            {
                break label0;
            }
            i++;
        }
          goto _L5
        j1++;
          goto _L6
        return -1;
          goto _L5
    }

    public static int indexOfDifference(CharSequence charsequence, CharSequence charsequence1)
    {
        int i;
        if (charsequence == charsequence1)
        {
            i = -1;
        } else
        {
            i = 0;
            if (charsequence != null)
            {
                i = 0;
                if (charsequence1 != null)
                {
label0:
                    {
                        for (; i < charsequence.length() && i < charsequence1.length() && charsequence.charAt(i) == charsequence1.charAt(i); i++)
                        {
                            break label0;
                        }

                        if (i >= charsequence1.length() && i >= charsequence.length())
                        {
                            return -1;
                        }
                    }
                }
            }
        }
        return i;
    }

    public static transient int indexOfDifference(CharSequence acharsequence[])
    {
        if (acharsequence != null && acharsequence.length > 1) goto _L2; else goto _L1
_L1:
        int i = -1;
_L4:
        return i;
_L2:
        int j;
        int k;
        int i1;
        j = acharsequence.length;
        k = 0x7fffffff;
        int l = 0;
        i1 = 0;
        boolean flag = true;
        boolean flag1 = false;
        while (l < j) 
        {
            int i2;
            boolean flag2;
            boolean flag3;
            boolean flag4;
            if (acharsequence[l] == null)
            {
                flag3 = flag;
                flag2 = true;
                i2 = 0;
            } else
            {
                i2 = Math.min(acharsequence[l].length(), k);
                i1 = Math.max(acharsequence[l].length(), i1);
                flag2 = flag1;
                flag3 = false;
            }
            l++;
            flag4 = i2;
            flag = flag3;
            flag1 = flag2;
            k = ((flag4) ? 1 : 0);
        }
        if (flag || i1 == 0 && !flag1)
        {
            return -1;
        }
        i = 0;
        if (k == 0) goto _L4; else goto _L3
_L3:
        int j1;
        int k1;
        j1 = 0;
        k1 = -1;
_L12:
        char c;
        int l1;
        if (j1 >= k)
        {
            break MISSING_BLOCK_LABEL_228;
        }
        c = acharsequence[0].charAt(j1);
        l1 = 1;
_L11:
        if (l1 >= j) goto _L6; else goto _L5
_L5:
        if (acharsequence[l1].charAt(j1) == c) goto _L8; else goto _L7
_L7:
        k1 = j1;
_L6:
        if (k1 == -1) goto _L10; else goto _L9
_L9:
        i = k1;
_L13:
        if (i == -1 && k != i1)
        {
            return k;
        }
          goto _L4
_L8:
        l1++;
          goto _L11
_L10:
        j1++;
          goto _L12
        i = k1;
          goto _L13
    }

    public static int indexOfIgnoreCase(CharSequence charsequence, CharSequence charsequence1)
    {
        return indexOfIgnoreCase(charsequence, charsequence1, 0);
    }

    public static int indexOfIgnoreCase(CharSequence charsequence, CharSequence charsequence1, int i)
    {
        if (charsequence == null || charsequence1 == null)
        {
            i = -1;
        } else
        {
            if (i < 0)
            {
                i = 0;
            }
            int j = 1 + (charsequence.length() - charsequence1.length());
            if (i > j)
            {
                return -1;
            }
            if (charsequence1.length() != 0)
            {
                for (int k = i; k < j; k++)
                {
                    if (CharSequenceUtils.regionMatches(charsequence, true, k, charsequence1, 0, charsequence1.length()))
                    {
                        return k;
                    }
                }

                return -1;
            }
        }
        return i;
    }

    public static boolean isAllLowerCase(CharSequence charsequence)
    {
        if (charsequence != null && !isEmpty(charsequence)) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = charsequence.length();
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                if (!Character.isLowerCase(charsequence.charAt(j)))
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static boolean isAllUpperCase(CharSequence charsequence)
    {
        if (charsequence != null && !isEmpty(charsequence)) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = charsequence.length();
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                if (!Character.isUpperCase(charsequence.charAt(j)))
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static boolean isAlpha(CharSequence charsequence)
    {
        if (!isEmpty(charsequence)) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = charsequence.length();
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                if (!Character.isLetter(charsequence.charAt(j)))
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static boolean isAlphaSpace(CharSequence charsequence)
    {
        if (charsequence != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = charsequence.length();
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                if (!Character.isLetter(charsequence.charAt(j)) && charsequence.charAt(j) != ' ')
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static boolean isAlphanumeric(CharSequence charsequence)
    {
        if (!isEmpty(charsequence)) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = charsequence.length();
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                if (!Character.isLetterOrDigit(charsequence.charAt(j)))
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static boolean isAlphanumericSpace(CharSequence charsequence)
    {
        if (charsequence != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = charsequence.length();
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                if (!Character.isLetterOrDigit(charsequence.charAt(j)) && charsequence.charAt(j) != ' ')
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static transient boolean isAnyBlank(CharSequence acharsequence[])
    {
        if (!ArrayUtils.isEmpty(acharsequence)) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        int i = acharsequence.length;
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                if (isBlank(acharsequence[j]))
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return false;
    }

    public static transient boolean isAnyEmpty(CharSequence acharsequence[])
    {
        if (!ArrayUtils.isEmpty(acharsequence)) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        int i = acharsequence.length;
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                if (isEmpty(acharsequence[j]))
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return false;
    }

    public static boolean isAsciiPrintable(CharSequence charsequence)
    {
        if (charsequence != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = charsequence.length();
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                if (!CharUtils.isAsciiPrintable(charsequence.charAt(j)))
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static boolean isBlank(CharSequence charsequence)
    {
        if (charsequence == null) goto _L2; else goto _L1
_L1:
        int i = charsequence.length();
        if (i != 0) goto _L3; else goto _L2
_L2:
        boolean flag = true;
_L5:
        return flag;
_L3:
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                boolean flag1 = Character.isWhitespace(charsequence.charAt(j));
                flag = false;
                if (!flag1)
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L5; else goto _L4
_L4:
        return true;
    }

    public static boolean isEmpty(CharSequence charsequence)
    {
        return charsequence == null || charsequence.length() == 0;
    }

    public static transient boolean isNoneBlank(CharSequence acharsequence[])
    {
        return !isAnyBlank(acharsequence);
    }

    public static transient boolean isNoneEmpty(CharSequence acharsequence[])
    {
        return !isAnyEmpty(acharsequence);
    }

    public static boolean isNotBlank(CharSequence charsequence)
    {
        return !isBlank(charsequence);
    }

    public static boolean isNotEmpty(CharSequence charsequence)
    {
        return !isEmpty(charsequence);
    }

    public static boolean isNumeric(CharSequence charsequence)
    {
        if (!isEmpty(charsequence)) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = charsequence.length();
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                if (!Character.isDigit(charsequence.charAt(j)))
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static boolean isNumericSpace(CharSequence charsequence)
    {
        if (charsequence != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = charsequence.length();
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                if (!Character.isDigit(charsequence.charAt(j)) && charsequence.charAt(j) != ' ')
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static boolean isWhitespace(CharSequence charsequence)
    {
        if (charsequence != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = charsequence.length();
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                if (!Character.isWhitespace(charsequence.charAt(j)))
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static String join(Iterable iterable, char c)
    {
        if (iterable == null)
        {
            return null;
        } else
        {
            return join(iterable.iterator(), c);
        }
    }

    public static String join(Iterable iterable, String s)
    {
        if (iterable == null)
        {
            return null;
        } else
        {
            return join(iterable.iterator(), s);
        }
    }

    public static String join(Iterator iterator, char c)
    {
        if (iterator == null)
        {
            return null;
        }
        if (!iterator.hasNext())
        {
            return "";
        }
        Object obj = iterator.next();
        if (!iterator.hasNext())
        {
            return ObjectUtils.toString(obj);
        }
        StringBuilder stringbuilder = new StringBuilder(256);
        if (obj != null)
        {
            stringbuilder.append(obj);
        }
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            stringbuilder.append(c);
            Object obj1 = iterator.next();
            if (obj1 != null)
            {
                stringbuilder.append(obj1);
            }
        } while (true);
        return stringbuilder.toString();
    }

    public static String join(Iterator iterator, String s)
    {
        if (iterator == null)
        {
            return null;
        }
        if (!iterator.hasNext())
        {
            return "";
        }
        Object obj = iterator.next();
        if (!iterator.hasNext())
        {
            return ObjectUtils.toString(obj);
        }
        StringBuilder stringbuilder = new StringBuilder(256);
        if (obj != null)
        {
            stringbuilder.append(obj);
        }
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (s != null)
            {
                stringbuilder.append(s);
            }
            Object obj1 = iterator.next();
            if (obj1 != null)
            {
                stringbuilder.append(obj1);
            }
        } while (true);
        return stringbuilder.toString();
    }

    public static String join(byte abyte0[], char c)
    {
        if (abyte0 == null)
        {
            return null;
        } else
        {
            return join(abyte0, c, 0, abyte0.length);
        }
    }

    public static String join(byte abyte0[], char c, int i, int j)
    {
        if (abyte0 == null)
        {
            return null;
        }
        int k = j - i;
        if (k <= 0)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder(k * 16);
        for (int l = i; l < j; l++)
        {
            if (l > i)
            {
                stringbuilder.append(c);
            }
            stringbuilder.append(abyte0[l]);
        }

        return stringbuilder.toString();
    }

    public static String join(char ac[], char c)
    {
        if (ac == null)
        {
            return null;
        } else
        {
            return join(ac, c, 0, ac.length);
        }
    }

    public static String join(char ac[], char c, int i, int j)
    {
        if (ac == null)
        {
            return null;
        }
        int k = j - i;
        if (k <= 0)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder(k * 16);
        for (int l = i; l < j; l++)
        {
            if (l > i)
            {
                stringbuilder.append(c);
            }
            stringbuilder.append(ac[l]);
        }

        return stringbuilder.toString();
    }

    public static String join(double ad[], char c)
    {
        if (ad == null)
        {
            return null;
        } else
        {
            return join(ad, c, 0, ad.length);
        }
    }

    public static String join(double ad[], char c, int i, int j)
    {
        if (ad == null)
        {
            return null;
        }
        int k = j - i;
        if (k <= 0)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder(k * 16);
        for (int l = i; l < j; l++)
        {
            if (l > i)
            {
                stringbuilder.append(c);
            }
            stringbuilder.append(ad[l]);
        }

        return stringbuilder.toString();
    }

    public static String join(float af[], char c)
    {
        if (af == null)
        {
            return null;
        } else
        {
            return join(af, c, 0, af.length);
        }
    }

    public static String join(float af[], char c, int i, int j)
    {
        if (af == null)
        {
            return null;
        }
        int k = j - i;
        if (k <= 0)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder(k * 16);
        for (int l = i; l < j; l++)
        {
            if (l > i)
            {
                stringbuilder.append(c);
            }
            stringbuilder.append(af[l]);
        }

        return stringbuilder.toString();
    }

    public static String join(int ai[], char c)
    {
        if (ai == null)
        {
            return null;
        } else
        {
            return join(ai, c, 0, ai.length);
        }
    }

    public static String join(int ai[], char c, int i, int j)
    {
        if (ai == null)
        {
            return null;
        }
        int k = j - i;
        if (k <= 0)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder(k * 16);
        for (int l = i; l < j; l++)
        {
            if (l > i)
            {
                stringbuilder.append(c);
            }
            stringbuilder.append(ai[l]);
        }

        return stringbuilder.toString();
    }

    public static String join(long al[], char c)
    {
        if (al == null)
        {
            return null;
        } else
        {
            return join(al, c, 0, al.length);
        }
    }

    public static String join(long al[], char c, int i, int j)
    {
        if (al == null)
        {
            return null;
        }
        int k = j - i;
        if (k <= 0)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder(k * 16);
        for (int l = i; l < j; l++)
        {
            if (l > i)
            {
                stringbuilder.append(c);
            }
            stringbuilder.append(al[l]);
        }

        return stringbuilder.toString();
    }

    public static transient String join(Object aobj[])
    {
        return join(aobj, ((String) (null)));
    }

    public static String join(Object aobj[], char c)
    {
        if (aobj == null)
        {
            return null;
        } else
        {
            return join(aobj, c, 0, aobj.length);
        }
    }

    public static String join(Object aobj[], char c, int i, int j)
    {
        if (aobj == null)
        {
            return null;
        }
        int k = j - i;
        if (k <= 0)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder(k * 16);
        for (int l = i; l < j; l++)
        {
            if (l > i)
            {
                stringbuilder.append(c);
            }
            if (aobj[l] != null)
            {
                stringbuilder.append(aobj[l]);
            }
        }

        return stringbuilder.toString();
    }

    public static String join(Object aobj[], String s)
    {
        if (aobj == null)
        {
            return null;
        } else
        {
            return join(aobj, s, 0, aobj.length);
        }
    }

    public static String join(Object aobj[], String s, int i, int j)
    {
        if (aobj == null)
        {
            return null;
        }
        if (s == null)
        {
            s = "";
        }
        int k = j - i;
        if (k <= 0)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder(k * 16);
        for (int l = i; l < j; l++)
        {
            if (l > i)
            {
                stringbuilder.append(s);
            }
            if (aobj[l] != null)
            {
                stringbuilder.append(aobj[l]);
            }
        }

        return stringbuilder.toString();
    }

    public static String join(short aword0[], char c)
    {
        if (aword0 == null)
        {
            return null;
        } else
        {
            return join(aword0, c, 0, aword0.length);
        }
    }

    public static String join(short aword0[], char c, int i, int j)
    {
        if (aword0 == null)
        {
            return null;
        }
        int k = j - i;
        if (k <= 0)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder(k * 16);
        for (int l = i; l < j; l++)
        {
            if (l > i)
            {
                stringbuilder.append(c);
            }
            stringbuilder.append(aword0[l]);
        }

        return stringbuilder.toString();
    }

    public static int lastIndexOf(CharSequence charsequence, int i)
    {
        if (isEmpty(charsequence))
        {
            return -1;
        } else
        {
            return CharSequenceUtils.lastIndexOf(charsequence, i, charsequence.length());
        }
    }

    public static int lastIndexOf(CharSequence charsequence, int i, int j)
    {
        if (isEmpty(charsequence))
        {
            return -1;
        } else
        {
            return CharSequenceUtils.lastIndexOf(charsequence, i, j);
        }
    }

    public static int lastIndexOf(CharSequence charsequence, CharSequence charsequence1)
    {
        if (charsequence == null || charsequence1 == null)
        {
            return -1;
        } else
        {
            return CharSequenceUtils.lastIndexOf(charsequence, charsequence1, charsequence.length());
        }
    }

    public static int lastIndexOf(CharSequence charsequence, CharSequence charsequence1, int i)
    {
        if (charsequence == null || charsequence1 == null)
        {
            return -1;
        } else
        {
            return CharSequenceUtils.lastIndexOf(charsequence, charsequence1, i);
        }
    }

    public static transient int lastIndexOfAny(CharSequence charsequence, CharSequence acharsequence[])
    {
        int i = -1;
        if (charsequence != null && acharsequence != null)
        {
            int j = acharsequence.length;
            int k = 0;
            while (k < j) 
            {
                CharSequence charsequence1 = acharsequence[k];
                if (charsequence1 != null)
                {
                    int l = CharSequenceUtils.lastIndexOf(charsequence, charsequence1, charsequence.length());
                    if (l > i)
                    {
                        i = l;
                    }
                }
                k++;
            }
        }
        return i;
    }

    public static int lastIndexOfIgnoreCase(CharSequence charsequence, CharSequence charsequence1)
    {
        if (charsequence == null || charsequence1 == null)
        {
            return -1;
        } else
        {
            return lastIndexOfIgnoreCase(charsequence, charsequence1, charsequence.length());
        }
    }

    public static int lastIndexOfIgnoreCase(CharSequence charsequence, CharSequence charsequence1, int i)
    {
        if (charsequence != null && charsequence1 != null) goto _L2; else goto _L1
_L1:
        int j = -1;
_L4:
        return j;
_L2:
        if (i > charsequence.length() - charsequence1.length())
        {
            j = charsequence.length() - charsequence1.length();
        } else
        {
            j = i;
        }
        if (j < 0)
        {
            return -1;
        }
        if (charsequence1.length() != 0)
        {
label0:
            do
            {
label1:
                {
                    if (j < 0)
                    {
                        break label1;
                    }
                    if (CharSequenceUtils.regionMatches(charsequence, true, j, charsequence1, 0, charsequence1.length()))
                    {
                        break label0;
                    }
                    j--;
                }
            } while (true);
        }
        if (true) goto _L4; else goto _L3
_L3:
        return -1;
    }

    public static int lastOrdinalIndexOf(CharSequence charsequence, CharSequence charsequence1, int i)
    {
        return ordinalIndexOf(charsequence, charsequence1, i, true);
    }

    public static String left(String s, int i)
    {
        if (s == null)
        {
            s = null;
        } else
        {
            if (i < 0)
            {
                return "";
            }
            if (s.length() > i)
            {
                return s.substring(0, i);
            }
        }
        return s;
    }

    public static String leftPad(String s, int i)
    {
        return leftPad(s, i, ' ');
    }

    public static String leftPad(String s, int i, char c)
    {
        if (s == null)
        {
            s = null;
        } else
        {
            int j = i - s.length();
            if (j > 0)
            {
                if (j > 8192)
                {
                    return leftPad(s, i, String.valueOf(c));
                } else
                {
                    return repeat(c, j).concat(s);
                }
            }
        }
        return s;
    }

    public static String leftPad(String s, int i, String s1)
    {
        int j = 0;
        if (s == null)
        {
            s = null;
        } else
        {
            if (isEmpty(s1))
            {
                s1 = " ";
            }
            int k = s1.length();
            int l = i - s.length();
            if (l > 0)
            {
                if (k == 1 && l <= 8192)
                {
                    return leftPad(s, i, s1.charAt(0));
                }
                if (l == k)
                {
                    return s1.concat(s);
                }
                if (l < k)
                {
                    return s1.substring(0, l).concat(s);
                }
                char ac[] = new char[l];
                char ac1[] = s1.toCharArray();
                for (; j < l; j++)
                {
                    ac[j] = ac1[j % k];
                }

                return (new String(ac)).concat(s);
            }
        }
        return s;
    }

    public static int length(CharSequence charsequence)
    {
        if (charsequence == null)
        {
            return 0;
        } else
        {
            return charsequence.length();
        }
    }

    public static String lowerCase(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return s.toLowerCase();
        }
    }

    public static String lowerCase(String s, Locale locale)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return s.toLowerCase(locale);
        }
    }

    public static String mid(String s, int i, int j)
    {
        if (s == null)
        {
            return null;
        }
        if (j < 0 || i > s.length())
        {
            return "";
        }
        if (i < 0)
        {
            i = 0;
        }
        if (s.length() <= i + j)
        {
            return s.substring(i);
        } else
        {
            return s.substring(i, i + j);
        }
    }

    public static String normalizeSpace(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return WHITESPACE_PATTERN.matcher(trim(s)).replaceAll(" ");
        }
    }

    public static int ordinalIndexOf(CharSequence charsequence, CharSequence charsequence1, int i)
    {
        return ordinalIndexOf(charsequence, charsequence1, i, false);
    }

    private static int ordinalIndexOf(CharSequence charsequence, CharSequence charsequence1, int i, boolean flag)
    {
        int j = -1;
        if (charsequence != null && charsequence1 != null && i > 0) goto _L2; else goto _L1
_L1:
        int k = j;
_L4:
        return k;
_L2:
        if (charsequence1.length() != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        k = 0;
        if (flag)
        {
            return charsequence.length();
        }
        if (true) goto _L4; else goto _L3
_L3:
        int l;
        if (flag)
        {
            j = charsequence.length();
        }
        l = 0;
_L7:
        int i1;
        if (flag)
        {
            k = CharSequenceUtils.lastIndexOf(charsequence, charsequence1, j - 1);
        } else
        {
            k = CharSequenceUtils.indexOf(charsequence, charsequence1, j + 1);
        }
        if (k < 0) goto _L4; else goto _L5
_L5:
        i1 = l + 1;
        if (i1 >= i) goto _L4; else goto _L6
_L6:
        l = i1;
        j = k;
          goto _L7
    }

    public static String overlay(String s, String s1, int i, int j)
    {
        if (s == null)
        {
            return null;
        }
        if (s1 == null)
        {
            s1 = "";
        }
        int k = s.length();
        int l;
        int i1;
        if (i < 0)
        {
            l = 0;
        } else
        {
            l = i;
        }
        if (l > k)
        {
            l = k;
        }
        if (j < 0)
        {
            i1 = 0;
        } else
        {
            i1 = j;
        }
        if (i1 > k)
        {
            i1 = k;
        }
        if (l <= i1)
        {
            int j1 = i1;
            i1 = l;
            l = j1;
        }
        return (new StringBuilder(1 + (((k + i1) - l) + s1.length()))).append(s.substring(0, i1)).append(s1).append(s.substring(l)).toString();
    }

    private static transient String prependIfMissing(String s, CharSequence charsequence, boolean flag, CharSequence acharsequence[])
    {
        if (s != null && !isEmpty(charsequence) && !startsWith(s, charsequence, flag)) goto _L2; else goto _L1
_L1:
        return s;
_L2:
label0:
        {
            if (acharsequence == null || acharsequence.length <= 0)
            {
                break label0;
            }
            int i = acharsequence.length;
            int j = 0;
            do
            {
                if (j >= i)
                {
                    break label0;
                }
                if (startsWith(s, acharsequence[j], flag))
                {
                    break;
                }
                j++;
            } while (true);
        }
        if (true) goto _L1; else goto _L3
_L3:
        return (new StringBuilder()).append(charsequence.toString()).append(s).toString();
    }

    public static transient String prependIfMissing(String s, CharSequence charsequence, CharSequence acharsequence[])
    {
        return prependIfMissing(s, charsequence, false, acharsequence);
    }

    public static transient String prependIfMissingIgnoreCase(String s, CharSequence charsequence, CharSequence acharsequence[])
    {
        return prependIfMissing(s, charsequence, true, acharsequence);
    }

    public static String remove(String s, char c)
    {
        if (isEmpty(s) || s.indexOf(c) == -1)
        {
            return s;
        }
        char ac[] = s.toCharArray();
        int i = 0;
        int j = 0;
        for (; i < ac.length; i++)
        {
            if (ac[i] != c)
            {
                int k = j + 1;
                ac[j] = ac[i];
                j = k;
            }
        }

        return new String(ac, 0, j);
    }

    public static String remove(String s, String s1)
    {
        if (isEmpty(s) || isEmpty(s1))
        {
            return s;
        } else
        {
            return replace(s, s1, "", -1);
        }
    }

    public static String removeEnd(String s, String s1)
    {
        while (isEmpty(s) || isEmpty(s1) || !s.endsWith(s1)) 
        {
            return s;
        }
        return s.substring(0, s.length() - s1.length());
    }

    public static String removeEndIgnoreCase(String s, String s1)
    {
        while (isEmpty(s) || isEmpty(s1) || !endsWithIgnoreCase(s, s1)) 
        {
            return s;
        }
        return s.substring(0, s.length() - s1.length());
    }

    public static String removePattern(String s, String s1)
    {
        return replacePattern(s, s1, "");
    }

    public static String removeStart(String s, String s1)
    {
        while (isEmpty(s) || isEmpty(s1) || !s.startsWith(s1)) 
        {
            return s;
        }
        return s.substring(s1.length());
    }

    public static String removeStartIgnoreCase(String s, String s1)
    {
        while (isEmpty(s) || isEmpty(s1) || !startsWithIgnoreCase(s, s1)) 
        {
            return s;
        }
        return s.substring(s1.length());
    }

    public static String repeat(char c, int i)
    {
        char ac[] = new char[i];
        for (int j = i - 1; j >= 0; j--)
        {
            ac[j] = c;
        }

        return new String(ac);
    }

    public static String repeat(String s, int i)
    {
        int j = 0;
        if (s == null)
        {
            s = null;
        } else
        {
            if (i <= 0)
            {
                return "";
            }
            int k = s.length();
            if (i != 1 && k != 0)
            {
                if (k == 1 && i <= 8192)
                {
                    return repeat(s.charAt(0), i);
                }
                int l = k * i;
                StringBuilder stringbuilder;
                switch (k)
                {
                default:
                    stringbuilder = new StringBuilder(l);
                    for (; j < i; j++)
                    {
                        stringbuilder.append(s);
                    }

                    break;

                case 1: // '\001'
                    return repeat(s.charAt(0), i);

                case 2: // '\002'
                    char c = s.charAt(0);
                    char c1 = s.charAt(1);
                    char ac[] = new char[l];
                    for (int i1 = -2 + i * 2; i1 >= 0; i1 = -1 + (i1 - 1))
                    {
                        ac[i1] = c;
                        ac[i1 + 1] = c1;
                    }

                    return new String(ac);
                }
                return stringbuilder.toString();
            }
        }
        return s;
    }

    public static String repeat(String s, String s1, int i)
    {
        if (s == null || s1 == null)
        {
            return repeat(s, i);
        } else
        {
            return removeEnd(repeat((new StringBuilder()).append(s).append(s1).toString(), i), s1);
        }
    }

    public static String replace(String s, String s1, String s2)
    {
        return replace(s, s1, s2, -1);
    }

    public static String replace(String s, String s1, String s2, int i)
    {
        int j = 64;
        int k;
        if (!isEmpty(s) && !isEmpty(s1) && s2 != null && i != 0)
        {
            if ((k = s.indexOf(s1, 0)) != -1)
            {
                int l = s1.length();
                int i1 = s2.length() - l;
                if (i1 < 0)
                {
                    i1 = 0;
                }
                StringBuilder stringbuilder;
                int j1;
                if (i < 0)
                {
                    j = 16;
                } else
                if (i <= j)
                {
                    j = i;
                }
                stringbuilder = new StringBuilder(j * i1 + s.length());
                j1 = 0;
                do
                {
label0:
                    {
                        if (k != -1)
                        {
                            stringbuilder.append(s.substring(j1, k)).append(s2);
                            j1 = k + l;
                            if (--i != 0)
                            {
                                break label0;
                            }
                        }
                        stringbuilder.append(s.substring(j1));
                        return stringbuilder.toString();
                    }
                    k = s.indexOf(s1, j1);
                } while (true);
            }
        }
        return s;
    }

    public static String replaceChars(String s, char c, char c1)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return s.replace(c, c1);
        }
    }

    public static String replaceChars(String s, String s1, String s2)
    {
        boolean flag = false;
        if (!isEmpty(s) && !isEmpty(s1))
        {
            if (s2 == null)
            {
                s2 = "";
            }
            int i = s2.length();
            int j = s.length();
            StringBuilder stringbuilder = new StringBuilder(j);
            int k = 0;
            while (k < j) 
            {
                char c = s.charAt(k);
                int l = s1.indexOf(c);
                if (l >= 0)
                {
                    flag = true;
                    if (l < i)
                    {
                        stringbuilder.append(s2.charAt(l));
                    }
                } else
                {
                    stringbuilder.append(c);
                }
                k++;
            }
            if (flag)
            {
                return stringbuilder.toString();
            }
        }
        return s;
    }

    public static String replaceEach(String s, String as[], String as1[])
    {
        return replaceEach(s, as, as1, false, 0);
    }

    private static String replaceEach(String s, String as[], String as1[], boolean flag, int i)
    {
        if (s != null && !s.isEmpty() && as != null && as.length != 0 && as1 != null && as1.length != 0) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        int j;
        boolean aflag[];
        int l;
        int i1;
        int j1;
        if (i < 0)
        {
            throw new IllegalStateException("Aborting to protect against StackOverflowError - output of one loop is the input of another");
        }
        j = as.length;
        int k = as1.length;
        if (j != k)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Search and Replace array lengths don't match: ").append(j).append(" vs ").append(k).toString());
        }
        aflag = new boolean[j];
        l = 0;
        i1 = -1;
        j1 = -1;
_L4:
        if (l >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!aflag[l] && as[l] != null && !as[l].isEmpty() && as1[l] != null)
        {
            break; /* Loop/switch isn't completed */
        }
_L5:
        l++;
        if (true) goto _L4; else goto _L3
_L3:
        int i4 = s.indexOf(as[l]);
        if (i4 == -1)
        {
            aflag[l] = true;
        } else
        if (j1 == -1 || i4 < j1)
        {
            i1 = l;
            j1 = i4;
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
        if (j1 == -1) goto _L1; else goto _L7
_L7:
        int k1 = 0;
        int l1 = 0;
        while (k1 < as.length) 
        {
            if (as[k1] != null && as1[k1] != null)
            {
                int l3 = as1[k1].length() - as[k1].length();
                if (l3 > 0)
                {
                    l1 += l3 * 3;
                }
            }
            k1++;
        }
        StringBuilder stringbuilder = new StringBuilder(Math.min(l1, s.length() / 5) + s.length());
        int i2 = i1;
        int j2 = 0;
        do
        {
            if (j1 == -1)
            {
                break;
            }
            for (; j2 < j1; j2++)
            {
                stringbuilder.append(s.charAt(j2));
            }

            stringbuilder.append(as1[i2]);
            int l2 = j1 + as[i2].length();
            int i3 = 0;
            int j3 = -1;
            j1 = -1;
            while (i3 < j) 
            {
                if (!aflag[i3] && as[i3] != null && !as[i3].isEmpty() && as1[i3] != null)
                {
                    int k3 = s.indexOf(as[i3], l2);
                    if (k3 == -1)
                    {
                        aflag[i3] = true;
                    } else
                    if (j1 == -1 || k3 < j1)
                    {
                        j3 = i3;
                        j1 = k3;
                    }
                }
                i3++;
            }
            i2 = j3;
            j2 = l2;
        } while (true);
        for (int k2 = s.length(); j2 < k2; j2++)
        {
            stringbuilder.append(s.charAt(j2));
        }

        s = stringbuilder.toString();
        if (flag)
        {
            return replaceEach(s, as, as1, flag, i - 1);
        }
        if (true) goto _L1; else goto _L8
_L8:
    }

    public static String replaceEachRepeatedly(String s, String as[], String as1[])
    {
        int i;
        if (as == null)
        {
            i = 0;
        } else
        {
            i = as.length;
        }
        return replaceEach(s, as, as1, true, i);
    }

    public static String replaceOnce(String s, String s1, String s2)
    {
        return replace(s, s1, s2, 1);
    }

    public static String replacePattern(String s, String s1, String s2)
    {
        return Pattern.compile(s1, 32).matcher(s).replaceAll(s2);
    }

    public static String reverse(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return (new StringBuilder(s)).reverse().toString();
        }
    }

    public static String reverseDelimited(String s, char c)
    {
        if (s == null)
        {
            return null;
        } else
        {
            String as[] = split(s, c);
            ArrayUtils.reverse(as);
            return join(as, c);
        }
    }

    public static String right(String s, int i)
    {
        if (s == null)
        {
            s = null;
        } else
        {
            if (i < 0)
            {
                return "";
            }
            if (s.length() > i)
            {
                return s.substring(s.length() - i);
            }
        }
        return s;
    }

    public static String rightPad(String s, int i)
    {
        return rightPad(s, i, ' ');
    }

    public static String rightPad(String s, int i, char c)
    {
        if (s == null)
        {
            s = null;
        } else
        {
            int j = i - s.length();
            if (j > 0)
            {
                if (j > 8192)
                {
                    return rightPad(s, i, String.valueOf(c));
                } else
                {
                    return s.concat(repeat(c, j));
                }
            }
        }
        return s;
    }

    public static String rightPad(String s, int i, String s1)
    {
        int j = 0;
        if (s == null)
        {
            s = null;
        } else
        {
            if (isEmpty(s1))
            {
                s1 = " ";
            }
            int k = s1.length();
            int l = i - s.length();
            if (l > 0)
            {
                if (k == 1 && l <= 8192)
                {
                    return rightPad(s, i, s1.charAt(0));
                }
                if (l == k)
                {
                    return s.concat(s1);
                }
                if (l < k)
                {
                    return s.concat(s1.substring(0, l));
                }
                char ac[] = new char[l];
                char ac1[] = s1.toCharArray();
                for (; j < l; j++)
                {
                    ac[j] = ac1[j % k];
                }

                return s.concat(new String(ac));
            }
        }
        return s;
    }

    private static double score(CharSequence charsequence, CharSequence charsequence1)
    {
        String s;
        String s1;
        int i;
        String s2;
        String s3;
        if (charsequence.length() > charsequence1.length())
        {
            s = charsequence.toString().toLowerCase();
            s1 = charsequence1.toString().toLowerCase();
        } else
        {
            s = charsequence1.toString().toLowerCase();
            s1 = charsequence.toString().toLowerCase();
        }
        i = 1 + s1.length() / 2;
        s2 = getSetOfMatchingCharacterWithin(s1, s, i);
        s3 = getSetOfMatchingCharacterWithin(s, s1, i);
        if (s2.length() == 0 || s3.length() == 0)
        {
            return 0.0D;
        }
        if (s2.length() != s3.length())
        {
            return 0.0D;
        } else
        {
            int j = transpositions(s2, s3);
            return ((double)s2.length() / (double)s1.length() + (double)s3.length() / (double)s.length() + (double)(s2.length() - j) / (double)s2.length()) / 3D;
        }
    }

    public static String[] split(String s)
    {
        return split(s, null, -1);
    }

    public static String[] split(String s, char c)
    {
        return splitWorker(s, c, false);
    }

    public static String[] split(String s, String s1)
    {
        return splitWorker(s, s1, -1, false);
    }

    public static String[] split(String s, String s1, int i)
    {
        return splitWorker(s, s1, i, false);
    }

    public static String[] splitByCharacterType(String s)
    {
        return splitByCharacterType(s, false);
    }

    private static String[] splitByCharacterType(String s, boolean flag)
    {
        if (s == null)
        {
            return null;
        }
        if (s.isEmpty())
        {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        char ac[] = s.toCharArray();
        ArrayList arraylist = new ArrayList();
        int i = Character.getType(ac[0]);
        int j = 0;
        int k = i;
        int l = 1;
        while (l < ac.length) 
        {
            int i1 = Character.getType(ac[l]);
            if (i1 != k)
            {
                if (flag && i1 == 2 && k == 1)
                {
                    int j1 = l - 1;
                    if (j1 != j)
                    {
                        arraylist.add(new String(ac, j, j1 - j));
                        j = j1;
                    }
                } else
                {
                    arraylist.add(new String(ac, j, l - j));
                    j = l;
                }
                k = i1;
            }
            l++;
        }
        arraylist.add(new String(ac, j, ac.length - j));
        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }

    public static String[] splitByCharacterTypeCamelCase(String s)
    {
        return splitByCharacterType(s, true);
    }

    public static String[] splitByWholeSeparator(String s, String s1)
    {
        return splitByWholeSeparatorWorker(s, s1, -1, false);
    }

    public static String[] splitByWholeSeparator(String s, String s1, int i)
    {
        return splitByWholeSeparatorWorker(s, s1, i, false);
    }

    public static String[] splitByWholeSeparatorPreserveAllTokens(String s, String s1)
    {
        return splitByWholeSeparatorWorker(s, s1, -1, true);
    }

    public static String[] splitByWholeSeparatorPreserveAllTokens(String s, String s1, int i)
    {
        return splitByWholeSeparatorWorker(s, s1, i, true);
    }

    private static String[] splitByWholeSeparatorWorker(String s, String s1, int i, boolean flag)
    {
        int j = 0;
        if (s == null)
        {
            return null;
        }
        int k = s.length();
        if (k == 0)
        {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        if (s1 == null || "".equals(s1))
        {
            return splitWorker(s, null, i, flag);
        }
        int l = s1.length();
        ArrayList arraylist = new ArrayList();
        int i1 = 0;
        int j1 = 0;
        while (i1 < k) 
        {
            i1 = s.indexOf(s1, j1);
            if (i1 > -1)
            {
                if (i1 > j1)
                {
                    int k1 = j + 1;
                    if (k1 == i)
                    {
                        arraylist.add(s.substring(j1));
                        i1 = k;
                        j = k1;
                    } else
                    {
                        arraylist.add(s.substring(j1, i1));
                        j1 = i1 + l;
                        j = k1;
                    }
                } else
                {
                    if (flag)
                    {
                        if (++j == i)
                        {
                            arraylist.add(s.substring(j1));
                            i1 = k;
                        } else
                        {
                            arraylist.add("");
                        }
                    }
                    j1 = i1 + l;
                }
            } else
            {
                arraylist.add(s.substring(j1));
                i1 = k;
            }
        }
        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }

    public static String[] splitPreserveAllTokens(String s)
    {
        return splitWorker(s, null, -1, true);
    }

    public static String[] splitPreserveAllTokens(String s, char c)
    {
        return splitWorker(s, c, true);
    }

    public static String[] splitPreserveAllTokens(String s, String s1)
    {
        return splitWorker(s, s1, -1, true);
    }

    public static String[] splitPreserveAllTokens(String s, String s1, int i)
    {
        return splitWorker(s, s1, i, true);
    }

    private static String[] splitWorker(String s, char c, boolean flag)
    {
        if (s == null)
        {
            return null;
        }
        int i = s.length();
        if (i == 0)
        {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        ArrayList arraylist = new ArrayList();
        boolean flag1 = false;
        boolean flag2 = false;
        int j = 0;
        int k;
        for (k = 0; k < i;)
        {
            if (s.charAt(k) == c)
            {
                if (flag2 || flag)
                {
                    arraylist.add(s.substring(j, k));
                    flag1 = true;
                    flag2 = false;
                }
                j = k + 1;
                k = j;
            } else
            {
                int l = k + 1;
                flag2 = true;
                k = l;
                flag1 = false;
            }
        }

        if (flag2 || flag && flag1)
        {
            arraylist.add(s.substring(j, k));
        }
        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }

    private static String[] splitWorker(String s, String s1, int i, boolean flag)
    {
        int j;
        ArrayList arraylist;
        if (s == null)
        {
            return null;
        }
        j = s.length();
        if (j == 0)
        {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        arraylist = new ArrayList();
        if (s1 != null) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
        boolean flag2 = false;
        int i1 = 0;
        int l = 0;
        int i4 = 1;
        while (l < j) 
        {
            if (Character.isWhitespace(s.charAt(l)))
            {
                boolean flag9;
                int l4;
                boolean flag10;
                if (flag2 || flag)
                {
                    int j4 = i4 + 1;
                    int k;
                    int j1;
                    int k1;
                    int l1;
                    int i2;
                    boolean flag3;
                    int j2;
                    boolean flag4;
                    boolean flag5;
                    char c;
                    int k2;
                    int l2;
                    int i3;
                    int j3;
                    int k3;
                    boolean flag6;
                    int l3;
                    boolean flag7;
                    boolean flag8;
                    int k4;
                    if (i4 == i)
                    {
                        flag9 = false;
                        k4 = j;
                    } else
                    {
                        k4 = l;
                        flag9 = true;
                    }
                    arraylist.add(s.substring(i1, k4));
                    i4 = j4;
                    l4 = k4;
                    flag10 = false;
                } else
                {
                    boolean flag11 = flag1;
                    flag10 = flag2;
                    l4 = l;
                    flag9 = flag11;
                }
                i1 = l4 + 1;
                flag2 = flag10;
                flag1 = flag9;
                l = i1;
            } else
            {
                l++;
                flag2 = true;
                flag1 = false;
            }
        }
          goto _L3
_L2:
        if (s1.length() != 1)
        {
            break MISSING_BLOCK_LABEL_528;
        }
        c = s1.charAt(0);
        flag1 = false;
        flag2 = false;
        k2 = 0;
        l2 = 0;
        i3 = 1;
        while (l2 < j) 
        {
            if (s.charAt(l2) == c)
            {
                if (flag2 || flag)
                {
                    j3 = i3 + 1;
                    if (i3 == i)
                    {
                        flag6 = false;
                        k3 = j;
                    } else
                    {
                        k3 = l2;
                        flag6 = true;
                    }
                    arraylist.add(s.substring(k2, k3));
                    i3 = j3;
                    l3 = k3;
                    flag7 = false;
                } else
                {
                    flag8 = flag1;
                    flag7 = flag2;
                    l3 = l2;
                    flag6 = flag8;
                }
                k2 = l3 + 1;
                flag2 = flag7;
                flag1 = flag6;
                l2 = k2;
            } else
            {
                l2++;
                flag2 = true;
                flag1 = false;
            }
        }
        j1 = l2;
        k1 = k2;
        if (flag2 || flag && flag1)
        {
            arraylist.add(s.substring(k1, j1));
        }
        return (String[])arraylist.toArray(new String[arraylist.size()]);
_L5:
        while (l < j) 
        {
            if (s1.indexOf(s.charAt(l)) >= 0)
            {
                if (flag2 || flag)
                {
                    l1 = k + 1;
                    if (k == i)
                    {
                        flag3 = false;
                        i2 = j;
                    } else
                    {
                        i2 = l;
                        flag3 = true;
                    }
                    arraylist.add(s.substring(i1, i2));
                    k = l1;
                    j2 = i2;
                    flag4 = false;
                } else
                {
                    flag5 = flag1;
                    flag4 = flag2;
                    j2 = l;
                    flag3 = flag5;
                }
                i1 = j2 + 1;
                flag2 = flag4;
                flag1 = flag3;
                l = i1;
            } else
            {
                l++;
                flag2 = true;
                flag1 = false;
            }
        }
_L3:
        j1 = l;
        k1 = i1;
        break MISSING_BLOCK_LABEL_300;
        k = 1;
        l = 0;
        flag1 = false;
        flag2 = false;
        i1 = 0;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static boolean startsWith(CharSequence charsequence, CharSequence charsequence1)
    {
        return startsWith(charsequence, charsequence1, false);
    }

    private static boolean startsWith(CharSequence charsequence, CharSequence charsequence1, boolean flag)
    {
        boolean flag1;
        if (charsequence == null || charsequence1 == null)
        {
            flag1 = false;
            if (charsequence == null)
            {
                flag1 = false;
                if (charsequence1 == null)
                {
                    flag1 = true;
                }
            }
        } else
        {
            int i = charsequence1.length();
            int j = charsequence.length();
            flag1 = false;
            if (i <= j)
            {
                return CharSequenceUtils.regionMatches(charsequence, flag, 0, charsequence1, 0, charsequence1.length());
            }
        }
        return flag1;
    }

    public static transient boolean startsWithAny(CharSequence charsequence, CharSequence acharsequence[])
    {
        if (!isEmpty(charsequence) && !ArrayUtils.isEmpty(acharsequence))
        {
            int i = acharsequence.length;
            int j = 0;
            while (j < i) 
            {
                if (startsWith(charsequence, acharsequence[j]))
                {
                    return true;
                }
                j++;
            }
        }
        return false;
    }

    public static boolean startsWithIgnoreCase(CharSequence charsequence, CharSequence charsequence1)
    {
        return startsWith(charsequence, charsequence1, true);
    }

    public static String strip(String s)
    {
        return strip(s, null);
    }

    public static String strip(String s, String s1)
    {
        if (isEmpty(s))
        {
            return s;
        } else
        {
            return stripEnd(stripStart(s, s1), s1);
        }
    }

    public static String stripAccents(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return Pattern.compile("\\p{InCombiningDiacriticalMarks}+").matcher(Normalizer.normalize(s, java.text.Normalizer.Form.NFD)).replaceAll("");
        }
    }

    public static transient String[] stripAll(String as[])
    {
        return stripAll(as, null);
    }

    public static String[] stripAll(String as[], String s)
    {
        int i;
label0:
        {
            if (as != null)
            {
                i = as.length;
                if (i != 0)
                {
                    break label0;
                }
            }
            return as;
        }
        String as1[] = new String[i];
        for (int j = 0; j < i; j++)
        {
            as1[j] = strip(as[j], s);
        }

        return as1;
    }

    public static String stripEnd(String s, String s1)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        int i = s.length();
        if (i != 0) goto _L3; else goto _L2
_L2:
        return s;
_L3:
        if (s1 == null)
        {
            for (; i != 0 && Character.isWhitespace(s.charAt(i - 1)); i--) { }
            break; /* Loop/switch isn't completed */
        }
        if (s1.isEmpty())
        {
            continue; /* Loop/switch isn't completed */
        }
        for (; i != 0 && s1.indexOf(s.charAt(i - 1)) != -1; i--) { }
        break; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L4
_L4:
        return s.substring(0, i);
    }

    public static String stripStart(String s, String s1)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        int i = s.length();
        if (i != 0) goto _L3; else goto _L2
_L2:
        return s;
_L3:
        int j;
        j = 0;
        if (s1 == null)
        {
            for (; j != i && Character.isWhitespace(s.charAt(j)); j++) { }
            break; /* Loop/switch isn't completed */
        }
        boolean flag = s1.isEmpty();
        j = 0;
        if (flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        for (; j != i && s1.indexOf(s.charAt(j)) != -1; j++) { }
        break; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L4
_L4:
        return s.substring(j);
    }

    public static String stripToEmpty(String s)
    {
        if (s == null)
        {
            return "";
        } else
        {
            return strip(s, null);
        }
    }

    public static String stripToNull(String s)
    {
        String s1;
        if (s != null)
        {
            if (!(s1 = strip(s, null)).isEmpty())
            {
                return s1;
            }
        }
        return null;
    }

    public static String substring(String s, int i)
    {
        if (s == null)
        {
            return null;
        }
        int j;
        if (i < 0)
        {
            j = i + s.length();
        } else
        {
            j = i;
        }
        if (j < 0)
        {
            j = 0;
        }
        if (j > s.length())
        {
            return "";
        } else
        {
            return s.substring(j);
        }
    }

    public static String substring(String s, int i, int j)
    {
        if (s == null)
        {
            return null;
        }
        int k;
        int l;
        if (j < 0)
        {
            k = j + s.length();
        } else
        {
            k = j;
        }
        if (i < 0)
        {
            i += s.length();
        }
        if (k > s.length())
        {
            k = s.length();
        }
        if (i > k)
        {
            return "";
        }
        if (i < 0)
        {
            i = 0;
        }
        l = 0;
        if (k >= 0)
        {
            l = k;
        }
        return s.substring(i, l);
    }

    public static String substringAfter(String s, String s1)
    {
        if (isEmpty(s))
        {
            return s;
        }
        if (s1 == null)
        {
            return "";
        }
        int i = s.indexOf(s1);
        if (i == -1)
        {
            return "";
        } else
        {
            return s.substring(i + s1.length());
        }
    }

    public static String substringAfterLast(String s, String s1)
    {
        if (isEmpty(s))
        {
            return s;
        }
        if (isEmpty(s1))
        {
            return "";
        }
        int i = s.lastIndexOf(s1);
        if (i == -1 || i == s.length() - s1.length())
        {
            return "";
        } else
        {
            return s.substring(i + s1.length());
        }
    }

    public static String substringBefore(String s, String s1)
    {
        if (!isEmpty(s) && s1 != null)
        {
            if (s1.isEmpty())
            {
                return "";
            }
            int i = s.indexOf(s1);
            if (i != -1)
            {
                return s.substring(0, i);
            }
        }
        return s;
    }

    public static String substringBeforeLast(String s, String s1)
    {
        int i;
        if (!isEmpty(s) && !isEmpty(s1))
        {
            if ((i = s.lastIndexOf(s1)) != -1)
            {
                return s.substring(0, i);
            }
        }
        return s;
    }

    public static String substringBetween(String s, String s1)
    {
        return substringBetween(s, s1, s1);
    }

    public static String substringBetween(String s, String s1, String s2)
    {
        int i;
        int j;
        if (s != null && s1 != null && s2 != null)
        {
            if ((i = s.indexOf(s1)) != -1 && (j = s.indexOf(s2, i + s1.length())) != -1)
            {
                return s.substring(i + s1.length(), j);
            }
        }
        return null;
    }

    public static String[] substringsBetween(String s, String s1, String s2)
    {
        if (s != null && !isEmpty(s1) && !isEmpty(s2)) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        int i;
        int j;
        int k;
        ArrayList arraylist;
        int l;
        i = s.length();
        if (i == 0)
        {
            return ArrayUtils.EMPTY_STRING_ARRAY;
        }
        j = s2.length();
        k = s1.length();
        arraylist = new ArrayList();
        l = 0;
_L7:
        if (l >= i - j) goto _L4; else goto _L3
_L3:
        int i1 = s.indexOf(s1, l);
        if (i1 >= 0) goto _L5; else goto _L4
_L4:
        if (!arraylist.isEmpty())
        {
            return (String[])arraylist.toArray(new String[arraylist.size()]);
        }
          goto _L1
_L5:
        int j1;
        int k1;
        j1 = i1 + k;
        k1 = s.indexOf(s2, j1);
        if (k1 < 0) goto _L4; else goto _L6
_L6:
        arraylist.add(s.substring(j1, k1));
        l = k1 + j;
          goto _L7
    }

    public static String swapCase(String s)
    {
        if (isEmpty(s))
        {
            return s;
        }
        char ac[] = s.toCharArray();
        int i = 0;
        while (i < ac.length) 
        {
            char c = ac[i];
            if (Character.isUpperCase(c))
            {
                ac[i] = Character.toLowerCase(c);
            } else
            if (Character.isTitleCase(c))
            {
                ac[i] = Character.toLowerCase(c);
            } else
            if (Character.isLowerCase(c))
            {
                ac[i] = Character.toUpperCase(c);
            }
            i++;
        }
        return new String(ac);
    }

    public static String toEncodedString(byte abyte0[], Charset charset)
    {
        if (charset == null)
        {
            charset = Charset.defaultCharset();
        }
        return new String(abyte0, charset);
    }

    public static String toString(byte abyte0[], String s)
    {
        if (s != null)
        {
            return new String(abyte0, s);
        } else
        {
            return new String(abyte0, Charset.defaultCharset());
        }
    }

    private static int transpositions(CharSequence charsequence, CharSequence charsequence1)
    {
        int i = 0;
        int j = 0;
        for (; i < charsequence.length(); i++)
        {
            if (charsequence.charAt(i) != charsequence1.charAt(i))
            {
                j++;
            }
        }

        return j / 2;
    }

    public static String trim(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return s.trim();
        }
    }

    public static String trimToEmpty(String s)
    {
        if (s == null)
        {
            return "";
        } else
        {
            return s.trim();
        }
    }

    public static String trimToNull(String s)
    {
        String s1 = trim(s);
        if (isEmpty(s1))
        {
            s1 = null;
        }
        return s1;
    }

    public static String uncapitalize(String s)
    {
        if (s != null)
        {
            int i = s.length();
            char c;
            if (i != 0)
            {
                if (!Character.isLowerCase(c = s.charAt(0)))
                {
                    return (new StringBuilder(i)).append(Character.toLowerCase(c)).append(s.substring(1)).toString();
                }
            }
        }
        return s;
    }

    public static String upperCase(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return s.toUpperCase();
        }
    }

    public static String upperCase(String s, Locale locale)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return s.toUpperCase(locale);
        }
    }

}
