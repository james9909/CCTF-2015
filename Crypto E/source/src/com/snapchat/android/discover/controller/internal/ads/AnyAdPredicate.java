// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.ads;

import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.util.Predicate;

public class AnyAdPredicate
    implements Predicate
{

    public AnyAdPredicate()
    {
    }

    public boolean a(DSnapPage dsnappage)
    {
        return dsnappage.r();
    }

    public volatile boolean a(Object obj)
    {
        return a((DSnapPage)obj);
    }
}
