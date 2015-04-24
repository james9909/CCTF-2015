// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import com.snapchat.android.util.debug.GracefulExceptionHandler;

// Referenced classes of package com.snapchat.android:
//            SnapchatActivity

class a
    implements ptionHandler
{

    final SnapchatActivity a;

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        a.t.a(throwable);
    }

    ExceptionHandler(SnapchatActivity snapchatactivity)
    {
        a = snapchatactivity;
        super();
    }
}
