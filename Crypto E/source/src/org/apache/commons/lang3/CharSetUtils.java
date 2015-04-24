// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;


// Referenced classes of package org.apache.commons.lang3:
//            StringUtils, CharSet

public class CharSetUtils
{

    public CharSetUtils()
    {
    }

    public static transient boolean containsAny(String s, String as[])
    {
        if (!StringUtils.isEmpty(s) && !deepEmpty(as))
        {
            CharSet charset = CharSet.getInstance(as);
            char ac[] = s.toCharArray();
            int i = ac.length;
            int j = 0;
            while (j < i) 
            {
                if (charset.contains(ac[j]))
                {
                    return true;
                }
                j++;
            }
        }
        return false;
    }

    public static transient int count(String s, String as[])
    {
        boolean flag = StringUtils.isEmpty(s);
        int i = 0;
        if (!flag)
        {
            boolean flag1 = deepEmpty(as);
            i = 0;
            if (!flag1)
            {
                CharSet charset = CharSet.getInstance(as);
                char ac[] = s.toCharArray();
                int j = ac.length;
                int k = 0;
                while (k < j) 
                {
                    if (charset.contains(ac[k]))
                    {
                        i++;
                    }
                    k++;
                }
            }
        }
        return i;
    }

    private static boolean deepEmpty(String as[])
    {
        if (as != null)
        {
            int i = as.length;
            for (int j = 0; j < i; j++)
            {
                if (StringUtils.isNotEmpty(as[j]))
                {
                    return false;
                }
            }

        }
        return true;
    }

    public static transient String delete(String s, String as[])
    {
        if (StringUtils.isEmpty(s) || deepEmpty(as))
        {
            return s;
        } else
        {
            return modify(s, as, false);
        }
    }

    public static transient String keep(String s, String as[])
    {
        if (s == null)
        {
            return null;
        }
        if (s.isEmpty() || deepEmpty(as))
        {
            return "";
        } else
        {
            return modify(s, as, true);
        }
    }

    private static String modify(String s, String as[], boolean flag)
    {
        CharSet charset = CharSet.getInstance(as);
        StringBuilder stringbuilder = new StringBuilder(s.length());
        char ac[] = s.toCharArray();
        int i = ac.length;
        for (int j = 0; j < i; j++)
        {
            if (charset.contains(ac[j]) == flag)
            {
                stringbuilder.append(ac[j]);
            }
        }

        return stringbuilder.toString();
    }

    public static transient String squeeze(String s, String as[])
    {
        if (StringUtils.isEmpty(s) || deepEmpty(as))
        {
            return s;
        }
        CharSet charset = CharSet.getInstance(as);
        StringBuilder stringbuilder = new StringBuilder(s.length());
        char ac[] = s.toCharArray();
        int i = ac.length;
        int j = 0;
        char c = ' ';
        while (j < i) 
        {
            char c1 = ac[j];
            if (c1 != c || j == 0 || !charset.contains(c1))
            {
                stringbuilder.append(c1);
                c = c1;
            }
            j++;
        }
        return stringbuilder.toString();
    }
}
