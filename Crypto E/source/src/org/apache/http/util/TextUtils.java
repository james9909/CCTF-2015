// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.util;


public final class TextUtils
{

    public TextUtils()
    {
    }

    public static boolean isBlank(CharSequence charsequence)
    {
        if (charsequence != null) goto _L2; else goto _L1
_L1:
        boolean flag1 = true;
_L4:
        return flag1;
_L2:
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= charsequence.length())
                {
                    break label1;
                }
                boolean flag = Character.isWhitespace(charsequence.charAt(i));
                flag1 = false;
                if (!flag)
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return true;
    }

    public static boolean isEmpty(CharSequence charsequence)
    {
        while (charsequence == null || charsequence.length() == 0) 
        {
            return true;
        }
        return false;
    }
}
