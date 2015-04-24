// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            az, he

public final class ay
    implements SafeParcelable
{

    public static final az CREATOR = new az();
    public final int height;
    public final int heightPixels;
    public final boolean oA;
    public final ay oB[];
    public final String oz;
    public final int versionCode;
    public final int width;
    public final int widthPixels;

    public ay()
    {
        this(2, "interstitial_mb", 0, 0, true, 0, 0, null);
    }

    ay(int i, String s, int j, int k, boolean flag, int l, int i1, 
            ay aay[])
    {
        versionCode = i;
        oz = s;
        height = j;
        heightPixels = k;
        oA = flag;
        width = l;
        widthPixels = i1;
        oB = aay;
    }

    public ay(Context context, AdSize adsize)
    {
        this(context, new AdSize[] {
            adsize
        });
    }

    public ay(Context context, AdSize aadsize[])
    {
        int i = 0;
        super();
        AdSize adsize = aadsize[0];
        versionCode = 2;
        oA = false;
        width = adsize.getWidth();
        height = adsize.getHeight();
        boolean flag;
        boolean flag1;
        DisplayMetrics displaymetrics;
        int k;
        int l;
        if (width == -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (height == -2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        displaymetrics = context.getResources().getDisplayMetrics();
        if (flag)
        {
            widthPixels = a(displaymetrics);
            k = (int)((float)widthPixels / displaymetrics.density);
        } else
        {
            int j = width;
            widthPixels = com.google.android.gms.internal.he.a(displaymetrics, width);
            k = j;
        }
        if (flag1)
        {
            l = c(displaymetrics);
        } else
        {
            l = height;
        }
        heightPixels = com.google.android.gms.internal.he.a(displaymetrics, l);
        if (flag || flag1)
        {
            oz = (new StringBuilder()).append(k).append("x").append(l).append("_as").toString();
        } else
        {
            oz = adsize.toString();
        }
        if (aadsize.length > 1)
        {
            oB = new ay[aadsize.length];
            for (; i < aadsize.length; i++)
            {
                oB[i] = new ay(context, aadsize[i]);
            }

        } else
        {
            oB = null;
        }
    }

    public ay(ay ay1, ay aay[])
    {
        this(2, ay1.oz, ay1.height, ay1.heightPixels, ay1.oA, ay1.width, ay1.widthPixels, aay);
    }

    public static int a(DisplayMetrics displaymetrics)
    {
        return displaymetrics.widthPixels;
    }

    public static int b(DisplayMetrics displaymetrics)
    {
        return (int)((float)c(displaymetrics) * displaymetrics.density);
    }

    private static int c(DisplayMetrics displaymetrics)
    {
        int i = (int)((float)displaymetrics.heightPixels / displaymetrics.density);
        if (i <= 400)
        {
            return 32;
        }
        return i > 720 ? 90 : 50;
    }

    public AdSize bp()
    {
        return com.google.android.gms.ads.a.a(width, height, oz);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.internal.az.a(this, parcel, i);
    }

}
