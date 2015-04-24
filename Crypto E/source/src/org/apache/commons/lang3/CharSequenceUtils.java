// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;


public class CharSequenceUtils
{

    public CharSequenceUtils()
    {
    }

    static int indexOf(CharSequence charsequence, int i, int j)
    {
        if (!(charsequence instanceof String)) goto _L2; else goto _L1
_L1:
        int l = ((String)charsequence).indexOf(i, j);
_L4:
        return l;
_L2:
        int k = charsequence.length();
        if (j < 0)
        {
            j = 0;
        }
        l = j;
label0:
        do
        {
label1:
            {
                if (l >= k)
                {
                    break label1;
                }
                if (charsequence.charAt(l) == i)
                {
                    break label0;
                }
                l++;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return -1;
    }

    static int indexOf(CharSequence charsequence, CharSequence charsequence1, int i)
    {
        return charsequence.toString().indexOf(charsequence1.toString(), i);
    }

    static int lastIndexOf(CharSequence charsequence, int i, int j)
    {
        int k = -1;
        if (!(charsequence instanceof String)) goto _L2; else goto _L1
_L1:
        k = ((String)charsequence).lastIndexOf(i, j);
_L4:
        return k;
_L2:
        int l = charsequence.length();
        if (j >= 0)
        {
            if (j >= l)
            {
                j = l - 1;
            }
            int i1 = j;
            while (i1 >= 0) 
            {
                if (charsequence.charAt(i1) == i)
                {
                    return i1;
                }
                i1--;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static int lastIndexOf(CharSequence charsequence, CharSequence charsequence1, int i)
    {
        return charsequence.toString().lastIndexOf(charsequence1.toString(), i);
    }

    static boolean regionMatches(CharSequence charsequence, boolean flag, int i, CharSequence charsequence1, int j, int k)
    {
        if (!(charsequence instanceof String) || !(charsequence1 instanceof String)) goto _L2; else goto _L1
_L1:
        boolean flag1;
        String s = (String)charsequence;
        String s1 = (String)charsequence1;
        flag1 = s.regionMatches(flag, i, s1, j, k);
_L4:
        return flag1;
_L2:
        int l;
        int i1;
        char c;
        int j1;
        char c1;
        do
        {
label0:
            {
                l = k - 1;
                if (k <= 0)
                {
                    break MISSING_BLOCK_LABEL_164;
                }
                i1 = i + 1;
                c = charsequence.charAt(i);
                j1 = j + 1;
                c1 = charsequence1.charAt(j);
                if (c != c1)
                {
                    break label0;
                }
                k = l;
                j = j1;
                i = i1;
            }
        } while (true);
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        char c2;
        char c3;
        if (Character.toUpperCase(c) == Character.toUpperCase(c1))
        {
            break; /* Loop/switch isn't completed */
        }
        c2 = Character.toLowerCase(c);
        c3 = Character.toLowerCase(c1);
        flag1 = false;
        if (c2 != c3) goto _L4; else goto _L5
_L5:
        k = l;
        j = j1;
        i = i1;
          goto _L2
        return true;
    }

    public static CharSequence subSequence(CharSequence charsequence, int i)
    {
        if (charsequence == null)
        {
            return null;
        } else
        {
            return charsequence.subSequence(i, charsequence.length());
        }
    }

    static char[] toCharArray(CharSequence charsequence)
    {
        char ac[];
        if (charsequence instanceof String)
        {
            ac = ((String)charsequence).toCharArray();
        } else
        {
            int i = charsequence.length();
            ac = new char[charsequence.length()];
            int j = 0;
            while (j < i) 
            {
                ac[j] = charsequence.charAt(j);
                j++;
            }
        }
        return ac;
    }
}
