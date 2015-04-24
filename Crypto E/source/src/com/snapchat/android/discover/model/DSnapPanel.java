// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import com.snapchat.android.discover.analytics.handledexceptions.BadDiscoverContentException;
import com.snapchat.data.gson.discover.VideoCatalogResponse;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.discover.model:
//            MediaState

public class DSnapPanel
{
    public static class Builder
    {

        private String a;
        private String b;
        private String c;
        private String d;
        private MediaType e;
        private Mode f;
        private Docking g;
        private MediaState h;
        private VideoCatalogResponse i;

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
            if (a == null && e != MediaType.d)
            {
                throw new BadDiscoverContentException("Cannot build dsnap panel with null uri.", "uri");
            }
            if (e == null)
            {
                throw new BadDiscoverContentException("Cannot build dsnap panel with null media type.", "media_type");
            } else
            {
                return;
            }
        }

        static String c(Builder builder)
        {
            return builder.c;
        }

        static String d(Builder builder)
        {
            return builder.d;
        }

        static VideoCatalogResponse e(Builder builder)
        {
            return builder.i;
        }

        static MediaType f(Builder builder)
        {
            return builder.e;
        }

        static Mode g(Builder builder)
        {
            return builder.f;
        }

        static Docking h(Builder builder)
        {
            return builder.g;
        }

        static MediaState i(Builder builder)
        {
            return builder.h;
        }

        public Builder a(MediaState mediastate)
        {
            h = mediastate;
            return this;
        }

        public Builder a(VideoCatalogResponse videocatalogresponse)
        {
            i = videocatalogresponse;
            return this;
        }

        public Builder a(String s)
        {
            a = s;
            return this;
        }

        public DSnapPanel a()
        {
            b();
            if (f == null)
            {
                f = Mode.a;
            }
            if (g == null)
            {
                g = Docking.a;
            }
            if (h == null)
            {
                h = e.a();
            }
            return new DSnapPanel(this);
        }

        public Builder b(String s)
        {
            b = s;
            return this;
        }

        public Builder c(String s)
        {
            c = s;
            return this;
        }

        public Builder d(String s)
        {
            d = s;
            return this;
        }

        public Builder e(String s)
        {
            e = MediaType.valueOf(s);
            return this;
        }

        public Builder f(String s)
        {
            if (s != null)
            {
                f = Mode.a(s);
            }
            return this;
        }

        public Builder g(String s)
        {
            if (s != null)
            {
                g = Docking.a(s);
            }
            return this;
        }

        public Builder()
        {
        }
    }

    public static final class Docking extends Enum
    {

        public static final Docking a;
        public static final Docking b;
        public static final Docking c;
        private static final Docking d[];

        public static Docking a(String s)
        {
            return valueOf(s.toUpperCase(Locale.ENGLISH));
        }

        public static Docking valueOf(String s)
        {
            return (Docking)Enum.valueOf(com/snapchat/android/discover/model/DSnapPanel$Docking, s);
        }

        public static Docking[] values()
        {
            return (Docking[])d.clone();
        }

        static 
        {
            a = new Docking("TOP", 0);
            b = new Docking("CENTER", 1);
            c = new Docking("BOTTOM", 2);
            Docking adocking[] = new Docking[3];
            adocking[0] = a;
            adocking[1] = b;
            adocking[2] = c;
            d = adocking;
        }

        private Docking(String s, int j)
        {
            super(s, j);
        }
    }

    public static final class MediaType extends Enum
    {

        public static final MediaType a;
        public static final MediaType b;
        public static final MediaType c;
        public static final MediaType d;
        private static final MediaType f[];
        private final MediaState e;

        public static MediaType a(String s)
        {
            return valueOf(s.toUpperCase(Locale.ENGLISH));
        }

        public static MediaType valueOf(String s)
        {
            return (MediaType)Enum.valueOf(com/snapchat/android/discover/model/DSnapPanel$MediaType, s);
        }

        public static MediaType[] values()
        {
            return (MediaType[])f.clone();
        }

        public MediaState a()
        {
            return e;
        }

        static 
        {
            a = new MediaType("IMAGE", 0, MediaState.f);
            b = new MediaType("VIDEO", 1, MediaState.f);
            c = new MediaType("LOCAL_WEBPAGE", 2, MediaState.f);
            d = new MediaType("REMOTE_VIDEO", 3, MediaState.a);
            MediaType amediatype[] = new MediaType[4];
            amediatype[0] = a;
            amediatype[1] = b;
            amediatype[2] = c;
            amediatype[3] = d;
            f = amediatype;
        }

        private MediaType(String s, int j, MediaState mediastate)
        {
            super(s, j);
            e = mediastate;
        }
    }

    public static final class Mode extends Enum
    {

        public static final Mode a;
        public static final Mode b;
        private static final Mode c[];

        public static Mode a(String s)
        {
            return valueOf(s.toUpperCase(Locale.ENGLISH));
        }

        public static Mode valueOf(String s)
        {
            return (Mode)Enum.valueOf(com/snapchat/android/discover/model/DSnapPanel$Mode, s);
        }

        public static Mode[] values()
        {
            return (Mode[])c.clone();
        }

        static 
        {
            a = new Mode("LOOPING", 0);
            b = new Mode("ONCE", 1);
            Mode amode[] = new Mode[2];
            amode[0] = a;
            amode[1] = b;
            c = amode;
        }

        private Mode(String s, int j)
        {
            super(s, j);
        }
    }


    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final VideoCatalogResponse e;
    private final MediaType f;
    private final Mode g;
    private final Docking h;
    private final MediaState i;

    private DSnapPanel(Builder builder)
    {
        a = Builder.a(builder);
        b = Builder.b(builder);
        c = Builder.c(builder);
        d = Builder.d(builder);
        e = Builder.e(builder);
        f = Builder.f(builder);
        g = Builder.g(builder);
        h = Builder.h(builder);
        i = Builder.i(builder);
    }


    public String a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public String c()
    {
        return c;
    }

    public String d()
    {
        return d;
    }

    public VideoCatalogResponse e()
    {
        return e;
    }

    public MediaType f()
    {
        return f;
    }

    public Mode g()
    {
        return g;
    }

    public Docking h()
    {
        return h;
    }

    public MediaState i()
    {
        return i;
    }

    public String toString()
    {
        return (new StringBuilder()).append("DSnapPanel-").append(f).append("-").append(a).append("-").append(b).toString();
    }
}
