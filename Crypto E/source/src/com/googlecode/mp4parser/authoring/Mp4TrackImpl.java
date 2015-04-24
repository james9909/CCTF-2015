// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.TrackBox;
import com.googlecode.mp4parser.BasicContainer;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.authoring:
//            AbstractTrack, TrackMetaData

public class Mp4TrackImpl extends AbstractTrack
{

    private List d;
    TrackBox e;
    IsoFile f[];
    private long g[];
    private TrackMetaData h;
    private String i;

    public List a()
    {
        return d;
    }

    public long[] b()
    {
        this;
        JVM INSTR monitorenter ;
        long al[] = g;
        this;
        JVM INSTR monitorexit ;
        return al;
        Exception exception;
        exception;
        throw exception;
    }

    public TrackMetaData c()
    {
        return h;
    }

    public void close()
    {
        com.coremedia.iso.boxes.Container container = e.e();
        if (container instanceof BasicContainer)
        {
            ((BasicContainer)container).close();
        }
        IsoFile aisofile[] = f;
        int j = aisofile.length;
        int k = 0;
        do
        {
            if (k >= j)
            {
                return;
            }
            aisofile[k].close();
            k++;
        } while (true);
    }

    public String d()
    {
        return i;
    }
}
