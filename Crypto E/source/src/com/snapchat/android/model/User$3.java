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
        return Integer.valueOf(friend.r()).compareTo(Integer.valueOf(friend1.r()));
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
