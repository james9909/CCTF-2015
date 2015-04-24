// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.Hex;
import com.coremedia.iso.IsoTypeReader;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.objectdescriptors:
//            BaseDescriptor, ObjectDescriptorFactory, DecoderSpecificInfo, AudioSpecificConfig, 
//            ProfileLevelIndicationDescriptor

public class DecoderConfigDescriptor extends BaseDescriptor
{

    private static Logger k = Logger.getLogger(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor.getName());
    int a;
    int b;
    int c;
    int d;
    long e;
    long f;
    DecoderSpecificInfo g;
    AudioSpecificConfig h;
    List i;
    byte j[];

    public DecoderConfigDescriptor()
    {
        i = new ArrayList();
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.f(bytebuffer);
        int l = IsoTypeReader.f(bytebuffer);
        b = l >>> 2;
        c = 1 & l >> 1;
        d = IsoTypeReader.c(bytebuffer);
        e = IsoTypeReader.b(bytebuffer);
        f = IsoTypeReader.b(bytebuffer);
        if (bytebuffer.remaining() > 2)
        {
            int i1 = bytebuffer.position();
            BaseDescriptor basedescriptor1 = ObjectDescriptorFactory.a(a, bytebuffer);
            int j1 = bytebuffer.position() - i1;
            Logger logger1 = k;
            StringBuilder stringbuilder1 = (new StringBuilder()).append(basedescriptor1).append(" - DecoderConfigDescr1 read: ").append(j1).append(", size: ");
            Integer integer1;
            if (basedescriptor1 != null)
            {
                integer1 = Integer.valueOf(basedescriptor1.a());
            } else
            {
                integer1 = null;
            }
            logger1.finer(stringbuilder1.append(integer1).toString());
            if (basedescriptor1 != null)
            {
                int k1 = basedescriptor1.a();
                if (j1 < k1)
                {
                    j = new byte[k1 - j1];
                    bytebuffer.get(j);
                }
            }
            if (basedescriptor1 instanceof DecoderSpecificInfo)
            {
                g = (DecoderSpecificInfo)basedescriptor1;
            }
            if (basedescriptor1 instanceof AudioSpecificConfig)
            {
                h = (AudioSpecificConfig)basedescriptor1;
            }
        }
        do
        {
            do
            {
                if (bytebuffer.remaining() <= 2)
                {
                    return;
                }
                long l1 = bytebuffer.position();
                BaseDescriptor basedescriptor = ObjectDescriptorFactory.a(a, bytebuffer);
                long l2 = (long)bytebuffer.position() - l1;
                Logger logger = k;
                StringBuilder stringbuilder = (new StringBuilder()).append(basedescriptor).append(" - DecoderConfigDescr2 read: ").append(l2).append(", size: ");
                Integer integer;
                if (basedescriptor != null)
                {
                    integer = Integer.valueOf(basedescriptor.a());
                } else
                {
                    integer = null;
                }
                logger.finer(stringbuilder.append(integer).toString());
            } while (!(basedescriptor instanceof ProfileLevelIndicationDescriptor));
            i.add((ProfileLevelIndicationDescriptor)basedescriptor);
        } while (true);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("DecoderConfigDescriptor");
        stringbuilder.append("{objectTypeIndication=").append(a);
        stringbuilder.append(", streamType=").append(b);
        stringbuilder.append(", upStream=").append(c);
        stringbuilder.append(", bufferSizeDB=").append(d);
        stringbuilder.append(", maxBitRate=").append(e);
        stringbuilder.append(", avgBitRate=").append(f);
        stringbuilder.append(", decoderSpecificInfo=").append(g);
        stringbuilder.append(", audioSpecificInfo=").append(h);
        StringBuilder stringbuilder1 = stringbuilder.append(", configDescriptorDeadBytes=");
        byte abyte0[];
        StringBuilder stringbuilder2;
        String s;
        if (j != null)
        {
            abyte0 = j;
        } else
        {
            abyte0 = new byte[0];
        }
        stringbuilder1.append(Hex.a(abyte0));
        stringbuilder2 = stringbuilder.append(", profileLevelIndicationDescriptors=");
        if (i == null)
        {
            s = "null";
        } else
        {
            List alist[] = new List[1];
            alist[0] = i;
            s = Arrays.asList(alist).toString();
        }
        stringbuilder2.append(s);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
