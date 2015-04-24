// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.cenc;

import com.googlecode.mp4parser.authoring.Sample;
import com.googlecode.mp4parser.authoring.SampleImpl;
import com.googlecode.mp4parser.util.CastUtils;
import com.googlecode.mp4parser.util.RangeStartMap;
import com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat;
import java.io.PrintStream;
import java.nio.ByteBuffer;
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
import javax.crypto.spec.IvParameterSpec;

public class CencDecryptingSampleList extends AbstractList
{

    List a;
    RangeStartMap b;
    List c;
    String d;

    public Sample a(int i)
    {
        if (b.get(Integer.valueOf(i)) == null) goto _L2; else goto _L1
_L1:
        Sample sample;
        ByteBuffer bytebuffer;
        ByteBuffer bytebuffer1;
        CencSampleAuxiliaryDataFormat cencsampleauxiliarydataformat;
        Cipher cipher;
        sample = (Sample)c.get(i);
        bytebuffer = sample.b();
        bytebuffer.rewind();
        bytebuffer1 = ByteBuffer.allocate(bytebuffer.limit());
        cencsampleauxiliarydataformat = (CencSampleAuxiliaryDataFormat)a.get(i);
        cipher = a((SecretKey)b.get(Integer.valueOf(i)), cencsampleauxiliarydataformat.a);
        if (cencsampleauxiliarydataformat.b == null || cencsampleauxiliarydataformat.b.length <= 0) goto _L4; else goto _L3
_L3:
        com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat.Pair apair[];
        int k;
        apair = cencsampleauxiliarydataformat.b;
        k = apair.length;
        int l = 0;
_L14:
        if (l < k) goto _L6; else goto _L5
_L5:
        if (bytebuffer.remaining() > 0)
        {
            System.err.println((new StringBuilder("Decrypted sample but still data remaining: ")).append(sample.a()).toString());
        }
        bytebuffer1.put(cipher.doFinal());
_L11:
        bytebuffer.rewind();
        bytebuffer1.rewind();
        return new SampleImpl(bytebuffer1);
_L6:
        byte abyte0[];
        int j1;
        try
        {
            com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat.Pair pair = apair[l];
            int i1 = pair.a();
            j1 = CastUtils.a(pair.b());
            byte abyte1[] = new byte[i1];
            bytebuffer.get(abyte1);
            bytebuffer1.put(abyte1);
        }
        catch (IllegalBlockSizeException illegalblocksizeexception)
        {
            throw new RuntimeException(illegalblocksizeexception);
        }
        catch (BadPaddingException badpaddingexception)
        {
            throw new RuntimeException(badpaddingexception);
        }
        if (j1 <= 0) goto _L8; else goto _L7
_L7:
        byte abyte2[] = new byte[j1];
        bytebuffer.get(abyte2);
        bytebuffer1.put(cipher.update(abyte2));
          goto _L8
_L4:
        abyte0 = new byte[bytebuffer.limit()];
        bytebuffer.get(abyte0);
        if (!"cbc1".equals(d)) goto _L10; else goto _L9
_L9:
        int j = 16 * (abyte0.length / 16);
        bytebuffer1.put(cipher.doFinal(abyte0, 0, j));
        bytebuffer1.put(abyte0, j, abyte0.length - j);
          goto _L11
_L10:
        if (!"cenc".equals(d)) goto _L11; else goto _L12
_L12:
        bytebuffer1.put(cipher.doFinal(abyte0));
          goto _L11
_L2:
        return (Sample)c.get(i);
_L8:
        l++;
        if (true) goto _L14; else goto _L13
_L13:
    }

    Cipher a(SecretKey secretkey, byte abyte0[])
    {
        byte abyte1[];
        abyte1 = new byte[16];
        System.arraycopy(abyte0, 0, abyte1, 0, abyte0.length);
        Cipher cipher1;
        if (!"cenc".equals(d))
        {
            break MISSING_BLOCK_LABEL_51;
        }
        cipher1 = Cipher.getInstance("AES/CTR/NoPadding");
        cipher1.init(2, secretkey, new IvParameterSpec(abyte1));
        return cipher1;
        Cipher cipher;
        if (!"cbc1".equals(d))
        {
            break MISSING_BLOCK_LABEL_100;
        }
        cipher = Cipher.getInstance("AES/CBC/NoPadding");
        cipher.init(2, secretkey, new IvParameterSpec(abyte1));
        NoSuchAlgorithmException nosuchalgorithmexception;
        return cipher;
        try
        {
            throw new RuntimeException("Only cenc & cbc1 is supported as encryptionAlgo");
        }
        // Misplaced declaration of an exception variable
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException(nosuchalgorithmexception);
        }
        catch (NoSuchPaddingException nosuchpaddingexception)
        {
            throw new RuntimeException(nosuchpaddingexception);
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
        return c.size();
    }
}
