// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import java.util.Comparator;

// Referenced classes of package com.snapchat.android.api:
//            GetCaptchaTask

class this._cls0
    implements Comparator
{

    final GetCaptchaTask this$0;

    public int a(tmapNamePair tmapnamepair, tmapNamePair tmapnamepair1)
    {
        return tmapnamepair.mName.compareTo(tmapnamepair1.mName);
    }

    public int compare(Object obj, Object obj1)
    {
        return a((tmapNamePair)obj, (tmapNamePair)obj1);
    }

    tmapNamePair()
    {
        this$0 = GetCaptchaTask.this;
        super();
    }
}
