// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.Closeable;

// Referenced classes of package okio:
//            Buffer, Timeout

public interface Source
    extends Closeable
{

    public abstract long a(Buffer buffer, long l);

    public abstract Timeout b();

    public abstract void close();
}
