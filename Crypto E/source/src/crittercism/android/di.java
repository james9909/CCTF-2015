// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.util.concurrent.ThreadFactory;

// Referenced classes of package crittercism.android:
//            dh

public final class di
    implements ThreadFactory
{

    public di()
    {
    }

    public final Thread newThread(Runnable runnable)
    {
        return new dh(runnable);
    }
}
