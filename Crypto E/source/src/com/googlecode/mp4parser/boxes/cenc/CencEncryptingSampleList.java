// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.cenc;

import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.util.CastUtils;
import com.googlecode.mp4parser.util.RangeStartMap;
import com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.AbstractList;
import java.util.List;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;

public class CencEncryptingSampleList extends AbstractList
{
    class EncryptedSampleImpl
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
            com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat.Pair apair[];
            int k;
            abyte1 = new byte[bytebuffer.limit()];
            bytebuffer.get(abyte1);
            apair = d.b;
            k = apair.length;
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
                com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat.Pair pair = apair[l];
                i += pair.a();
                if (pair.b() > 0L)
                {
                    e.update(abyte1, i, CastUtils.a(pair.b()), abyte1, i);
                    i = (int)((long)i + pair.b());
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
            com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat.Pair apair[];
            int j;
            apair = cencsampleauxiliarydataformat.b;
            j = apair.length;
            int k = 0;
              goto _L3
_L6:
            byte abyte3[];
            com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat.Pair pair;
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
            pair = apair[k];
            abyte1 = new byte[pair.a()];
            bytebuffer.get(abyte1);
            bytebuffer1.put(abyte1);
            if (pair.b() <= 0L) goto _L5; else goto _L4
_L4:
            abyte2 = new byte[CastUtils.a(pair.b())];
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

        private EncryptedSampleImpl(Sample sample, CencSampleAuxiliaryDataFormat cencsampleauxiliarydataformat, Cipher cipher, SecretKey secretkey)
        {
            a = CencEncryptingSampleList.this;
            super();
            c = sample;
            d = cencsampleauxiliarydataformat;
            e = cipher;
            f = secretkey;
        }

        EncryptedSampleImpl(Sample sample, CencSampleAuxiliaryDataFormat cencsampleauxiliarydataformat, Cipher cipher, SecretKey secretkey, EncryptedSampleImpl encryptedsampleimpl)
        {
            this(sample, cencsampleauxiliarydataformat, cipher, secretkey);
        }
    }


    Cipher a;
    List b;
    RangeStartMap c;
    List d;
    private final String e;

    public CencEncryptingSampleList(RangeStartMap rangestartmap, List list, List list1, String s)
    {
        c = new RangeStartMap();
        b = list1;
        c = rangestartmap;
        e = s;
        d = list;
        try
        {
            if ("cenc".equals(s))
            {
                a = Cipher.getInstance("AES/CTR/NoPadding");
                return;
            }
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException(nosuchalgorithmexception);
        }
        catch (NoSuchPaddingException nosuchpaddingexception)
        {
            throw new RuntimeException(nosuchpaddingexception);
        }
        if ("cbc1".equals(s))
        {
            a = Cipher.getInstance("AES/CBC/NoPadding");
            return;
        }
        throw new RuntimeException("Only cenc & cbc1 is supported as encryptionAlgo");
    }

    static String a(CencEncryptingSampleList cencencryptingsamplelist)
    {
        return cencencryptingsamplelist.e;
    }

    public Sample a(int i)
    {
        Sample sample = (Sample)d.get(i);
        if (c.get(Integer.valueOf(i)) != null)
        {
            return new EncryptedSampleImpl(sample, (CencSampleAuxiliaryDataFormat)b.get(i), a, (SecretKey)c.get(Integer.valueOf(i)), null);
        } else
        {
            return sample;
        }
    }

    protected void a(byte abyte0[], SecretKey secretkey)
    {
        try
        {
            byte abyte1[] = new byte[16];
            System.arraycopy(abyte0, 0, abyte1, 0, abyte0.length);
            a.init(1, secretkey, new IvParameterSpec(abyte1));
            return;
        }
        catch (InvalidAlgorithmParameterException invalidalgorithmparameterexception)
        {
            throw new RuntimeException(invalidalgorithmparameterexception);
        }
        catch (InvalidKeyException invalidkeyexception)
        {
            throw new RuntimeException(invalidkeyexception);
        }
    }

    public Object get(int i)
    {
        return a(i);
    }

    public int size()
    {
        return d.size();
    }
}
