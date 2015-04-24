// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;

// Referenced classes of package com.googlecode.mp4parser:
//            DataSource

public class FileDataSourceImpl
    implements DataSource
{

    FileChannel a;
    String b;

    public FileDataSourceImpl(File file)
    {
        a = (new FileInputStream(file)).getChannel();
        b = file.getName();
    }

    public int a(ByteBuffer bytebuffer)
    {
        return a.read(bytebuffer);
    }

    public long a()
    {
        return a.size();
    }

    public long a(long l, long l1, WritableByteChannel writablebytechannel)
    {
        return a.transferTo(l, l1, writablebytechannel);
    }

    public ByteBuffer a(long l, long l1)
    {
        return a.map(java.nio.channels.FileChannel.MapMode.READ_ONLY, l, l1);
    }

    public void a(long l)
    {
        a.position(l);
    }

    public long b()
    {
        return a.position();
    }

    public void close()
    {
        a.close();
    }

    public String toString()
    {
        return b;
    }
}
