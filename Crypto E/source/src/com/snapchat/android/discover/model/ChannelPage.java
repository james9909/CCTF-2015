// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.snapchat.android.discover.analytics.handledexceptions.BadDiscoverContentException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.discover.model:
//            MediaState

public class ChannelPage
    implements Parcelable
{
    public static class Builder
    {

        private String a;
        private String b;
        private String c;
        private int d;
        private int e;
        private String f;
        private String g;
        private String h;
        private String i;
        private boolean j;
        private int k;
        private String l;
        private int m;
        private String n;
        private String o;
        private String p;
        private String q;
        private MediaState r;
        private MediaState s;
        private MediaState t;
        private MediaState u;

        static String a(Builder builder)
        {
            return builder.a;
        }

        static int b(Builder builder)
        {
            return builder.d;
        }

        private void b()
        {
            if (a == null)
            {
                throw new BadDiscoverContentException("Cannot build ChannelPage with null publisher name.", "publisher_name");
            }
            if (b == null || b.length() == 0)
            {
                throw new BadDiscoverContentException((new StringBuilder()).append("Cannot build ChannelPage with primary color: ").append(b).toString(), "primary_color");
            }
            d = m(b);
            if (c == null || c.length() == 0)
            {
                throw new BadDiscoverContentException((new StringBuilder()).append("Cannot build ChannelPage with secondary color: ").append(c).toString(), "secondary_color");
            }
            e = m(c);
            if (f == null)
            {
                throw new BadDiscoverContentException("Cannot build ChannelPage with null filled icon URL.", "filled_icon");
            }
            if (g == null)
            {
                throw new BadDiscoverContentException("Cannot build ChannelPage with null inverted icon URL.", "inverted_icon");
            }
            if (i == null)
            {
                throw new BadDiscoverContentException("Cannot build ChannelPage with null intro video URL.", "intro_video");
            } else
            {
                return;
            }
        }

        static int c(Builder builder)
        {
            return builder.e;
        }

        static int d(Builder builder)
        {
            return builder.k;
        }

        static String e(Builder builder)
        {
            return builder.l;
        }

        static int f(Builder builder)
        {
            return builder.m;
        }

        static boolean g(Builder builder)
        {
            return builder.j;
        }

        static String h(Builder builder)
        {
            return builder.i;
        }

        static String i(Builder builder)
        {
            return builder.f;
        }

        static String j(Builder builder)
        {
            return builder.g;
        }

        static String k(Builder builder)
        {
            return builder.h;
        }

        static String l(Builder builder)
        {
            return builder.n;
        }

        private int m(String s1)
        {
            if (s1.charAt(0) != '#')
            {
                s1 = (new StringBuilder()).append('#').append(s1).toString();
            }
            return Color.parseColor(s1);
        }

        static String m(Builder builder)
        {
            return builder.o;
        }

        static String n(Builder builder)
        {
            return builder.p;
        }

        static String o(Builder builder)
        {
            return builder.q;
        }

        static MediaState p(Builder builder)
        {
            return builder.r;
        }

        static MediaState q(Builder builder)
        {
            return builder.s;
        }

        static MediaState r(Builder builder)
        {
            return builder.t;
        }

        static MediaState s(Builder builder)
        {
            return builder.u;
        }

        public Builder a(int i1)
        {
            m = i1;
            return this;
        }

        public Builder a(MediaState mediastate)
        {
            r = mediastate;
            return this;
        }

        public Builder a(String s1)
        {
            a = s1;
            return this;
        }

        public Builder a(boolean flag)
        {
            j = flag;
            return this;
        }

        public ChannelPage a()
        {
            b();
            return new ChannelPage(this);
        }

        public Builder b(int i1)
        {
            k = i1;
            return this;
        }

        public Builder b(MediaState mediastate)
        {
            s = mediastate;
            return this;
        }

        public Builder b(String s1)
        {
            b = s1;
            return this;
        }

        public Builder c(MediaState mediastate)
        {
            t = mediastate;
            return this;
        }

        public Builder c(String s1)
        {
            c = s1;
            return this;
        }

        public Builder d(MediaState mediastate)
        {
            u = mediastate;
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
            n = s1;
            return this;
        }

        public Builder i(String s1)
        {
            o = s1;
            return this;
        }

        public Builder j(String s1)
        {
            p = s1;
            return this;
        }

        public Builder k(String s1)
        {
            q = s1;
            return this;
        }

        public Builder l(String s1)
        {
            l = s1;
            return this;
        }

        public Builder()
        {
            l = null;
            r = MediaState.a;
            s = MediaState.a;
            t = MediaState.a;
            u = MediaState.a;
        }
    }

    public static final class MediaType extends Enum
    {

        public static final MediaType a;
        public static final MediaType b;
        public static final MediaType c;
        public static final MediaType d;
        private static final MediaType e[];

        public static MediaType valueOf(String s1)
        {
            return (MediaType)Enum.valueOf(com/snapchat/android/discover/model/ChannelPage$MediaType, s1);
        }

        public static MediaType[] values()
        {
            return (MediaType[])e.clone();
        }

        static 
        {
            a = new MediaType("INTRO_VIDEO", 0);
            b = new MediaType("FILLED_ICON", 1);
            c = new MediaType("INVERTED_ICON", 2);
            d = new MediaType("LOADING_ICON", 3);
            MediaType amediatype[] = new MediaType[4];
            amediatype[0] = a;
            amediatype[1] = b;
            amediatype[2] = c;
            amediatype[3] = d;
            e = amediatype;
        }

        private MediaType(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public ChannelPage a(Parcel parcel)
        {
            return new ChannelPage(parcel);
        }

        public ChannelPage[] a(int i1)
        {
            return new ChannelPage[i1];
        }

        public Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public Object[] newArray(int i1)
        {
            return a(i1);
        }

    };
    public static String a = "ChannelPage";
    private final String b;
    private final String c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final boolean h;
    private final Map i;
    private final Map j;
    private final Map k;

    private ChannelPage(Parcel parcel)
    {
        boolean flag = true;
        int i1 = 0;
        super();
        i = new HashMap(4);
        j = new HashMap(4);
        k = new HashMap(4);
        b = parcel.readString();
        c = parcel.readString();
        d = parcel.readInt();
        e = parcel.readInt();
        f = parcel.readInt();
        g = parcel.readInt();
        MediaType amediatype[];
        if (parcel.readInt() != flag)
        {
            flag = false;
        }
        h = flag;
        amediatype = MediaType.values();
        for (int j1 = amediatype.length; i1 < j1; i1++)
        {
            MediaType mediatype = amediatype[i1];
            k.put(mediatype, parcel.readString());
            j.put(mediatype, parcel.readString());
            i.put(mediatype, MediaState.valueOf(parcel.readString()));
        }

    }


    private ChannelPage(Builder builder)
    {
        i = new HashMap(4);
        j = new HashMap(4);
        k = new HashMap(4);
        b = Builder.a(builder);
        e = Builder.b(builder);
        f = Builder.c(builder);
        d = Builder.d(builder);
        c = Builder.e(builder);
        g = Builder.f(builder);
        h = Builder.g(builder);
        k.put(MediaType.a, Builder.h(builder));
        k.put(MediaType.b, Builder.i(builder));
        k.put(MediaType.c, Builder.j(builder));
        k.put(MediaType.d, Builder.k(builder));
        j.put(MediaType.a, Builder.l(builder));
        j.put(MediaType.b, Builder.m(builder));
        j.put(MediaType.c, Builder.n(builder));
        j.put(MediaType.d, Builder.o(builder));
        i.put(MediaType.a, Builder.p(builder));
        i.put(MediaType.b, Builder.q(builder));
        i.put(MediaType.c, Builder.r(builder));
        if (Builder.k(builder) == null)
        {
            i.put(MediaType.d, MediaState.f);
            return;
        } else
        {
            i.put(MediaType.d, Builder.s(builder));
            return;
        }
    }


    public MediaType a(String s1)
    {
        for (Iterator iterator = k.keySet().iterator(); iterator.hasNext();)
        {
            MediaType mediatype = (MediaType)iterator.next();
            if (TextUtils.equals(s1, (CharSequence)k.get(mediatype)))
            {
                return mediatype;
            }
        }

        return null;
    }

    public String a()
    {
        return b;
    }

    public String a(MediaType mediatype)
    {
        return (String)k.get(mediatype);
    }

    public MediaState b(MediaType mediatype)
    {
        return (MediaState)i.get(mediatype);
    }

    public String b()
    {
        return (String)k.get(MediaType.b);
    }

    public String c()
    {
        return (String)k.get(MediaType.c);
    }

    public String d()
    {
        return (String)k.get(MediaType.d);
    }

    public int describeContents()
    {
        return 0;
    }

    public String e()
    {
        return (String)k.get(MediaType.a);
    }

    public String f()
    {
        return c;
    }

    public int g()
    {
        return e;
    }

    public int h()
    {
        return f;
    }

    public int i()
    {
        return g;
    }

    public boolean j()
    {
        return v() == MediaState.f;
    }

    public boolean k()
    {
        return u() == MediaState.f;
    }

    public boolean l()
    {
        return s() == MediaState.f && p() != null;
    }

    public boolean m()
    {
        return t() == MediaState.f && q() != null;
    }

    public boolean n()
    {
        return j() && l() && m() && k();
    }

    public String o()
    {
        return (String)j.get(MediaType.a);
    }

    public String p()
    {
        return (String)j.get(MediaType.b);
    }

    public String q()
    {
        return (String)j.get(MediaType.c);
    }

    public String r()
    {
        return (String)j.get(MediaType.d);
    }

    public MediaState s()
    {
        return (MediaState)i.get(MediaType.b);
    }

    public MediaState t()
    {
        return (MediaState)i.get(MediaType.c);
    }

    public String toString()
    {
        return (new StringBuilder()).append("Channel-").append(a()).toString();
    }

    public MediaState u()
    {
        return (MediaState)i.get(MediaType.d);
    }

    public MediaState v()
    {
        return (MediaState)i.get(MediaType.a);
    }

    public String w()
    {
        return Integer.toString(e().hashCode());
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        int j1 = 0;
        parcel.writeString(b);
        parcel.writeString(c);
        parcel.writeInt(d);
        parcel.writeInt(e);
        parcel.writeInt(f);
        parcel.writeInt(g);
        int k1;
        MediaType amediatype[];
        if (h)
        {
            k1 = 1;
        } else
        {
            k1 = 0;
        }
        parcel.writeInt(k1);
        amediatype = MediaType.values();
        for (int l1 = amediatype.length; j1 < l1; j1++)
        {
            MediaType mediatype = amediatype[j1];
            parcel.writeString((String)k.get(mediatype));
            parcel.writeString((String)j.get(mediatype));
            parcel.writeString(((MediaState)i.get(mediatype)).name());
        }

    }

    public boolean x()
    {
        return h;
    }

}
