// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import android.graphics.Bitmap;
import android.net.Uri;
import com.snapchat.android.analytics.SnapbryoAnalytics;
import com.snapchat.android.discover.DSnapMediaCompressor;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.SnapWomb;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;

// Referenced classes of package com.snapchat.android.discover.model:
//            DSnapVideobryo, DSnapImagebryo

public abstract class DSnapbryo extends AnnotatedMediabryo
{
    public static class Builder
    {

        private String a;
        private String b;
        private String c;
        private String d;
        private Bitmap e;
        private Uri f;
        private Bitmap g;
        private Date h;
        private String i;
        private LinkedHashSet j;
        private com.snapchat.android.model.Mediabryo.UploadStatus k;
        private com.snapchat.android.model.Mediabryo.SendStatus l;
        private com.snapchat.android.model.Mediabryo.PostStatus m;
        private String n;
        private boolean o;
        private DSnapMediaCompressor p;

        static String a(Builder builder)
        {
            return builder.i;
        }

        static Date b(Builder builder)
        {
            return builder.h;
        }

        static String c(Builder builder)
        {
            return builder.a;
        }

        static String d(Builder builder)
        {
            return builder.b;
        }

        static String e(Builder builder)
        {
            return builder.c;
        }

        static String f(Builder builder)
        {
            return builder.d;
        }

        static LinkedHashSet g(Builder builder)
        {
            return builder.j;
        }

        static com.snapchat.android.model.Mediabryo.UploadStatus h(Builder builder)
        {
            return builder.k;
        }

        static com.snapchat.android.model.Mediabryo.SendStatus i(Builder builder)
        {
            return builder.l;
        }

        static com.snapchat.android.model.Mediabryo.PostStatus j(Builder builder)
        {
            return builder.m;
        }

        static boolean k(Builder builder)
        {
            return builder.o;
        }

        static Bitmap l(Builder builder)
        {
            return builder.e;
        }

        static Uri m(Builder builder)
        {
            return builder.f;
        }

        static String n(Builder builder)
        {
            return builder.n;
        }

        static Bitmap o(Builder builder)
        {
            return builder.g;
        }

        public Builder a(Bitmap bitmap)
        {
            e = bitmap;
            return this;
        }

        public Builder a(String s)
        {
            d = s;
            return this;
        }

        public DSnapbryo a()
        {
            if (f != null)
            {
                return new DSnapVideobryo(this);
            } else
            {
                return new DSnapImagebryo(this);
            }
        }

        public Builder(String s, String s1, String s2)
        {
            h = new Date();
            j = new LinkedHashSet();
            k = com.snapchat.android.model.Mediabryo.UploadStatus.NOT_UPLOADED;
            l = com.snapchat.android.model.Mediabryo.SendStatus.UNSENT;
            m = com.snapchat.android.model.Mediabryo.PostStatus.NOT_POSTED;
            p = new DSnapMediaCompressor();
            i = (new StringBuilder()).append(UserPrefs.k()).append("~").append(UUID.randomUUID().toString()).toString().toUpperCase(Locale.US);
            a = s;
            b = s1;
            c = s2;
        }
    }


    protected DSnapMediaCompressor a;
    protected SnapbryoAnalytics b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;
    private String g;
    private String h;
    private HashMap i;
    private HashMap j;

    protected DSnapbryo(Builder builder)
    {
        super(Builder.a(builder), Builder.b(builder));
        b = new SnapbryoAnalytics();
        c = Builder.c(builder);
        d = Builder.d(builder);
        e = Builder.e(builder);
        f = Builder.f(builder);
        a(Builder.g(builder));
        a(Builder.h(builder));
        a(Builder.i(builder));
        a(Builder.j(builder));
        e(Builder.k(builder));
        b(Builder.l(builder));
        a(Builder.m(builder));
        h(Builder.n(builder));
        a(Builder.o(builder));
        Q();
    }

