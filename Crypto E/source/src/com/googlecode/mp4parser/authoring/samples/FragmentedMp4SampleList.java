// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.samples;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import com.coremedia.iso.boxes.TrackBox;
import com.coremedia.iso.boxes.TrackHeaderBox;
import com.coremedia.iso.boxes.fragment.MovieFragmentBox;
import com.coremedia.iso.boxes.fragment.TrackExtendsBox;
import com.coremedia.iso.boxes.fragment.TrackFragmentBox;
import com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox;
import com.coremedia.iso.boxes.fragment.TrackRunBox;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.util.CastUtils;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class FragmentedMp4SampleList extends AbstractList
{

    Container a;
    IsoFile b[];
    TrackBox c;
    TrackExtendsBox d;
    private SoftReference e[];
    private List f;
    private Map g;
    private int h[];
    private int i;

    public Sample a(int j)
    {
        int k;
        int l;
        if (e[j] != null)
        {
            Sample sample1 = (Sample)e[j].get();
            if (sample1 != null)
            {
                return sample1;
            }
        }
        k = j + 1;
        l = -1 + h.length;
_L3:
        if (k - h[l] < 0) goto _L2; else goto _L1
_L1:
        TrackFragmentBox trackfragmentbox;
        int i1;
        Object obj;
        Iterator iterator;
        int j1;
        trackfragmentbox = (TrackFragmentBox)f.get(l);
        i1 = k - h[l];
        obj = (MovieFragmentBox)trackfragmentbox.e();
        iterator = trackfragmentbox.a().iterator();
        j1 = 0;
_L4:
        if (!iterator.hasNext())
        {
            throw new RuntimeException("Couldn't find sample in the traf I was looking");
        }
        break MISSING_BLOCK_LABEL_130;
_L2:
        l--;
          goto _L3
        TrackRunBox trackrunbox;
        Box box = (Box)iterator.next();
        if (box instanceof TrackRunBox)
        {
label0:
            {
                trackrunbox = (TrackRunBox)box;
                if (trackrunbox.a().size() >= i1 - j1)
                {
                    break label0;
                }
                j1 += trackrunbox.a().size();
            }
        }
          goto _L4
        List list = trackrunbox.a();
        TrackFragmentHeaderBox trackfragmentheaderbox = trackfragmentbox.b();
        boolean flag = trackrunbox.h();
        boolean flag1 = trackfragmentheaderbox.b();
        long l1;
        SoftReference softreference;
        ByteBuffer bytebuffer;
        int k1;
        int i2;
        int j2;
        long l2;
        Sample sample;
        long l3;
        Iterator iterator1;
        int k2;
        com.coremedia.iso.boxes.fragment.TrackRunBox.Entry entry;
        long l4;
        IOException ioexception;
        if (!flag)
        {
            if (flag1)
            {
                l1 = trackfragmentheaderbox.k();
            } else
            {
                if (d == null)
                {
                    throw new RuntimeException("File doesn't contain trex box but track fragments aren't fully self contained. Cannot determine sample size.");
                }
                l1 = d.a();
            }
        } else
        {
            l1 = 0L;
        }
        softreference = (SoftReference)g.get(trackrunbox);
        if (softreference != null)
        {
            bytebuffer = (ByteBuffer)softreference.get();
        } else
        {
            bytebuffer = null;
        }
        if (bytebuffer != null) goto _L6; else goto _L5
_L5:
        l3 = 0L;
        if (trackfragmentheaderbox.a())
        {
            l3 += trackfragmentheaderbox.h();
            obj = ((MovieFragmentBox) (obj)).e();
        }
        if (trackrunbox.c())
        {
            l3 += trackrunbox.l();
        }
        iterator1 = list.iterator();
        k2 = 0;
_L9:
        if (iterator1.hasNext()) goto _L8; else goto _L7
_L7:
        l4 = k2;
        try
        {
            bytebuffer = ((Container) (obj)).a(l3, l4);
            g.put(trackrunbox, new SoftReference(bytebuffer));
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
_L6:
        k1 = 0;
        i2 = 0;
_L10:
        if (i2 >= i1 - j1)
        {
            if (flag)
            {
                l2 = ((com.coremedia.iso.boxes.fragment.TrackRunBox.Entry)list.get(i1 - j1)).a();
            } else
            {
                l2 = l1;
            }
            sample = new Sample(l2, bytebuffer, k1) {

                final FragmentedMp4SampleList a;
                private final long b;
                private final ByteBuffer c;
                private final int d;

                public long a()
                {
                    return b;
                }

                public void a(WritableByteChannel writablebytechannel)
                {
                    writablebytechannel.write(b());
                }

                public ByteBuffer b()
                {
                    return (ByteBuffer)((ByteBuffer)c.position(d)).slice().limit(CastUtils.a(b));
                }

            
            {
                a = FragmentedMp4SampleList.this;
                b = l;
                c = bytebuffer;
                d = j;
                super();
            }
            };
            e[j] = new SoftReference(sample);
            return sample;
        }
        break MISSING_BLOCK_LABEL_548;
_L8:
        entry = (com.coremedia.iso.boxes.fragment.TrackRunBox.Entry)iterator1.next();
        if (flag)
        {
            k2 = (int)((long)k2 + entry.a());
        } else
        {
            k2 = (int)(l1 + (long)k2);
        }
          goto _L9
        if (flag)
        {
            j2 = (int)((long)k1 + ((com.coremedia.iso.boxes.fragment.TrackRunBox.Entry)list.get(i2)).a());
        } else
        {
            j2 = (int)(l1 + (long)k1);
        }
        i2++;
        k1 = j2;
          goto _L10
    }

    public Object get(int j)
    {
        return a(j);
    }

    public int size()
    {
        IsoFile aisofile[];
        int l;
        int i1;
        if (i != -1)
        {
            return i;
        }
        Iterator iterator = a.a(com/coremedia/iso/boxes/fragment/MovieFragmentBox).iterator();
        int j = 0;
        do
        {
            int k;
            if (!iterator.hasNext())
            {
                aisofile = b;
                k = aisofile.length;
                l = 0;
                i1 = j;
                break MISSING_BLOCK_LABEL_58;
            }
            Iterator iterator1 = ((MovieFragmentBox)iterator.next()).a(com/coremedia/iso/boxes/fragment/TrackFragmentBox).iterator();
            while (iterator1.hasNext()) 
            {
                TrackFragmentBox trackfragmentbox = (TrackFragmentBox)iterator1.next();
                if (trackfragmentbox.b().c() == c.b().c())
                {
                    j = (int)((long)j + ((TrackRunBox)trackfragmentbox.a(com/coremedia/iso/boxes/fragment/TrackRunBox).get(0)).b());
                }
            }
        } while (true);
_L2:
        Iterator iterator2;
        int j1;
        if (l >= k)
        {
            i = i1;
            return i1;
        }
        iterator2 = aisofile[l].a(com/coremedia/iso/boxes/fragment/MovieFragmentBox).iterator();
        j1 = i1;
_L3:
label0:
        {
            if (iterator2.hasNext())
            {
                break label0;
            }
            l++;
            i1 = j1;
        }
        if (true) goto _L2; else goto _L1
_L1:
        Iterator iterator3 = ((MovieFragmentBox)iterator2.next()).a(com/coremedia/iso/boxes/fragment/TrackFragmentBox).iterator();
        while (iterator3.hasNext()) 
        {
            TrackFragmentBox trackfragmentbox1 = (TrackFragmentBox)iterator3.next();
            if (trackfragmentbox1.b().c() == c.b().c())
            {
                j1 = (int)((long)j1 + ((TrackRunBox)trackfragmentbox1.a(com/coremedia/iso/boxes/fragment/TrackRunBox).get(0)).b());
            }
        }
          goto _L3
    }
}
