// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.security.MessageDigest;

// Referenced classes of package com.google.android.gms.internal:
//            ao, aq

public class ar extends ao
{

    private MessageDigest oj;

    public ar()
    {
    }

    byte[] a(String as[])
    {
        byte abyte0[] = new byte[as.length];
        for (int i = 0; i < as.length; i++)
        {
            abyte0[i] = e(aq.o(as[i]));
        }

        return abyte0;
    }

    byte e(int i)
    {
        return (byte)(i & 0xff ^ 0xff0000 & i ^ i & 0 ^ i & 0);
    }

    public byte[] l(String s)
    {
        byte abyte0[];
label0:
        {
            abyte0 = a(s.split(" "));
            oj = bn();
            byte abyte1[];
            synchronized (mL)
            {
                if (oj != null)
                {
                    break label0;
                }
                abyte1 = new byte[0];
            }
            return abyte1;
        }
        byte abyte2[];
        oj.reset();
        oj.update(abyte0);
        abyte2 = oj.digest();
        int i = 4;
        if (abyte2.length <= i)
        {
            break MISSING_BLOCK_LABEL_108;
        }
_L1:
        byte abyte3[];
        abyte3 = new byte[i];
        System.arraycopy(abyte2, 0, abyte3, 0, abyte3.length);
        obj;
        JVM INSTR monitorexit ;
        return abyte3;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        i = abyte2.length;
          goto _L1
    }
}
