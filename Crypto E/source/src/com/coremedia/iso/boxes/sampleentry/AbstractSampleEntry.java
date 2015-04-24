// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.googlecode.mp4parser.AbstractContainerBox;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            SampleEntry

public abstract class AbstractSampleEntry extends AbstractContainerBox
    implements SampleEntry
{

    public int a;

    public AbstractSampleEntry(String s)
    {
        super(s);
        a = 1;
    }

    public void a(int i)
    {
        a = i;
    }
}
