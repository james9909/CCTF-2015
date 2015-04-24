// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.cenc;

import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.util.CastUtils;
import com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;

// Referenced classes of package com.googlecode.mp4parser.boxes.cenc:
//            CencEncryptingSampleList

class <init>
    implements Sample
{

    static final boolean b;
    final CencEncryptingSampleList a;
    private final Sample c;
    private final CencSampleAuxiliaryDataFormat d;
    private final Cipher e;
    private final SecretKey f;

    public long a()
    {
        return c.a();
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        int i;
        ByteBuffer bytebuffer;
        i = 0;
        bytebuffer = (ByteBuffer)c.b().rewind();
        a.a(d.a, f);
        if (d.b == null || d.b.length <= 0) goto _L2; else goto _L1
_L1:
        byte abyte1[];
        com.mp4parser.iso23001.part7.leImpl aleimpl[];
        int k;
        abyte1 = new byte[bytebuffer.limit()];
        bytebuffer.get(abyte1);
        aleimpl = d.b;
        k = aleimpl.length;
        int l = 0;
_L10:
        if (l < k) goto _L4; else goto _L3
_L3:
        writablebytechannel.write(ByteBuffer.wrap(abyte1));
_L7:
        bytebuffer.rewind();
        return;
_L2:
        abyte0 = new byte[bytebuffer.limit()];
        bytebuffer.get(abyte0);
        if (!"cbc1".equals(CencEncryptingSampleList.a(a))) goto _L6; else goto _L5
_L5:
        int j = 16 * (abyte0.length / 16);
        writablebytechannel.write(ByteBuffer.wrap(e.doFinal(abyte0, 0, j)));
        writablebytechannel.write(ByteBuffer.wrap(abyte0, j, abyte0.length - j));
          goto _L7
_L6:
        if (!"cenc".equals(CencEncryptingSampleList.a(a))) goto _L7; else goto _L8
_L8:
        writablebytechannel.write(ByteBuffer.wrap(e.doFinal(abyte0)));
          goto _L7
_L4:
        byte abyte0[];
        try
        {
            com.mp4parser.iso23001.part7.leImpl leimpl = aleimpl[l];
            i += leimpl.e();
            if (leimpl.e() > 0L)
            {
                e.update(abyte1, i, CastUtils.a(leimpl.e()), abyte1, i);
                i = (int)((long)i + leimpl.e());
            }
        }
        catch (IllegalBlockSizeException illegalblocksizeexception)
        {
            throw new RuntimeException(illegalblocksizeexception);
        }
        catch (BadPaddingException badpaddingexception)
        {
            throw new RuntimeException(badpaddingexception);
        }
        catch (ShortBufferException shortbufferexception)
        {
            throw new RuntimeException(shortbufferexception);
        }
        l++;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public ByteBuffer b()
    {
        ByteBuffer bytebuffer;
        ByteBuffer bytebuffer1;
        CencSampleAuxiliaryDataFormat cencsampleauxiliarydataformat;
        bytebuffer = (ByteBuffer)c.b().rewind();
        bytebuffer1 = ByteBuffer.allocate(bytebuffer.limit());
        cencsampleauxiliarydataformat = d;
        a.a(d.a, f);
        if (cencsampleauxiliarydataformat.b == null) goto _L2; else goto _L1
_L1:
        com.mp4parser.iso23001.part7.leImpl aleimpl[];
        int j;
        aleimpl = cencsampleauxiliarydataformat.b;
        j = aleimpl.length;
        int k = 0;
          goto _L3
_L6:
        byte abyte3[];
        com.mp4parser.iso23001.part7.leImpl leimpl;
        byte abyte1[];
        byte abyte2[];
        try
        {
            bytebuffer.rewind();
        }
        catch (IllegalBlockSizeException illegalblocksizeexception)
        {
            throw new RuntimeException(illegalblocksizeexception);
        }
        catch (BadPaddingException badpaddingexception)
        {
            throw new RuntimeException(badpaddingexception);
        }
        bytebuffer1.rewind();
        return bytebuffer1;
_L7:
        leimpl = aleimpl[k];
        abyte1 = new byte[leimpl.f()];
        bytebuffer.get(abyte1);
        bytebuffer1.put(abyte1);
        if (leimpl.f() <= 0L) goto _L5; else goto _L4
_L4:
        abyte2 = new byte[CastUtils.a(leimpl.f())];
        bytebuffer.get(abyte2);
        if (!b && abyte2.length % 16 != 0)
        {
            throw new AssertionError();
        }
        abyte3 = e.update(abyte2);
        if (!b && abyte3.length != abyte2.length)
        {
            throw new AssertionError();
        }
        bytebuffer1.put(abyte3);
          goto _L5
_L2:
        byte abyte0[];
        abyte0 = new byte[bytebuffer.limit()];
        bytebuffer.get(abyte0);
        if ("cbc1".equals(CencEncryptingSampleList.a(a)))
        {
            int i = 16 * (abyte0.length / 16);
            bytebuffer1.put(e.doFinal(abyte0, 0, i));
            bytebuffer1.put(abyte0, i, abyte0.length - i);
            break; /* Loop/switch isn't completed */
        }
        if (!"cenc".equals(CencEncryptingSampleList.a(a)))
        {
            break; /* Loop/switch isn't completed */
        }
        bytebuffer1.put(e.doFinal(abyte0));
        break; /* Loop/switch isn't completed */
_L3:
        if (k < j) goto _L7; else goto _L6
_L5:
        k++;
          goto _L3
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/boxes/cenc/CencEncryptingSampleList.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }

    private (CencEncryptingSampleList cencencryptingsamplelist, Sample sample, CencSampleAuxiliaryDataFormat cencsampleauxiliarydataformat, Cipher cipher, SecretKey secretkey)
    {
        a = cencencryptingsamplelist;
        super();
        c = sample;
        d = cencsampleauxiliarydataformat;
        e = cipher;
        f = secretkey;
    }

    f(CencEncryptingSampleList cencencryptingsamplelist, Sample sample, CencSampleAuxiliaryDataFormat cencsampleauxiliarydataformat, Cipher cipher, SecretKey secretkey, f f1)
    {
        this(cencencryptingsamplelist, sample, cencsampleauxiliarydataformat, cipher, secretkey);
    }
}
