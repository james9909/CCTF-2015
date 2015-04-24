// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part30;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.boxes.sampleentry.AbstractSampleEntry;
import com.googlecode.mp4parser.DataSource;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

public class WebVTTSampleEntry extends AbstractSampleEntry
{

    public WebVTTSampleEntry()
    {
        super("wvtt");
    }

    public void a(DataSource datasource, ByteBuffer bytebuffer, long l, BoxParser boxparser)
    {
        a(datasource, l, boxparser);
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        writablebytechannel.write(l());
        b(writablebytechannel);
    }
}
