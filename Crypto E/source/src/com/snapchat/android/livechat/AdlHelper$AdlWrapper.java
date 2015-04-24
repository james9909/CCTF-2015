// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.content.Context;
import com.addlive.platform.InitState;
import com.addlive.platform.PlatformInitListener;
import com.addlive.platform.PlatformInitOptions;
import com.addlive.service.AddLiveService;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlHelper

static interface 
{

    public abstract InitState a();

    public abstract void a(PlatformInitListener platforminitlistener, PlatformInitOptions platforminitoptions, Context context);

    public abstract AddLiveService b();
}
