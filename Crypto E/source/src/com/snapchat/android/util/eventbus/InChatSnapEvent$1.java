// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import android.os.Parcel;

// Referenced classes of package com.snapchat.android.util.eventbus:
//            InChatSnapEvent

static final class 
    implements android.os.
{

    public InChatSnapEvent a(Parcel parcel)
    {
        return new InChatSnapEvent(parcel);
    }

    public InChatSnapEvent[] a(int i)
    {
        return new InChatSnapEvent[i];
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
