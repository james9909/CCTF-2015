// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.HttpDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public final class Headers
{
    public static final class Builder
    {

        private final List a = new ArrayList(20);

        static List a(Builder builder)
        {
            return builder.a;
        }

        private Builder c(String s, String s1)
        {
            a.add(s);
            a.add(s1.trim());
            return this;
        }

        Builder a(String s)
        {
            int i = s.indexOf(":", 1);
            if (i != -1)
            {
                return c(s.substring(0, i), s.substring(i + 1));
            }
            if (s.startsWith(":"))
            {
                return c("", s.substring(1));
            } else
            {
                return c("", s);
            }
        }

        public Builder a(String s, String s1)
        {
            if (s == null)
            {
                throw new IllegalArgumentException("name == null");
            }
            if (s1 == null)
            {
                throw new IllegalArgumentException("value == null");
            }
            if (s.length() == 0 || s.indexOf('\0') != -1 || s1.indexOf('\0') != -1)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Unexpected header: ").append(s).append(": ").append(s1).toString());
            } else
            {
                return c(s, s1);
            }
        }

        public Headers a()
        {
            return new Headers(this);
        }

        public Builder b(String s)
        {
            for (int i = 0; i < a.size(); i += 2)
            {
                if (s.equalsIgnoreCase((String)a.get(i)))
                {
                    a.remove(i);
                    a.remove(i);
                    i -= 2;
                }
            }

            return this;
        }

        public Builder b(String s, String s1)
        {
            b(s);
            a(s, s1);
            return this;
        }

        public String c(String s)
        {
            for (int i = -2 + a.size(); i >= 0; i -= 2)
            {
                if (s.equalsIgnoreCase((String)a.get(i)))
                {
                    return (String)a.get(i + 1);
                }
            }

            return null;
        }

        public Builder()
        {
        }
    }


    private final String a[];

    private Headers(Builder builder)
    {
        a = (String[])Builder.a(builder).toArray(new String[Builder.a(builder).size()]);
    }


    private Headers(String as[])
    {
        a = as;
    }

    public static transient Headers a(String as[])
    {
        if (as == null || as.length % 2 != 0)
        {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String as1[] = (String[])as.clone();
        for (int i = 0; i < as1.length; i++)
        {
            if (as1[i] == null)
            {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            as1[i] = as1[i].trim();
        }

        for (int j = 0; j < as1.length; j += 2)
        {
            String s = as1[j];
            String s1 = as1[j + 1];
            if (s.length() == 0 || s.indexOf('\0') != -1 || s1.indexOf('\0') != -1)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Unexpected header: ").append(s).append(": ").append(s1).toString());
            }
        }

        return new Headers(as1);
    }

    private static String a(String as[], String s)
    {
        for (int i = -2 + as.length; i >= 0; i -= 2)
        {
            if (s.equalsIgnoreCase(as[i]))
            {
                return as[i + 1];
            }
        }

        return null;
    }

    public int a()
    {
        return a.length / 2;
    }

    public String a(int i)
    {
        int j = i * 2;
        if (j < 0 || j >= a.length)
        {
            return null;
        } else
        {
            return a[j];
        }
    }

    public String a(String s)
    {
        return a(a, s);
    }

    public String b(int i)
    {
        int j = 1 + i * 2;
        if (j < 0 || j >= a.length)
        {
            return null;
        } else
        {
            return a[j];
        }
    }

    public Date b(String s)
    {
        String s1 = a(s);
        if (s1 != null)
        {
            return HttpDate.a(s1);
        } else
        {
            return null;
        }
    }

    public Set b()
    {
        TreeSet treeset = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int i = 0;
        for (int j = a(); i < j; i++)
        {
            treeset.add(a(i));
        }

        return Collections.unmodifiableSet(treeset);
    }

    public Builder c()
    {
        Builder builder = new Builder();
        Builder.a(builder).addAll(Arrays.asList(a));
        return builder;
    }

    public List c(String s)
    {
        int i = a();
        ArrayList arraylist = null;
        for (int j = 0; j < i; j++)
        {
            if (!s.equalsIgnoreCase(a(j)))
            {
                continue;
            }
            if (arraylist == null)
            {
                arraylist = new ArrayList(2);
            }
            arraylist.add(b(j));
        }

        if (arraylist != null)
        {
            return Collections.unmodifiableList(arraylist);
        } else
        {
            return Collections.emptyList();
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        for (int j = a(); i < j; i++)
        {
            stringbuilder.append(a(i)).append(": ").append(b(i)).append("\n");
        }

        return stringbuilder.toString();
    }
}