    protected DSnapbryo(DSnapbryo dsnapbryo)
    {
        super(dsnapbryo.N(), dsnapbryo.O());
        b = new SnapbryoAnalytics();
        c = dsnapbryo.c;
        d = dsnapbryo.d;
        e = dsnapbryo.e;
        f = dsnapbryo.f;
        a(dsnapbryo.D());
        a(dsnapbryo.J());
        a(dsnapbryo.K());
        a(dsnapbryo.L());
        e(dsnapbryo.P());
        b(dsnapbryo.G());
        a(dsnapbryo.I());
        h(dsnapbryo.A());
        d(dsnapbryo.s());
        e(dsnapbryo.t());
        f(dsnapbryo.x());
        c(dsnapbryo.w());
        g(dsnapbryo.y());
        a(dsnapbryo.B());
        Q();
    }

    private void Q()
    {
        a = DSnapMediaCompressor.a();
        CbcEncryptionAlgorithm cbcencryptionalgorithm = new CbcEncryptionAlgorithm();
        g = cbcencryptionalgorithm.a();
        h = cbcencryptionalgorithm.b();
        i = new HashMap();
        j = new HashMap();
    }

    private void b(com.snapchat.android.model.Mediabryo.SendStatus sendstatus)
    {
        if (sendstatus == com.snapchat.android.model.Mediabryo.SendStatus.SENT)
        {
            b.b();
        } else
        {
            if (sendstatus == com.snapchat.android.model.Mediabryo.SendStatus.SENDING || sendstatus == com.snapchat.android.model.Mediabryo.SendStatus.SENDING_ON_UPLOAD)
            {
                b.a();
                return;
            }
            if (sendstatus == com.snapchat.android.model.Mediabryo.SendStatus.FAILED)
            {
                b.c();
                return;
            }
        }
    }

    public com.snapchat.android.discover.api.SendDSnapTask.DSnapSendStatus a(String s)
    {
        if (!i.containsKey(s))
        {
            return null;
        } else
        {
            return (com.snapchat.android.discover.api.SendDSnapTask.DSnapSendStatus)i.get(s);
        }
    }

    public abstract DSnapbryo a();

    public void a(com.snapchat.android.discover.api.SendDSnapTask.DSnapSendStatus dsnapsendstatus)
    {
        String s;
        for (Iterator iterator = i.keySet().iterator(); iterator.hasNext(); i.put(s, dsnapsendstatus))
        {
            s = (String)iterator.next();
        }

    }

    public void a(com.snapchat.android.model.Mediabryo.SendStatus sendstatus)
    {
        a(sendstatus, true);
    }

    protected void a(com.snapchat.android.model.Mediabryo.SendStatus sendstatus, boolean flag)
    {
        super.a(sendstatus);
        if (flag)
        {
            b(sendstatus);
        }
    }

    public void a(com.snapchat.android.model.Mediabryo.UploadStatus uploadstatus)
    {
        super.a(uploadstatus);
        SnapWomb.a().a(this);
    }

    public void a(String s, com.snapchat.android.discover.api.SendDSnapTask.DSnapSendStatus dsnapsendstatus)
    {
        i.put(s, dsnapsendstatus);
    }

    public void a(String s, Long long1)
    {
        j.put(s, long1);
    }

    public void a(LinkedHashSet linkedhashset)
    {
        super.a(linkedhashset);
        i = new HashMap();
        Friend friend;
        for (Iterator iterator = D().iterator(); iterator.hasNext(); i.put(friend.a(), com.snapchat.android.discover.api.SendDSnapTask.DSnapSendStatus.a))
        {
            friend = (Friend)iterator.next();
        }

    }

    public void b(String s)
    {
        i.remove(s);
    }

    public void c(String s)
    {
        j.remove(s);
    }

    public Object clone()
    {
        return a();
    }

    public Long d(String s)
    {
        if (!j.containsKey(s))
        {
            return null;
        } else
        {
            return (Long)j.get(s);
        }
    }

    public AnnotatedMediabryo e()
    {
        return a();
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof DSnapbryo))
        {
            return false;
        } else
        {
            return super.equals(obj);
        }
    }

    public String[] f()
    {
        String as[] = new String[i.size()];
        Iterator iterator = i.keySet().iterator();
        for (int k = 0; iterator.hasNext(); k++)
        {
            as[k] = (String)iterator.next();
        }

        return as;
    }

    public String g()
    {
        return g;
    }

    public String h()
    {
        return h;
    }
}
