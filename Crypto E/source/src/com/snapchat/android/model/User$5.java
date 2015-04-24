// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import java.util.Comparator;

// Referenced classes of package com.snapchat.android.model:
//            User, Friend

class this._cls0
    implements Comparator
{

    final User this$0;

    public int a(Friend friend, Friend friend1)
    {
        long l = friend1.i() - friend.i();
        if (l < 0xffffffff80000000L)
        {
            return 0x80000000;
        }
        if (l > 0x7fffffffL)
        {
            return 0x7fffffff;
        } else
        {
            return (int)l;
        }
    }

    public int compare(Object obj, Object obj1)
    {
        return a((Friend)obj, (Friend)obj1);
    }

    ()
    {
        this$0 = User.this;
        super();
    }
}
