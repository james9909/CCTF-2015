// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring;

import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

public interface Sample
{

    public abstract long a();

    public abstract void a(WritableByteChannel writablebytechannel);

    public abstract ByteBuffer b();
}
