// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager;

import android.os.Bundle;
import com.snapchat.android.util.HttpUtils;
import com.snapchat.android.util.system.Clock;
import com.snapchat.android.util.system.ClockProvider;

// Referenced classes of package com.snapchat.android.networkmanager:
//            DownloadPriority

public class DownloadRequest
{
    public static class Builder
    {

        private final Clock a;
        private DownloadPriority b;
        private DownloadPriority c;
        private boolean d;
        private String e;
        private String f;
        private Bundle g;

        public Builder a(Bundle bundle)
        {
            g = bundle;
            return this;
        }

        public Builder a(DownloadPriority downloadpriority)
        {
            b = downloadpriority;
            return this;
        }

        public Builder a(String s)
        {
            e = s;
            return this;
        }

        public Builder a(boolean flag)
        {
            d = flag;
            return this;
        }

        public DownloadRequest a()
        {
            if (e == null)
            {
                throw new IllegalArgumentException("url cannot be null");
            } else
            {
                return new DownloadRequest(HttpUtils.a(e, g), f, b, c, d, a.b());
            }
        }

        public Builder b(DownloadPriority downloadpriority)
        {
            c = downloadpriority;
            return this;
        }

        public Builder b(String s)
        {
            f = s;
            return this;
        }

        public Builder()
        {
            this((new ClockProvider()).a());
        }

        protected Builder(Clock clock)
        {
            b = DownloadPriority.a;
            c = DownloadPriority.a;
            d = false;
            a = clock;
        }
    }


    private final boolean a;
    private final DownloadPriority b;
    private final DownloadPriority c;
    private final String d;
    private final String e;
    private final long f;

    private DownloadRequest(String s, String s1, DownloadPriority downloadpriority, DownloadPriority downloadpriority1, boolean flag, long l)
    {
        d = s;
        e = s1;
        b = downloadpriority;
        c = downloadpriority1;
        a = flag;
        f = l;
    }

    DownloadRequest(String s, String s1, DownloadPriority downloadpriority, DownloadPriority downloadpriority1, boolean flag, long l, 
            _cls1 _pcls1)
    {
        this(s, s1, downloadpriority, downloadpriority1, flag, l);
    }

    public DownloadPriority a()
    {
        return b;
    }

    public DownloadRequest a(DownloadRequest downloadrequest)
    {
        if (downloadrequest == null)
        {
            throw new IllegalArgumentException("other cannot be null");
        }
        if (!downloadrequest.e().equals(e()))
        {
            throw new IllegalArgumentException("keys for both requests do not match");
        }
        if (!downloadrequest.b().equals(b()))
        {
            throw new IllegalArgumentException("Fallback priorities for both requests do not match");
        }
        DownloadPriority downloadpriority;
        boolean flag;
        long l;
        if (a().compareTo(downloadrequest.a()) >= 0)
        {
            downloadpriority = a();
        } else
        {
            downloadpriority = downloadrequest.a();
        }
        if (c() && downloadrequest.c())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l = Math.min(f(), downloadrequest.f());
        return new DownloadRequest(d, e, downloadpriority, c, flag, l);
    }

    public DownloadPriority b()
    {
        return c;
    }

    public boolean c()
    {
        return a;
    }

    public String d()
    {
        return d;
    }

    public String e()
    {
        if (e != null)
        {
            return e;
        } else
        {
            return d;
        }
    }

    public long f()
    {
        return f;
    }

    public DownloadRequest g()
    {
        if (b.equals(c))
        {
            return this;
        } else
        {
            return new DownloadRequest(d, e, c, c, a, f);
        }
    }

    public String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = e();
        aobj[1] = a();
        return String.format("[Key: %s, Priority: %s]", aobj);
    }
}
