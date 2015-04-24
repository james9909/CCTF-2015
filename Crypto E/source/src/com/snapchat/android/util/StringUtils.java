// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.util.Collection;
import java.util.Iterator;

public class StringUtils
{

    public StringUtils()
    {
    }

    public static String a(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return s.replaceAll("[^A-Za-z0-9]", "");
        }
    }

    public static String a(Collection collection, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = collection.iterator();
        do
        {
label0:
            {
                if (iterator.hasNext())
                {
                    stringbuilder.append(iterator.next());
                    if (iterator.hasNext())
                    {
                        break label0;
                    }
                }
                return stringbuilder.toString();
            }
            stringbuilder.append(s);
        } while (true);
    }

    public static String a(byte abyte0[])
    {
        String s;
        if (abyte0 == null)
        {
            s = null;
        } else
        {
            s = "";
            int i = 0;
            while (i < abyte0.length) 
            {
                s = (new StringBuilder()).append(s).append(Integer.toString(256 + (0xff & abyte0[i]), 16).substring(1)).toString();
                i++;
            }
        }
        return s;
    }
}
