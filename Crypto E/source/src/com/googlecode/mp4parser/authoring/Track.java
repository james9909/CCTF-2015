// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring;

import java.io.Closeable;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.authoring:
//            TrackMetaData

public interface Track
    extends Closeable
{

    public abstract List a();

    public abstract long[] b();

    public abstract TrackMetaData c();

    public abstract String d();
}
