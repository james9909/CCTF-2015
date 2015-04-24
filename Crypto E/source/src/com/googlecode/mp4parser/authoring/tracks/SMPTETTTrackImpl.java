// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.authoring.AbstractTrack;
import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.TrackMetaData;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.xml.namespace.NamespaceContext;

public class SMPTETTTrackImpl extends AbstractTrack
{
    static class TextTrackNamespaceContext
        implements NamespaceContext
    {

        public String getNamespaceURI(String s)
        {
            if (s.equals("ttml"))
            {
                return "http://www.w3.org/ns/ttml";
            }
            if (s.equals("smpte"))
            {
                return "http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt";
            } else
            {
                return null;
            }
        }

        public String getPrefix(String s)
        {
            if (s.equals("http://www.w3.org/ns/ttml"))
            {
                return "ttml";
            }
            if (s.equals("http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt"))
            {
                return "smpte";
            } else
            {
                return null;
            }
        }

        public Iterator getPrefixes(String s)
        {
            return Arrays.asList(new String[] {
                "ttml", "smpte"
            }).iterator();
        }

        private TextTrackNamespaceContext()
        {
        }
    }


    TrackMetaData d;
    List e;
    private long f[];

    static byte[] a(SMPTETTTrackImpl smptetttrackimpl, InputStream inputstream)
    {
        return smptetttrackimpl.a(inputstream);
    }

    private byte[] a(InputStream inputstream)
    {
        byte abyte0[] = new byte[8096];
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        do
        {
            int i = inputstream.read(abyte0);
            if (-1 == i)
            {
                return bytearrayoutputstream.toByteArray();
            }
            bytearrayoutputstream.write(abyte0, 0, i);
        } while (true);
    }

    public List a()
    {
        return e;
    }

    public long[] b()
    {
        long al[] = new long[f.length];
        int i = 0;
        do
        {
            if (i >= al.length)
            {
                return al;
            }
            al[i] = (f[i] * d.a()) / 1000L;
            i++;
        } while (true);
    }

    public TrackMetaData c()
    {
        return d;
    }

    public void close()
    {
    }

    public String d()
    {
        return "subt";
    }

    // Unreferenced inner class com/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$1

/* anonymous class */
    class _cls1
        implements Sample
    {

        private final String a;
        private final List b;

        public long a()
        {
            long l = Utf8.a(a).length;
            Iterator iterator = b.iterator();
            long l1 = l;
            do
            {
                if (!iterator.hasNext())
                {
                    return l1;
                }
                l1 += ((File)iterator.next()).length();
            } while (true);
        }

        public void a(WritableByteChannel writablebytechannel)
        {
            Iterator iterator;
            writablebytechannel.write(ByteBuffer.wrap(Utf8.a(a)));
            iterator = b.iterator();
_L2:
            if (!iterator.hasNext())
            {
                return;
            }
            FileInputStream fileinputstream = new FileInputStream((File)iterator.next());
            byte abyte0[] = new byte[8096];
            do
            {
                int i = fileinputstream.read(abyte0);
                if (-1 == i)
                {
                    continue;
                }
                writablebytechannel.write(ByteBuffer.wrap(abyte0, 0, i));
            } while (true);
            if (true) goto _L2; else goto _L1
_L1:
        }

        public ByteBuffer b()
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            try
            {
                a(Channels.newChannel(bytearrayoutputstream));
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException(ioexception);
            }
            return ByteBuffer.wrap(bytearrayoutputstream.toByteArray());
        }
    }


    // Unreferenced inner class com/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$2

/* anonymous class */
    class _cls2
        implements Sample
    {

        final SMPTETTTrackImpl a;
        private final File b;

        public long a()
        {
            return b.length();
        }

        public void a(WritableByteChannel writablebytechannel)
        {
            Channels.newOutputStream(writablebytechannel).write(SMPTETTTrackImpl.a(a, new FileInputStream(b)));
        }

        public ByteBuffer b()
        {
            ByteBuffer bytebuffer;
            try
            {
                bytebuffer = ByteBuffer.wrap(SMPTETTTrackImpl.a(a, new FileInputStream(b)));
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException(ioexception);
            }
            return bytebuffer;
        }
    }

}
