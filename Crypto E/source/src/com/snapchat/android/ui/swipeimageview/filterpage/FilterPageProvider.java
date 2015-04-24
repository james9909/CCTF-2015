// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview.filterpage;

import com.snapchat.android.ui.swipefilters.FilterPage;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import java.util.List;

public interface FilterPageProvider
{

    public abstract FilterPage a(int i);

    public abstract List a();

    public abstract int b();

    public abstract FilterPageType b(int i);
}
