// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.input;

import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import org.apache.commons.io.Charsets;

public class ReversedLinesFileReader
    implements Closeable
{
    class FilePart
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
            byte abyte1[][] = newLineSequences;
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
            if (!flag && i < avoidNewlineSplitBufferSize)
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
                    s = new String(abyte0, encoding);
                    currentLastBytePos = i - j;
                }
            }
_L3:
            if (flag && leftOver != null)
            {
                s1 = new String(leftOver, encoding);
                leftOver = null;
                return s1;
            } else
            {
                return s;
            }
            i -= byteDecrement;
            if (i >= 0) goto _L2; else goto _L1
_L1:
            createLeftOver();
            s = null;
              goto _L3
            s = null;
              goto _L3
        }

        private FilePart rollOver()
        {
            if (currentLastBytePos > -1)
            {
                throw new IllegalStateException((new StringBuilder()).append("Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos=").append(currentLastBytePos).toString());
            }
            if (no > 1L)
            {
                return new FilePart(no - 1L, blockSize, leftOver);
            }
            if (leftOver != null)
            {
                throw new IllegalStateException((new StringBuilder()).append("Unexpected leftover of the last block: leftOverOfThisFilePart=").append(new String(leftOver, encoding)).toString());
            } else
            {
                return null;
            }
        }



        private FilePart(long l, int i, byte abyte0[])
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
            l1 = (l - 1L) * (long)blockSize;
            if (l > 0L)
            {
                randomAccessFile.seek(l1);
                if (randomAccessFile.read(data, 0, i) != i)
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

        FilePart(long l, int i, byte abyte0[], _cls1 _pcls1)
        {
            this(l, i, abyte0);
        }
    }


    private final int avoidNewlineSplitBufferSize;
    private final int blockSize;
    private final int byteDecrement;
    private FilePart currentFilePart;
    private final Charset encoding;
    private final byte newLineSequences[][];
    private final RandomAccessFile randomAccessFile;
    private final long totalBlockCount;
    private final long totalByteLength;
    private boolean trailingNewlineOfFileSkipped;

    public ReversedLinesFileReader(File file)
    {
        this(file, 4096, Charset.defaultCharset().toString());
    }

    public ReversedLinesFileReader(File file, int i, String s)
    {
        this(file, i, Charsets.toCharset(s));
    }

    public ReversedLinesFileReader(File file, int i, Charset charset)
    {
        int j;
        trailingNewlineOfFileSkipped = false;
        blockSize = i;
        encoding = charset;
        randomAccessFile = new RandomAccessFile(file, "r");
        totalByteLength = randomAccessFile.length();
        j = (int)(totalByteLength % (long)i);
        if (j <= 0) goto _L2; else goto _L1
_L1:
        totalBlockCount = 1L + totalByteLength / (long)i;
_L8:
        Charset charset1;
        currentFilePart = new FilePart(totalBlockCount, j, null);
        charset1 = Charsets.toCharset(charset);
        if (charset1.newEncoder().maxBytesPerChar() != 1.0F) goto _L4; else goto _L3
_L3:
        byteDecrement = 1;
_L6:
        byte abyte0[][] = new byte[3][];
        abyte0[0] = "\r\n".getBytes(charset);
        abyte0[1] = "\n".getBytes(charset);
        abyte0[2] = "\r".getBytes(charset);
        newLineSequences = abyte0;
        avoidNewlineSplitBufferSize = newLineSequences[0].length;
        return;
_L2:
        totalBlockCount = totalByteLength / (long)i;
        if (totalByteLength > 0L)
        {
            j = i;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (charset1 == Charset.forName("UTF-8"))
        {
            byteDecrement = 1;
            continue; /* Loop/switch isn't completed */
        }
        if (charset1 == Charset.forName("Shift_JIS"))
        {
            byteDecrement = 1;
            continue; /* Loop/switch isn't completed */
        }
        if (charset1 != Charset.forName("UTF-16BE") && charset1 != Charset.forName("UTF-16LE"))
        {
            break; /* Loop/switch isn't completed */
        }
        byteDecrement = 2;
        if (true) goto _L6; else goto _L5
_L5:
        if (charset1 == Charset.forName("UTF-16"))
        {
            throw new UnsupportedEncodingException("For UTF-16, you need to specify the byte order (use UTF-16BE or UTF-16LE)");
        }
        throw new UnsupportedEncodingException((new StringBuilder()).append("Encoding ").append(charset).append(" is not supported yet (feel free to submit a patch)").toString());
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void close()
    {
        randomAccessFile.close();
    }

    public String readLine()
    {
        String s = currentFilePart.readLine();
        do
        {
            if (s != null)
            {
                break;
            }
            currentFilePart = currentFilePart.rollOver();
            if (currentFilePart == null)
            {
                break;
            }
            s = currentFilePart.readLine();
        } while (true);
        if ("".equals(s) && !trailingNewlineOfFileSkipped)
        {
            trailingNewlineOfFileSkipped = true;
            s = readLine();
        }
        return s;
    }






}
