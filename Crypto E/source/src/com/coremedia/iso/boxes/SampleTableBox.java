// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractContainerBox;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            Box, SampleSizeBox

public class SampleTableBox extends AbstractContainerBox
{

    public SampleTableBox()
    {
        super("stbl");
    }

    public SampleSizeBox b()
    {
        Iterator iterator = a().iterator();
        Box box;
        do
        {
            if (!iterator.hasNext())
            {
                return null;
            }
            box = (Box)iterator.next();
        } while (!(box instanceof SampleSizeBox));
        return (SampleSizeBox)box;
    }
}
