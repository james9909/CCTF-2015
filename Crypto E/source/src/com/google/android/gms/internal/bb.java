// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.gms.ads.AdSize;

public final class bb
{

    private final AdSize oD[];
    private final String oE;

    public bb(Context context, AttributeSet attributeset)
    {
        boolean flag = true;
        super();
        TypedArray typedarray = context.getResources().obtainAttributes(attributeset, com.google.android.gms.R.styleable.AdsAttrs);
        String s = typedarray.getString(com.google.android.gms.R.styleable.AdsAttrs_adSize);
        String s1 = typedarray.getString(com.google.android.gms.R.styleable.AdsAttrs_adSizes);
        boolean flag1;
        if (!TextUtils.isEmpty(s))
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (TextUtils.isEmpty(s1))
        {
            flag = false;
        }
        if (flag1 && !flag)
        {
            oD = q(s);
        } else
        if (!flag1 && flag)
        {
            oD = q(s1);
        } else
        if (flag1 && flag)
        {
            throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
        } else
        {
            throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
        }
        oE = typedarray.getString(com.google.android.gms.R.styleable.AdsAttrs_adUnitId);
        if (TextUtils.isEmpty(oE))
        {
            throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
        } else
        {
            return;
        }
    }

    private static AdSize[] q(String s)
    {
        String as[];
        AdSize aadsize[];
        int i;
        as = s.split("\\s*,\\s*");
        aadsize = new AdSize[as.length];
        i = 0;
_L9:
        String s1;
        String as1[];
        if (i >= as.length)
        {
            break MISSING_BLOCK_LABEL_344;
        }
        s1 = as[i].trim();
        if (!s1.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$"))
        {
            break MISSING_BLOCK_LABEL_183;
        }
        as1 = s1.split("[xX]");
        as1[0] = as1[0].trim();
        as1[1] = as1[1].trim();
        if (!"FULL_WIDTH".equals(as1[0])) goto _L2; else goto _L1
_L1:
        int j = -1;
_L5:
        boolean flag;
        int k;
        int l;
        try
        {
            flag = "AUTO_HEIGHT".equals(as1[1]);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Could not parse XML attribute \"adSize\": ").append(s1).toString());
        }
        if (!flag) goto _L4; else goto _L3
_L3:
        l = -2;
_L6:
        aadsize[i] = new AdSize(j, l);
_L7:
        i++;
        continue; /* Loop/switch isn't completed */
_L2:
        j = Integer.parseInt(as1[0]);
          goto _L5
_L4:
        k = Integer.parseInt(as1[1]);
        l = k;
          goto _L6
        if ("BANNER".equals(s1))
        {
            aadsize[i] = AdSize.BANNER;
        } else
        if ("LARGE_BANNER".equals(s1))
        {
            aadsize[i] = AdSize.LARGE_BANNER;
        } else
        if ("FULL_BANNER".equals(s1))
        {
            aadsize[i] = AdSize.FULL_BANNER;
        } else
        if ("LEADERBOARD".equals(s1))
        {
            aadsize[i] = AdSize.LEADERBOARD;
        } else
        if ("MEDIUM_RECTANGLE".equals(s1))
        {
            aadsize[i] = AdSize.MEDIUM_RECTANGLE;
        } else
        if ("SMART_BANNER".equals(s1))
        {
            aadsize[i] = AdSize.SMART_BANNER;
        } else
        if ("WIDE_SKYSCRAPER".equals(s1))
        {
            aadsize[i] = AdSize.WIDE_SKYSCRAPER;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Could not parse XML attribute \"adSize\": ").append(s1).toString());
        }
          goto _L7
        if (aadsize.length == 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Could not parse XML attribute \"adSize\": ").append(s).toString());
        }
        return aadsize;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public String getAdUnitId()
    {
        return oE;
    }

    public AdSize[] h(boolean flag)
    {
        if (!flag && oD.length != 1)
        {
            throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
        } else
        {
            return oD;
        }
    }
}
