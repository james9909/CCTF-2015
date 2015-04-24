// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;


public class DebitCardNumberValidator
{

    public DebitCardNumberValidator()
    {
    }

    public boolean a(String s)
    {
        if (s.length() != 16)
        {
            return false;
        }
        int i = -1 + s.length();
        int j = 0;
        while (i >= 0) 
        {
            int k = Character.getNumericValue(s.charAt(i));
            int l;
            if (i % 2 == 0)
            {
                int i1 = k * 2;
                if (i1 > 9)
                {
                    i1 = i1 / 10 + i1 % 10;
                }
                l = i1 + j;
            } else
            {
                l = k + j;
            }
            i--;
            j = l;
        }
        boolean flag;
        if (j % 10 == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public boolean b(String s)
    {
        return s.length() == 16;
    }
}
