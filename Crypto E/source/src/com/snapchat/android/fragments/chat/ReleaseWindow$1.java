// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import java.util.Comparator;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ReleaseWindow

class a
    implements Comparator
{

    final ReleaseWindow a;

    public int a(mestampPair mestamppair, mestampPair mestamppair1)
    {
        return Long.signum(mestamppair.b - mestamppair1.b);
    }

    public int compare(Object obj, Object obj1)
    {
        return a((mestampPair)obj, (mestampPair)obj1);
    }

    mestampPair(ReleaseWindow releasewindow)
    {
        a = releasewindow;
        super();
    }
}
