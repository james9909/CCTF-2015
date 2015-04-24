// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.input;

import java.io.RandomAccessFile;

// Referenced classes of package org.apache.commons.io.input:
//            ReversedLinesFileReader

class <init>
{

    private int currentLastBytePos;
    private final byte data[];
    private byte leftOver[];
    private final long no;
    final ReversedLinesFileReader this$0;

    private void createLeftOver()
    {
        int i = 1 + currentLastBytePos;
        if (i > 0)
        {
            leftOver = new byte[i];
            System.arraycopy(data, 0, leftOver, 0, i);
        } else
        {
            leftOver = null;
        }
        currentLastBytePos = -1;
    }

    private int getNewLineMatchByteCount(byte abyte0[], int i)
    {
        byte abyte1[][] = ReversedLinesFileReader.access$800(ReversedLinesFileReader.this);
        int j = abyte1.length;
        int k = 0;
        do
        {
label0:
            {
                int l = 0;
                if (k < j)
                {
                    byte abyte2[] = abyte1[k];
                    int i1 = -1 + abyte2.length;
                    boolean flag = true;
                    while (i1 >= 0) 
                    {
                        int j1 = (i + i1) - (-1 + abyte2.length);
                        boolean flag1;
                        if (j1 >= 0 && abyte0[j1] == abyte2[i1])
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                        flag &= flag1;
                        i1--;
                    }
                    if (!flag)
                    {
                        break label0;
                    }
                    l = abyte2.length;
                }
                return l;
            }
            k++;
        } while (true);
    }

    private String readLine()
    {
        int i;
        String s;
        boolean flag;
        String s1;
        if (no == 1L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = currentLastBytePos;
_L2:
        if (i <= -1)
        {
            break MISSING_BLOCK_LABEL_224;
        }
        if (!flag && i < ReversedLinesFileReader.access$600(ReversedLinesFileReader.this))
        {
            createLeftOver();
            s = null;
        } else
        {
label0:
            {
                int j = getNewLineMatchByteCount(data, i);
                if (j <= 0)
                {
                    break label0;
                }
                int k = i + 1;
                int l = 1 + (currentLastBytePos - k);
                if (l < 0)
                {
                    throw new IllegalStateException((new StringBuilder()).append("Unexpected negative line length=").append(l).toString());
                }
                byte abyte0[] = new byte[l];
                System.arraycopy(data, k, abyte0, 0, l);
                s = new String(abyte0, ReversedLinesFileReader.access$500(ReversedLinesFileReader.this));
                currentLastBytePos = i - j;
            }
        }
_L3:
        if (flag && leftOver != null)
        {
            s1 = new String(leftOver, ReversedLinesFileReader.access$500(ReversedLinesFileReader.this));
            leftOver = null;
            return s1;
        } else
        {
            return s;
        }
        i -= ReversedLinesFileReader.access$700(ReversedLinesFileReader.this);
        if (i >= 0) goto _L2; else goto _L1
_L1:
        createLeftOver();
        s = null;
          goto _L3
        s = null;
          goto _L3
    }

    private createLeftOver rollOver()
    {
        if (currentLastBytePos > -1)
        {
            throw new IllegalStateException((new StringBuilder()).append("Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos=").append(currentLastBytePos).toString());
        }
        if (no > 1L)
        {
            return new <init>(no - 1L, ReversedLinesFileReader.access$300(ReversedLinesFileReader.this), leftOver);
        }
        if (leftOver != null)
        {
            throw new IllegalStateException((new StringBuilder()).append("Unexpected leftover of the last block: leftOverOfThisFilePart=").append(new String(leftOver, ReversedLinesFileReader.access$500(ReversedLinesFileReader.this))).toString());
        } else
        {
            return null;
        }
    }



    private (long l, int i, byte abyte0[])
    {
        this$0 = ReversedLinesFileReader.this;
        super();
        no = l;
        int j;
        long l1;
        if (abyte0 != null)
        {
            j = abyte0.length;
        } else
        {
            j = 0;
        }
        data = new byte[j + i];
        l1 = (l - 1L) * (long)ReversedLinesFileReader.access$300(ReversedLinesFileReader.this);
        if (l > 0L)
        {
            ReversedLinesFileReader.access$400(ReversedLinesFileReader.this).seek(l1);
            if (ReversedLinesFileReader.access$400(ReversedLinesFileReader.this).read(data, 0, i) != i)
            {
                throw new IllegalStateException("Count of requested bytes and actually read bytes don't match");
            }
        }
        if (abyte0 != null)
        {
            System.arraycopy(abyte0, 0, data, i, abyte0.length);
        }
        currentLastBytePos = -1 + data.length;
        leftOver = null;
    }

    leftOver(long l, int i, byte abyte0[], leftOver leftover)
    {
        this(l, i, abyte0);
    }
}
