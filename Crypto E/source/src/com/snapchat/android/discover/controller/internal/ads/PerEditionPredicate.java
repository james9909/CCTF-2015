// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.ads;

import com.snapchat.android.discover.model.DSnapPage;

// Referenced classes of package com.snapchat.android.discover.controller.internal.ads:
//            AnyAdPredicate

public class PerEditionPredicate extends AnyAdPredicate
{

    private final String a;

    public PerEditionPredicate(String s)
    {
        a = s;
    }

    public boolean a(DSnapPage dsnappage)
    {
        if (super.a(dsnappage))
        {
            return dsnappage.d().equals(a);
        } else
        {
            return false;
        }
    }

    public volatile boolean a(Object obj)
    {
        return a((DSnapPage)obj);
    }
}
