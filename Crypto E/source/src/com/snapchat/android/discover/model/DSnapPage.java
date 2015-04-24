// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import android.text.TextUtils;
import com.snapchat.android.discover.analytics.handledexceptions.BadDiscoverContentException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.snapchat.android.discover.model:
//            MediaState, DSnapPanel

public class DSnapPage
{
    public static class Builder
    {

        private String a;
        private String b;
        private Integer c;
        private int d;
        private String e;
        private String f;
        private String g;
        private String h;
        private String i;
        private String j;
        private Integer k;
        private MediaState l;
        private MediaState m;
        private boolean n;
        private Map o;

        static String a(Builder builder)
        {
            return builder.a;
        }

        static String b(Builder builder)
        {
            return builder.b;
        }

        private void b()
        {
            if (a == null)
            {
                throw new BadDiscoverContentException("Cannot build dsnap page with null id.", "dsnap_id");
            }
            if (e == null)
            {
                throw new BadDiscoverContentException("Cannot build dsnap page with null edition id.", "edition_id");
            }
            if (f == null)
            {
                throw new BadDiscoverContentException("Cannot build dsnap page with null publisher name.", "publisher_name");
            }
            if (i == null || i.length() == 0)
            {
                throw new BadDiscoverContentException("Cannot build dsnap page with null color.", "color");
            }
            i = i(i);
            if (k == null)
            {
                throw new BadDiscoverContentException("Cannot build dsnap page with null ad type.", "ad_type");
            }
            if (o == null)
            {
                throw new BadDiscoverContentException("Cannot build dsnap page with invalid dsnap items.", "dsnap_item");
            } else
            {
                return;
            }
        }

        static Integer c(Builder builder)
        {
            return builder.c;
        }

        static String d(Builder builder)
        {
            return builder.e;
        }

        static String e(Builder builder)
        {
            return builder.f;
        }

        static String f(Builder builder)
        {
            return builder.g;
        }

        static String g(Builder builder)
        {
            return builder.h;
        }

        static String h(Builder builder)
        {
            return builder.i;
        }

        static String i(Builder builder)
        {
            return builder.j;
        }

        private String i(String s1)
        {
            if (s1.charAt(0) != '#')
            {
                s1 = (new StringBuilder()).append('#').append(s1).toString();
            }
            return s1;
        }

        static Integer j(Builder builder)
        {
            return builder.k;
        }

        static int k(Builder builder)
        {
            return builder.d;
        }

        static MediaState l(Builder builder)
        {
            return builder.l;
        }

        static MediaState m(Builder builder)
        {
            return builder.m;
        }

        static Map n(Builder builder)
        {
            return builder.o;
        }

        static boolean o(Builder builder)
        {
            return builder.n;
        }

        public Builder a(int i1)
        {
            d = i1;
            return this;
        }

        public Builder a(MediaState mediastate)
        {
            l = mediastate;
            return this;
        }

        public Builder a(Integer integer)
        {
            c = integer;
            return this;
        }

        public Builder a(String s1)
        {
            a = s1;
            return this;
        }

        public Builder a(String s1, DSnapPanel dsnappanel)
        {
            o.put(s1, dsnappanel);
            return this;
        }

        public Builder a(boolean flag)
        {
            n = flag;
            return this;
        }

        public DSnapPage a()
        {
            b();
            return new DSnapPage(this);
        }

        public Builder b(MediaState mediastate)
        {
            m = mediastate;
            return this;
        }

        public Builder b(Integer integer)
        {
            k = integer;
            return this;
        }

        public Builder b(String s1)
        {
            b = s1;
            return this;
        }

        public Builder c(String s1)
        {
            e = s1;
            return this;
        }

        public Builder d(String s1)
        {
            f = s1;
            return this;
        }

        public Builder e(String s1)
        {
            g = s1;
            return this;
        }

        public Builder f(String s1)
        {
            h = s1;
            return this;
        }

        public Builder g(String s1)
        {
            i = s1;
            return this;
        }

        public Builder h(String s1)
        {
            j = s1;
            return this;
        }

