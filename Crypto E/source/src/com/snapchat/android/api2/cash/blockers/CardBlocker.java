// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers;

import com.snapchat.android.cash.CardBlockerManager;

// Referenced classes of package com.snapchat.android.api2.cash.blockers:
//            Blocker

public abstract class CardBlocker extends Blocker
    implements com.snapchat.android.camera.cameradecor.CardLinkCameraDecor.CardDetailsListener
{

    protected CardBlockerManager mCardBlockerManager;

    public CardBlocker()
    {
    }
}
