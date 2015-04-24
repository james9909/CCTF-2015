// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.util.Comparator;

// Referenced classes of package com.snapchat.android.util:
//            ChatLinkUtils, LinkSpec

static final class 
    implements Comparator
{

    public final int a(LinkSpec linkspec, LinkSpec linkspec1)
    {
        if (linkspec.c >= linkspec1.c)
        {
            if (linkspec.c > linkspec1.c)
            {
                return 1;
            }
            if (linkspec.d < linkspec1.d)
            {
                return 1;
            }
            if (linkspec.d <= linkspec1.d)
            {
                return 0;
            }
        }
        return -1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((LinkSpec)obj, (LinkSpec)obj1);
    }

    public final boolean equals(Object obj)
    {
        return false;
    }

    ()
    {
    }
}
