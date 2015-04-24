// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part15;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.boxes.mp4.samplegrouping.GroupEntry;
import java.nio.ByteBuffer;

public class SyncSampleEntry extends GroupEntry
{

    int a;
    int b;

    public SyncSampleEntry()
    {
    }

    public String a()
    {
        return "sync";
    }

    public void a(ByteBuffer bytebuffer)
    {
        int i = IsoTypeReader.f(bytebuffer);
        a = (i & 0xc0) >> 6;
        b = i & 0x3f;
    }

    public ByteBuffer b()
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(1);
        IsoTypeWriter.d(bytebuffer, b + (a << 6));
        return (ByteBuffer)bytebuffer.rewind();
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            SyncSampleEntry syncsampleentry = (SyncSampleEntry)obj;
            if (b != syncsampleentry.b)
            {
                return false;
            }
            if (a != syncsampleentry.a)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * a + b;
    }

    public String toString()
    {
        return (new StringBuilder("SyncSampleEntry{reserved=")).append(a).append(", nalUnitType=").append(b).append('}').toString();
    }
}
