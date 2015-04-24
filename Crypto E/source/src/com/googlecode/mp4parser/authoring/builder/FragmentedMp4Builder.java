// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.builder;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.Track;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser.authoring.builder:
//            Mp4Builder

public class FragmentedMp4Builder
    implements Mp4Builder
{
    class _cls1Mdat
        implements Box
    {

        Container a;
        long b;
        final FragmentedMp4Builder c;
        private final long d;
        private final long e;
        private final Track f;
        private final int g;

        public void a(Container container)
        {
            a = container;
        }

        public void a(DataSource datasource, ByteBuffer bytebuffer, long l, BoxParser boxparser)
        {
        }

        public void a(WritableByteChannel writablebytechannel)
        {
            ByteBuffer bytebuffer = ByteBuffer.allocate(8);
            IsoTypeWriter.b(bytebuffer, CastUtils.a(f()));
            bytebuffer.put(IsoFile.a(g()));
            bytebuffer.rewind();
            writablebytechannel.write(bytebuffer);
            Iterator iterator = c.a(d, e, f, g).iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                ((Sample)iterator.next()).a(writablebytechannel);
            } while (true);
        }

        public Container e()
        {
            return a;
        }

        public long f()
        {
            if (b != -1L)
            {
                return b;
            }
            Iterator iterator = c.a(d, e, f, g).iterator();
            long l = 8L;
            do
            {
                if (!iterator.hasNext())
                {
                    b = l;
                    return l;
                }
                l += ((Sample)iterator.next()).a();
            } while (true);
        }

        public String g()
        {
            return "mdat";
        }
    }


    static final boolean a;
    private static final Logger b = Logger.getLogger(com/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder.getName());

    public FragmentedMp4Builder()
    {
    }

    protected List a(long l, long l1, Track track, int i)
    {
        return track.a().subList(-1 + CastUtils.a(l), -1 + CastUtils.a(l1));
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }

    // Unreferenced inner class com/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1

/* anonymous class */
    class _cls1
        implements Comparator
    {

        private final Map a;
        private final int b;

        public int a(Track track, Track track1)
        {
            long l;
            long l1;
            long al[];
            long al1[];
            long l2;
            long l3;
            int i;
            l = ((long[])a.get(track))[b];
            l1 = ((long[])a.get(track1))[b];
            al = track.b();
            al1 = track1.b();
            l2 = 0L;
            l3 = 0L;
            i = 1;
_L3:
            if ((long)i < l) goto _L2; else goto _L1
_L1:
            int j = 1;
_L4:
            if ((long)j >= l1)
            {
                return (int)(100D * ((double)l2 / (double)track.c().a() - (double)l3 / (double)track1.c().a()));
            }
            break MISSING_BLOCK_LABEL_137;
_L2:
            l2 += al[i - 1];
            i++;
              goto _L3
            l3 += al1[j - 1];
            j++;
              goto _L4
        }

        public int compare(Object obj, Object obj1)
        {
            return a((Track)obj, (Track)obj1);
        }
    }

}
