// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.ads;

import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.util.Predicate;

public class FailedAdPredicate
    implements Predicate
{

    public FailedAdPredicate()
    {
    }

    public boolean a(DSnapPage dsnappage)
    {
        if (dsnappage.i().intValue() == 0)
        {
            return false;
        } else
        {
            return dsnappage.k().b();
        }
    }

    public volatile boolean a(Object obj)
    {
        return a((DSnapPage)obj);
    }
}
