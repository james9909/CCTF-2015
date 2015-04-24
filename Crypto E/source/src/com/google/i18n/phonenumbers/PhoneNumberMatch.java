// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.util.Arrays;

public final class PhoneNumberMatch
{

    private final int a;
    private final String b;
    private final Phonenumber.PhoneNumber c;

    PhoneNumberMatch(int i, String s, Phonenumber.PhoneNumber phonenumber)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException("Start index must be >= 0.");
        }
        if (s == null || phonenumber == null)
        {
            throw new NullPointerException();
        } else
        {
            a = i;
            b = s;
            c = phonenumber;
            return;
        }
    }

    public int a()
    {
        return a;
    }

    public int b()
    {
        return a + b.length();
    }

    public String c()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof PhoneNumberMatch))
            {
                return false;
            }
            PhoneNumberMatch phonenumbermatch = (PhoneNumberMatch)obj;
            if (!b.equals(phonenumbermatch.b) || a != phonenumbermatch.a || !c.equals(phonenumbermatch.c))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(a);
        aobj[1] = b;
        aobj[2] = c;
        return Arrays.hashCode(aobj);
    }

    public String toString()
    {
        int i = a();
        int j = b();
        String s = String.valueOf(String.valueOf(b));
        return (new StringBuilder(43 + s.length())).append("PhoneNumberMatch [").append(i).append(",").append(j).append(") ").append(s).toString();
    }
}
