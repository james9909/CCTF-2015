// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.edition;

import com.snapchat.android.discover.controller.internal.DiscoverUserState;
import com.snapchat.android.discover.model.DSnapPage;

public interface DSnapLoadingStrategy
{

    public abstract boolean a(DiscoverUserState discoveruserstate, DSnapPage dsnappage, com.snapchat.android.networkmanager.DownloadRequest.Builder builder);
}
