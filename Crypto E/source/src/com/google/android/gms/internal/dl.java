// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.a;
import java.util.Date;
import java.util.HashSet;

// Referenced classes of package com.google.android.gms.internal:
//            ay, av

public final class dl
{

    public static int a(com.google.ads.AdRequest.ErrorCode errorcode)
    {
        static class _cls1
        {

            static final int rB[];
            static final int rC[];

            static 
            {
                rC = new int[com.google.ads.AdRequest.ErrorCode.values().length];
                try
                {
                    rC[com.google.ads.AdRequest.ErrorCode.d.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    rC[com.google.ads.AdRequest.ErrorCode.a.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    rC[com.google.ads.AdRequest.ErrorCode.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    rC[com.google.ads.AdRequest.ErrorCode.b.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                rB = new int[com.google.ads.AdRequest.Gender.values().length];
                try
                {
                    rB[com.google.ads.AdRequest.Gender.c.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    rB[com.google.ads.AdRequest.Gender.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    rB[com.google.ads.AdRequest.Gender.a.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror6)
                {
                    return;
                }
            }
        }

        switch (_cls1.rC[errorcode.ordinal()])
        {
        default:
            return 0;

        case 2: // '\002'
            return 1;

        case 3: // '\003'
            return 2;

        case 4: // '\004'
            return 3;
        }
    }

    public static AdSize b(ay ay1)
    {
        int i = 0;
        AdSize aadsize[] = new AdSize[6];
        aadsize[0] = AdSize.a;
        aadsize[1] = AdSize.b;
        aadsize[2] = AdSize.c;
        aadsize[3] = AdSize.d;
        aadsize[4] = AdSize.e;
        aadsize[5] = AdSize.f;
        for (; i < aadsize.length; i++)
        {
            if (aadsize[i].a() == ay1.width && aadsize[i].b() == ay1.height)
            {
                return aadsize[i];
            }
        }

        return new AdSize(com.google.android.gms.ads.a.a(ay1.width, ay1.height, ay1.oz));
    }

    public static MediationAdRequest d(av av1)
    {
        HashSet hashset;
        if (av1.op != null)
        {
            hashset = new HashSet(av1.op);
        } else
        {
            hashset = null;
        }
        return new MediationAdRequest(new Date(av1.on), l(av1.oo), hashset, av1.oq, av1.ov);
    }

    public static com.google.ads.AdRequest.Gender l(int i)
    {
        switch (i)
        {
        default:
            return com.google.ads.AdRequest.Gender.a;

        case 2: // '\002'
            return com.google.ads.AdRequest.Gender.c;

        case 1: // '\001'
            return com.google.ads.AdRequest.Gender.b;
        }
    }
}
