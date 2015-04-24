// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import android.os.Parcel;

// Referenced classes of package com.snapchat.android.util.eventbus:
//            QuickSnapEvent

static final class _cls9
    implements android.os.r
{

    public QuickSnapEvent a(Parcel parcel)
    {
        return new QuickSnapEvent(parcel);
    }

    public QuickSnapEvent[] a(int i)
    {
        return new QuickSnapEvent[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public Object[] newArray(int i)
    {
        return a(i);
    }

    _cls9()
    {
    }
}
