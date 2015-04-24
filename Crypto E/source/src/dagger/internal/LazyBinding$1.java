// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package dagger.internal;

import dagger.Lazy;

// Referenced classes of package dagger.internal:
//            LazyBinding

class b
    implements Lazy
{

    final LazyBinding a;
    private volatile Object b;

    (LazyBinding lazybinding)
    {
        a = lazybinding;
        super();
        b = LazyBinding.i();
    }
}
