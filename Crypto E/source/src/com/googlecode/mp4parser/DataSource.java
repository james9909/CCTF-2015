// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import java.io.Closeable;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

public interface DataSource
    extends Closeable
{

    public abstract int a(ByteBuffer bytebuffer);

    public abstract long a();

    public abstract long a(long l, long l1, WritableByteChannel writablebytechannel);

    public abstract ByteBuffer a(long l, long l1);

    public abstract void a(long l);

    public abstract long b();

    public abstract void close();
}
