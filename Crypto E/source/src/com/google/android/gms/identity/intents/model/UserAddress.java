// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.identity.intents.model;

import android.content.Intent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.identity.intents.model:
//            b

public final class UserAddress
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new b();
    private final int DN;
    String amZ;
    String ana;
    String anb;
    String anc;
    String and;
    String ane;
    String anf;
    String ang;
    String anh;
    String ani;
    boolean anj;
    String ank;
    String anl;
    String name;
    String wm;

    UserAddress()
    {
        DN = 1;
    }

    UserAddress(int i, String s, String s1, String s2, String s3, String s4, String s5, 
            String s6, String s7, String s8, String s9, String s10, String s11, boolean flag, 
            String s12, String s13)
    {
        DN = i;
        name = s;
        amZ = s1;
        ana = s2;
        anb = s3;
        anc = s4;
        and = s5;
        ane = s6;
        anf = s7;
        wm = s8;
        ang = s9;
        anh = s10;
        ani = s11;
        anj = flag;
        ank = s12;
        anl = s13;
    }

    public static UserAddress fromIntent(Intent intent)
    {
        if (intent == null || !intent.hasExtra("com.google.android.gms.identity.intents.EXTRA_ADDRESS"))
        {
            return null;
        } else
        {
            return (UserAddress)intent.getParcelableExtra("com.google.android.gms.identity.intents.EXTRA_ADDRESS");
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public String getAddress1()
    {
        return amZ;
    }

    public String getAddress2()
    {
        return ana;
    }

    public String getAddress3()
    {
        return anb;
    }

    public String getAddress4()
    {
        return anc;
    }

    public String getAddress5()
    {
        return and;
    }

    public String getAdministrativeArea()
    {
        return ane;
    }

    public String getCompanyName()
    {
        return ank;
    }

    public String getCountryCode()
    {
        return wm;
    }

    public String getEmailAddress()
    {
        return anl;
    }

    public String getLocality()
    {
        return anf;
    }

    public String getName()
    {
        return name;
    }

    public String getPhoneNumber()
    {
        return ani;
    }

    public String getPostalCode()
    {
        return ang;
    }

    public String getSortingCode()
    {
        return anh;
    }

    public int getVersionCode()
    {
        return DN;
    }

    public boolean isPostBox()
    {
        return anj;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        b.a(this, parcel, i);
    }

}
