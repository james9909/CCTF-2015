// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.eventengine;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.eventengine:
//            ScAnalyticsEventEngine

public final class  extends Binding
    implements Provider
{

    public ScAnalyticsEventEngine a()
    {
        return new ScAnalyticsEventEngine();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.eventengine.ScAnalyticsEventEngine", "members/com.snapchat.eventengine.ScAnalyticsEventEngine", false, com/snapchat/eventengine/ScAnalyticsEventEngine);
    }
}
