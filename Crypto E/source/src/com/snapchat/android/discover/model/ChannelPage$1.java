// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model;

import android.os.Parcel;

// Referenced classes of package com.snapchat.android.discover.model:
//            ChannelPage

static final class 
    implements android.os.ator
{

    public ChannelPage a(Parcel parcel)
    {
        return new ChannelPage(parcel, null);
    }

    public ChannelPage[] a(int i)
    {
        return new ChannelPage[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public Object[] newArray(int i)
    {
        return a(i);
    }

    ()
    {
    }
}