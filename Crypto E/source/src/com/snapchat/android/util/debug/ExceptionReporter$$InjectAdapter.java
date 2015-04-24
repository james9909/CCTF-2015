// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.util.debug:
//            ExceptionReporter

public final class  extends Binding
    implements Provider
{

    public ExceptionReporter a()
    {
        return new ExceptionReporter();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.util.debug.ExceptionReporter", "members/com.snapchat.android.util.debug.ExceptionReporter", false, com/snapchat/android/util/debug/ExceptionReporter);
    }
}
