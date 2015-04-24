// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            bk

public final class bj
    implements SafeParcelable
{

    public static final bk CREATOR = new bk();
    public final int backgroundColor;
    public final int pa;
    public final int pb;
    public final int pc;
    public final int pd;
    public final int pe;
    public final int pf;
    public final int pg;
    public final String ph;
    public final int pi;
    public final String pj;
    public final int pk;
    public final int pl;
    public final String pm;
    public final int versionCode;

    bj(int i, int j, int k, int l, int i1, int j1, int k1, 
            int l1, int i2, String s, int j2, String s1, int k2, int l2, 
            String s2)
    {
        versionCode = i;
        pa = j;
        backgroundColor = k;
        pb = l;
        pc = i1;
        pd = j1;
        pe = k1;
        pf = l1;
        pg = i2;
        ph = s;
        pi = j2;
        pj = s1;
        pk = k2;
        pl = l2;
        pm = s2;
    }

    public bj(SearchAdRequest searchadrequest)
    {
        versionCode = 1;
        pa = searchadrequest.getAnchorTextColor();
        backgroundColor = searchadrequest.getBackgroundColor();
        pb = searchadrequest.getBackgroundGradientBottom();
        pc = searchadrequest.getBackgroundGradientTop();
        pd = searchadrequest.getBorderColor();
        pe = searchadrequest.getBorderThickness();
        pf = searchadrequest.getBorderType();
        pg = searchadrequest.getCallButtonColor();
        ph = searchadrequest.getCustomChannels();
        pi = searchadrequest.getDescriptionTextColor();
        pj = searchadrequest.getFontFace();
        pk = searchadrequest.getHeaderTextColor();
        pl = searchadrequest.getHeaderTextSize();
        pm = searchadrequest.getQuery();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        bk.a(this, parcel, i);
    }

}
