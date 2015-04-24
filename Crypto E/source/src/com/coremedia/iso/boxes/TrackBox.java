// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractContainerBox;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            Box, TrackHeaderBox, MediaBox, MediaInformationBox, 
//            SampleTableBox

public class TrackBox extends AbstractContainerBox
{

    private SampleTableBox a;

    public TrackBox()
    {
        super("trak");
    }

    public void a(List list)
    {
        super.a(list);
        a = null;
    }

    public TrackHeaderBox b()
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
        } while (!(box instanceof TrackHeaderBox));
        return (TrackHeaderBox)box;
    }

    public SampleTableBox c()
    {
        if (a != null)
        {
            return a;
        }
        MediaBox mediabox = d();
        if (mediabox != null)
        {
            MediaInformationBox mediainformationbox = mediabox.b();
            if (mediainformationbox != null)
            {
                a = mediainformationbox.b();
                return a;
            }
        }
        return null;
    }

    public MediaBox d()
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
        } while (!(box instanceof MediaBox));
        return (MediaBox)box;
    }
}
