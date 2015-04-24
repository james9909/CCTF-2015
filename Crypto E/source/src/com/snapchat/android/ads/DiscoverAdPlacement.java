// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ads;

import android.os.Bundle;

// Referenced classes of package com.snapchat.android.ads:
//            AdPlacement

public class DiscoverAdPlacement extends AdPlacement
{
    public static class Builder
    {

        private String a;
        private String b;
        private int c;
        private int d;

        public Builder a()
        {
            c = 0;
            return this;
        }

        public Builder a(int i)
        {
            c = i;
            return this;
        }

        public Builder a(String s)
        {
            a = s;
            return this;
        }

        public Builder b(int i)
        {
            d = i;
            return this;
        }

        public Builder b(String s)
        {
            b = s;
            return this;
        }

        public DiscoverAdPlacement b()
        {
            if (a == null)
            {
                throw new IllegalArgumentException("editionName should not be null.");
            }
            if (b == null)
            {
                throw new IllegalArgumentException("channelName should not be null.");
            } else
            {
                return new DiscoverAdPlacement(a, b, c, d);
            }
        }

        public Builder()
        {
        }
    }


    private final String a;
    private final String b;
    private final int c;
    private final int d;

    private DiscoverAdPlacement(String s, String s1, int i, int j)
    {
        a = s;
        b = s1;
        c = i;
        d = j;
    }


    public String a()
    {
        Object aobj[] = new Object[4];
        aobj[0] = "discover";
        aobj[1] = b;
        aobj[2] = a;
        aobj[3] = Integer.valueOf(c);
        return String.format("%s-%s-%s-[%s]", aobj);
    }

    public String a(String s, String s1)
    {
        Object aobj[] = new Object[4];
        aobj[0] = s1;
        aobj[1] = s;
        aobj[2] = "discover";
        aobj[3] = b;
        return String.format("/%s/%s/%s/%s", aobj).replaceAll("\\s", "");
    }

    public Bundle b()
    {
        Bundle bundle = new Bundle();
        String s;
        if (c == 0)
        {
            s = "title";
        } else
        {
            s = Integer.toString(c);
        }
        bundle.putString("position", s);
        bundle.putString("edition", a);
        return bundle;
    }

    public String toString()
    {
        Object aobj[] = new Object[4];
        aobj[0] = b;
        aobj[1] = a;
        aobj[2] = Integer.valueOf(c);
        aobj[3] = Integer.valueOf(d);
        return String.format("AdPlaceholder(%s:%s[%d]-%d)", aobj);
    }
}
