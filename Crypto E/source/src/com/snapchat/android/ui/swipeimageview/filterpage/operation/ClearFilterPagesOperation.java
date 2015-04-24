// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview.filterpage.operation;

import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.swipeimageview.filterpage.FilterPageStore;

// Referenced classes of package com.snapchat.android.ui.swipeimageview.filterpage.operation:
//            FilterPageOperation

public class ClearFilterPagesOperation extends FilterPageOperation
{

    public ClearFilterPagesOperation()
    {
    }

    public void a(SwipeImageView swipeimageview, FilterPageStore filterpagestore)
    {
        swipeimageview.e();
        filterpagestore.c();
    }
}
