// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso.boxes:
//            AbstractMediaHeaderBox

public class NullMediaHeaderBox extends AbstractMediaHeaderBox
{

    public NullMediaHeaderBox()
    {
        super("nmhd");
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
    }

    protected long d()
    {
        return 4L;
    }
}