        public Builder()
        {
            a = null;
            c = null;
            d = -1;
            e = null;
            k = null;
            l = MediaState.a;
            m = MediaState.a;
            o = new HashMap();
        }
    }

    public static final class Form extends Enum
    {

        public static final Form a;
        public static final Form b;
        private static final Form c[];

        public static Form a(String s1)
        {
            return valueOf(s1.toUpperCase(Locale.ENGLISH));
        }

        public static Form valueOf(String s1)
        {
            return (Form)Enum.valueOf(com/snapchat/android/discover/model/DSnapPage$Form, s1);
        }

        public static Form[] values()
        {
            return (Form[])c.clone();
        }

        public String a()
        {
            return name();
        }

        public int b()
        {
            return ordinal();
        }

        static 
        {
            a = new Form("TOP_SNAP", 0);
            b = new Form("LONGFORM", 1);
            Form aform[] = new Form[2];
            aform[0] = a;
            aform[1] = b;
            c = aform;
        }

        private Form(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final int e;
    private final Integer f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private final String k;
    private final Integer l;
    private final MediaState m;
    private final MediaState n;
    private final boolean o;
    private final Map p;

    private DSnapPage(Builder builder)
    {
        a = Builder.a(builder);
        b = Builder.b(builder);
        f = Builder.c(builder);
        g = Builder.d(builder);
        h = Builder.e(builder);
        i = Builder.f(builder);
        j = Builder.g(builder);
        k = Builder.h(builder);
        c = Builder.i(builder);
        l = Builder.j(builder);
        e = Builder.k(builder);
        m = Builder.l(builder);
        n = Builder.m(builder);
        p = Builder.n(builder);
        String s1;
        if (r())
        {
            s1 = a(i);
        } else
        {
            s1 = null;
        }
        d = s1;
        o = Builder.o(builder);
    }


    protected static String a(String s1)
    {
        if (!TextUtils.isEmpty(s1)) goto _L2; else goto _L1
_L1:
        int i1;
        return null;
_L2:
        String as[];
        int j1;
        int k1;
        if ((i1 = s1.indexOf("?")) < 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        as = s1.substring(i1 + 1).split("&");
        j1 = as.length;
        k1 = 0;
_L4:
        if (k1 < j1)
        {
label0:
            {
                String as1[] = as[k1].split("=");
                if (!as1[0].equals("ad_key"))
                {
                    break label0;
                }
                if (as1.length > 1)
                {
                    return as1[1];
                }
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        k1++;
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    public String a()
    {
        return a;
    }

    public String b()
    {
        return c;
    }

    public Integer c()
    {
        return f;
    }

    public String d()
    {
        return g;
    }

    public String e()
    {
        return h;
    }

    public String f()
    {
        return i;
    }

    public String g()
    {
        if (r())
        {
            return i;
        } else
        {
            return j;
        }
    }

    public String h()
    {
        return k;
    }

    public Integer i()
    {
        return l;
    }

    public int j()
    {
        return e;
    }

    public MediaState k()
    {
        if (n == MediaState.f)
        {
            return m;
        } else
        {
            return n;
        }
    }

    public MediaState l()
    {
        return m;
    }

    public MediaState m()
    {
        return n;
    }

    public DSnapPanel n()
    {
        return (DSnapPanel)p.get(Form.a.a());
    }

    public DSnapPanel o()
    {
        return (DSnapPanel)p.get(Form.b.a());
    }

    public int p()
    {
        return p.size();
    }

    public boolean q()
    {
        return TextUtils.equals(b, "auto_advancing");
    }

    public boolean r()
    {
        return i().intValue() != 0;
    }

    public String s()
    {
        return d;
    }

    public boolean t()
    {
        return o;
    }

    public String toString()
    {
        Object aobj[] = new Object[5];
        String s1;
        if (r())
        {
            s1 = (new StringBuilder()).append("Ad").append(j()).toString();
        } else
        {
            s1 = "Content";
        }
        aobj[0] = s1;
        aobj[1] = e();
        aobj[2] = d();
        aobj[3] = c();
        aobj[4] = g();
        return String.format("DSnap-%s-%s-%s-%s-%s", aobj);
    }
}
