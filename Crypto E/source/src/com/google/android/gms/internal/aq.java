// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.internal:
//            md

public class aq
{

    private static boolean a(Character.UnicodeBlock unicodeblock)
    {
        return unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B || unicodeblock == Character.UnicodeBlock.CJK_COMPATIBILITY || unicodeblock == Character.UnicodeBlock.CJK_COMPATIBILITY_FORMS || unicodeblock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeblock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT || unicodeblock == Character.UnicodeBlock.BOPOMOFO || unicodeblock == Character.UnicodeBlock.HIRAGANA || unicodeblock == Character.UnicodeBlock.KATAKANA || unicodeblock == Character.UnicodeBlock.HANGUL_SYLLABLES || unicodeblock == Character.UnicodeBlock.HANGUL_JAMO;
    }

    static boolean d(int i)
    {
        return Character.isLetter(i) && a(Character.UnicodeBlock.of(i));
    }

    public static int o(String s)
    {
        byte abyte1[] = s.getBytes("UTF-8");
        byte abyte0[] = abyte1;
_L2:
        return md.a(abyte0, 0, abyte0.length, 0);
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        abyte0 = s.getBytes();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String[] p(String s)
    {
        if (s == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList();
        char ac[] = s.toCharArray();
        int i = s.length();
        boolean flag = false;
        int j = 0;
        int k = 0;
        while (k < i) 
        {
            int l = Character.codePointAt(ac, k);
            int i1 = Character.charCount(l);
            int j1;
            boolean flag2;
            boolean flag3;
            if (d(l))
            {
                if (flag)
                {
                    arraylist.add(new String(ac, j, k - j));
                }
                arraylist.add(new String(ac, k, i1));
                j1 = j;
                flag2 = false;
            } else
            if (Character.isLetterOrDigit(l))
            {
                if (!flag)
                {
                    j = k;
                }
                j1 = j;
                flag2 = true;
            } else
            if (flag)
            {
                arraylist.add(new String(ac, j, k - j));
                j1 = j;
                flag2 = false;
            } else
            {
                boolean flag1 = flag;
                j1 = j;
                flag2 = flag1;
            }
            k += i1;
            flag3 = flag2;
            j = j1;
            flag = flag3;
        }
        if (flag)
        {
            arraylist.add(new String(ac, j, k - j));
        }
        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }
}
