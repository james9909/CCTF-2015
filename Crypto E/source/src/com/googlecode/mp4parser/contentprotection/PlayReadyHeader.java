// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.contentprotection;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.boxes.piff.ProtectionSpecificHeader;
import java.io.UnsupportedEncodingException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class PlayReadyHeader extends ProtectionSpecificHeader
{
    public static abstract class PlayReadyRecord
    {

        int a;

        public static List a(ByteBuffer bytebuffer, int i)
        {
            ArrayList arraylist;
            int j;
            arraylist = new ArrayList(i);
            j = 0;
_L6:
            int k;
            int l;
            if (j >= i)
            {
                return arraylist;
            }
            k = IsoTypeReader.e(bytebuffer);
            l = IsoTypeReader.e(bytebuffer);
            k;
            JVM INSTR tableswitch 1 3: default 60
        //                       1 115
        //                       2 127
        //                       3 140;
               goto _L1 _L2 _L3 _L4
_L4:
            break MISSING_BLOCK_LABEL_140;
_L2:
            break; /* Loop/switch isn't completed */
_L1:
            Object obj = new DefaulPlayReadyRecord(k);
_L7:
            ((PlayReadyRecord) (obj)).a((ByteBuffer)bytebuffer.slice().limit(l));
            bytebuffer.position(l + bytebuffer.position());
            arraylist.add(obj);
            j++;
            if (true) goto _L6; else goto _L5
_L5:
            obj = new RMHeader();
              goto _L7
_L3:
            obj = new DefaulPlayReadyRecord(2);
              goto _L7
            obj = new EmeddedLicenseStore();
              goto _L7
        }

        public abstract ByteBuffer a();

        public abstract void a(ByteBuffer bytebuffer);

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("PlayReadyRecord");
            stringbuilder.append("{type=").append(a);
            stringbuilder.append(", length=").append(a().limit());
            stringbuilder.append('}');
            return stringbuilder.toString();
        }

        public PlayReadyRecord(int i)
        {
            a = i;
        }
    }

    public static class PlayReadyRecord.DefaulPlayReadyRecord extends PlayReadyRecord
    {

        ByteBuffer b;

        public ByteBuffer a()
        {
            return b;
        }

        public void a(ByteBuffer bytebuffer)
        {
            b = bytebuffer.duplicate();
        }

        public PlayReadyRecord.DefaulPlayReadyRecord(int i)
        {
            super(i);
        }
    }

    public static class PlayReadyRecord.EmeddedLicenseStore extends PlayReadyRecord
    {

        ByteBuffer b;

        public ByteBuffer a()
        {
            return b;
        }

        public void a(ByteBuffer bytebuffer)
        {
            b = bytebuffer.duplicate();
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("EmeddedLicenseStore");
            stringbuilder.append("{length=").append(a().limit());
            stringbuilder.append('}');
            return stringbuilder.toString();
        }

        public PlayReadyRecord.EmeddedLicenseStore()
        {
            super(3);
        }
    }

    public static class PlayReadyRecord.RMHeader extends PlayReadyRecord
    {

        String b;

        public ByteBuffer a()
        {
            byte abyte0[];
            try
            {
                abyte0 = b.getBytes("UTF-16LE");
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                throw new RuntimeException(unsupportedencodingexception);
            }
            return ByteBuffer.wrap(abyte0);
        }

        public void a(ByteBuffer bytebuffer)
        {
            try
            {
                byte abyte0[] = new byte[bytebuffer.slice().limit()];
                bytebuffer.get(abyte0);
                b = new String(abyte0, "UTF-16LE");
                return;
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                throw new RuntimeException(unsupportedencodingexception);
            }
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("RMHeader");
            stringbuilder.append("{length=").append(a().limit());
            stringbuilder.append(", header='").append(b).append('\'');
            stringbuilder.append('}');
            return stringbuilder.toString();
        }

        public PlayReadyRecord.RMHeader()
        {
            super(1);
        }
    }


    public static UUID b;
    private long c;
    private List d;

    public PlayReadyHeader()
    {
    }

    public ByteBuffer a()
    {
        Iterator iterator;
        int i;
        iterator = d.iterator();
        i = 6;
_L3:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        ByteBuffer bytebuffer;
        Iterator iterator1;
        bytebuffer = ByteBuffer.allocate(i);
        IsoTypeWriter.c(bytebuffer, i);
        IsoTypeWriter.c(bytebuffer, d.size());
        iterator1 = d.iterator();
_L4:
        if (!iterator1.hasNext())
        {
            return bytebuffer;
        }
        break MISSING_BLOCK_LABEL_101;
_L2:
        PlayReadyRecord playreadyrecord = (PlayReadyRecord)iterator.next();
        i = i + 4 + playreadyrecord.a().rewind().limit();
          goto _L3
        PlayReadyRecord playreadyrecord1 = (PlayReadyRecord)iterator1.next();
        IsoTypeWriter.c(bytebuffer, playreadyrecord1.a);
        IsoTypeWriter.c(bytebuffer, playreadyrecord1.a().limit());
        bytebuffer.put(playreadyrecord1.a());
          goto _L4
    }

    public void a(ByteBuffer bytebuffer)
    {
        c = IsoTypeReader.a(bytebuffer);
        d = PlayReadyRecord.a(bytebuffer, IsoTypeReader.e(bytebuffer));
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("PlayReadyHeader");
        stringbuilder.append("{length=").append(c);
        stringbuilder.append(", recordCount=").append(d.size());
        stringbuilder.append(", records=").append(d);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    static 
    {
        b = UUID.fromString("9A04F079-9840-4286-AB92-E65BE0885F95");
        ProtectionSpecificHeader.a.put(b, com/googlecode/mp4parser/contentprotection/PlayReadyHeader);
    }
}
