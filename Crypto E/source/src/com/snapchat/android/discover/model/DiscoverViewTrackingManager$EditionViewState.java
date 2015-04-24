// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;


// Referenced classes of package com.snapchat.android.discover.model:
//            DiscoverViewTrackingManager

public static class <init>
{
    public static class Builder
    {

        private String a;
        private int b;
        private boolean c;
        private int d;
        private int e;

        private void b()
        {
            if (a == null)
            {
                throw new IllegalArgumentException("Cannot build EditionViewState with null ID.");
            } else
            {
                return;
            }
        }

        public Builder a(int i)
        {
            b = i;
            return this;
        }

        public Builder a(DiscoverViewTrackingManager.EditionViewState editionviewstate)
        {
            if (editionviewstate != null)
            {
                a = DiscoverViewTrackingManager.EditionViewState.a(editionviewstate);
                b = DiscoverViewTrackingManager.EditionViewState.b(editionviewstate);
                c = DiscoverViewTrackingManager.EditionViewState.c(editionviewstate);
                d = DiscoverViewTrackingManager.EditionViewState.d(editionviewstate);
                e = DiscoverViewTrackingManager.EditionViewState.e(editionviewstate);
            }
            return this;
        }

        public Builder a(String s)
        {
            a = s;
            return this;
        }

        public Builder a(boolean flag)
        {
            c = flag;
            return this;
        }

        public DiscoverViewTrackingManager.EditionViewState a()
        {
            b();
            return new DiscoverViewTrackingManager.EditionViewState(a, b, c, d, e, null);
        }

        public Builder b(int i)
        {
            d = i;
            return this;
        }

        public Builder c(int i)
        {
            e = i;
            return this;
        }

        public Builder()
        {
            b = -1;
            d = 0;
            e = 0;
        }
    }


    private final String a;
    private final int b;
    private final boolean c;
    private final int d;
    private final int e;

    static String a(Builder.e e1)
    {
        return e1.a;
    }

    static int b(a a1)
    {
        return a1.b;
    }

    static boolean c(b b1)
    {
        return b1.c;
    }

    static int d(c c1)
    {
        return c1.d;
    }

    static int e(d d1)
    {
        return d1.e;
    }

    public String a()
    {
        return a;
    }

    public int b()
    {
        return b;
    }

    public boolean c()
    {
        return c;
    }

    public int d()
    {
        return d;
    }

    public int e()
    {
        return e;
    }

    private Builder.e(String s, int i, boolean flag, int j, int k)
    {
        a = s;
        b = i;
        c = flag;
        d = j;
        e = k;
    }

    e(String s, int i, boolean flag, int j, int k, e e1)
    {
        this(s, i, flag, j, k);
    }
}
