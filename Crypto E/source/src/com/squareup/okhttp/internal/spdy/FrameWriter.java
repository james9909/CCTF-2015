// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.io.Closeable;
import java.util.List;
import okio.Buffer;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            ErrorCode, Settings

public interface FrameWriter
    extends Closeable
{

    public abstract void a();

    public abstract void a(int i, int j, List list);

    public abstract void a(int i, long l);

    public abstract void a(int i, ErrorCode errorcode);

    public abstract void a(int i, ErrorCode errorcode, byte abyte0[]);

    public abstract void a(Settings settings);

    public abstract void a(boolean flag, int i, int j);

    public abstract void a(boolean flag, int i, Buffer buffer, int j);

    public abstract void a(boolean flag, boolean flag1, int i, int j, List list);

    public abstract void b();

    public abstract void b(Settings settings);

    public abstract int c();
}
