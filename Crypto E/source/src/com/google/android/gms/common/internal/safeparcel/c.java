// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal.safeparcel;

import android.content.Intent;
import android.os.Parcel;
import com.google.android.gms.common.internal.s;

// Referenced classes of package com.google.android.gms.common.internal.safeparcel:
//            SafeParcelable

public final class c
{

    public static SafeParcelable a(Intent intent, String s1, android.os.Parcelable.Creator creator)
    {
        byte abyte0[] = intent.getByteArrayExtra(s1);
        if (abyte0 == null)
        {
            return null;
        } else
        {
            return a(abyte0, creator);
        }
    }

    public static SafeParcelable a(byte abyte0[], android.os.Parcelable.Creator creator)
    {
        s.l(creator);
        Parcel parcel = Parcel.obtain();
        parcel.unmarshall(abyte0, 0, abyte0.length);
        parcel.setDataPosition(0);
        SafeParcelable safeparcelable = (SafeParcelable)creator.createFromParcel(parcel);
        parcel.recycle();
        return safeparcelable;
    }

    public static void a(SafeParcelable safeparcelable, Intent intent, String s1)
    {
        intent.putExtra(s1, a(safeparcelable));
    }

    public static byte[] a(SafeParcelable safeparcelable)
    {
        Parcel parcel = Parcel.obtain();
        safeparcelable.writeToParcel(parcel, 0);
        byte abyte0[] = parcel.marshall();
        parcel.recycle();
        return abyte0;
    }
}
