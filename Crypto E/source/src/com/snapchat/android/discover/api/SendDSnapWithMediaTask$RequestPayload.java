// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.api;

import com.snapchat.android.api.RequestAuthorization;
import com.snapchat.android.api2.framework.ByteArrayHttpContent;
import com.snapchat.android.api2.framework.StringHttpContent;
import com.snapchat.android.discover.model.DSnapbryo;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;

// Referenced classes of package com.snapchat.android.discover.api:
//            SendDSnapWithMediaTask

public class f
{

    StringHttpContent a;
    StringHttpContent b;
    StringHttpContent c;
    StringHttpContent d;
    StringHttpContent e;
    ByteArrayHttpContent f;
    final SendDSnapWithMediaTask g;

    public (SendDSnapWithMediaTask senddsnapwithmediatask, String s)
    {
        g = senddsnapwithmediatask;
        super();
        a = new StringHttpContent(s);
        b = new StringHttpContent(RequestAuthorization.a(s));
        c = new StringHttpContent(UserPrefs.k());
        d = new StringHttpContent(SendDSnapWithMediaTask.a(senddsnapwithmediatask).N());
        e = new StringHttpContent(Integer.toString(4));
        f = new ByteArrayHttpContent((new CbcEncryptionAlgorithm(SendDSnapWithMediaTask.a(senddsnapwithmediatask).g(), SendDSnapWithMediaTask.a(senddsnapwithmediatask).h())).a(SendDSnapWithMediaTask.b(senddsnapwithmediatask)));
    }
}
