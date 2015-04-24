// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.BoxParser;
import com.googlecode.mp4parser.DataSource;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.coremedia.iso.boxes:
//            Container

public interface Box
{

    public abstract void a(Container container);

    public abstract void a(DataSource datasource, ByteBuffer bytebuffer, long l, BoxParser boxparser);

    public abstract void a(WritableByteChannel writablebytechannel);

    public abstract Container e();

    public abstract long f();

    public abstract String g();
}
