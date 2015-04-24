// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sourceforge.jeval;


public class EvaluationHelper
{

    public EvaluationHelper()
    {
    }

    public static String a(String s, String s1, String s2)
    {
        if (s != null)
        {
            for (int i = s.indexOf(s1, 0); i > -1;)
            {
                StringBuffer stringbuffer = new StringBuffer((new StringBuilder()).append(s.substring(0, i)).append(s.substring(i + s1.length())).toString());
                stringbuffer.insert(i, s2);
                s = stringbuffer.toString();
                int j = i + s2.length();
                if (j < s.length())
                {
                    i = s.indexOf(s1, j);
                } else
                {
                    i = -1;
                }
            }

        }
        return s;
    }

    public static boolean a(char c)
    {
        return c == ' ' || c == '\t' || c == '\n' || c == '\r' || c == '\f';
    }
}
