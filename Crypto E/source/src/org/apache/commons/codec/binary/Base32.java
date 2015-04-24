// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.binary;


// Referenced classes of package org.apache.commons.codec.binary:
//            BaseNCodec, StringUtils

public class Base32 extends BaseNCodec
{

    private static final int BITS_PER_ENCODED_BYTE = 5;
    private static final int BYTES_PER_ENCODED_BLOCK = 8;
    private static final int BYTES_PER_UNENCODED_BLOCK = 5;
    private static final byte CHUNK_SEPARATOR[] = {
        13, 10
    };
    private static final byte DECODE_TABLE[] = {
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, 63, -1, -1, 
        26, 27, 28, 29, 30, 31, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 
        5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
        25
    };
    private static final byte ENCODE_TABLE[] = {
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86, 87, 88, 89, 90, 50, 51, 52, 53, 
        54, 55
    };
    private static final byte HEX_DECODE_TABLE[] = {
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1, -1, 63, 0, 1, 
        2, 3, 4, 5, 6, 7, 8, 9, -1, -1, 
        -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 
        15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
        25, 26, 27, 28, 29, 30, 31, 32
    };
    private static final byte HEX_ENCODE_TABLE[] = {
        48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 
        65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
        75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
        85, 86
    };
    private static final int MASK_5BITS = 31;
    private long bitWorkArea;
    private final int decodeSize;
    private final byte decodeTable[];
    private final int encodeSize;
    private final byte encodeTable[];
    private final byte lineSeparator[];

    public Base32()
    {
        this(false);
    }

    public Base32(int i)
    {
        this(i, CHUNK_SEPARATOR);
    }

    public Base32(int i, byte abyte0[])
    {
        this(i, abyte0, false);
    }

    public Base32(int i, byte abyte0[], boolean flag)
    {
        int j;
        if (abyte0 == null)
        {
            j = 0;
        } else
        {
            j = abyte0.length;
        }
        super(5, 8, i, j);
        if (flag)
        {
            encodeTable = HEX_ENCODE_TABLE;
            decodeTable = HEX_DECODE_TABLE;
        } else
        {
            encodeTable = ENCODE_TABLE;
            decodeTable = DECODE_TABLE;
        }
        if (i > 0)
        {
            if (abyte0 == null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("lineLength ").append(i).append(" > 0, but lineSeparator is null").toString());
            }
            if (containsAlphabetOrPad(abyte0))
            {
                String s = StringUtils.newStringUtf8(abyte0);
                throw new IllegalArgumentException((new StringBuilder()).append("lineSeparator must not contain Base32 characters: [").append(s).append("]").toString());
            }
            encodeSize = 8 + abyte0.length;
            lineSeparator = new byte[abyte0.length];
            System.arraycopy(abyte0, 0, lineSeparator, 0, abyte0.length);
        } else
        {
            encodeSize = 8;
            lineSeparator = null;
        }
        decodeSize = -1 + encodeSize;
    }

    public Base32(boolean flag)
    {
        this(0, null, flag);
    }

    void decode(byte abyte0[], int i, int j)
    {
        if (!eof) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int k;
        if (j < 0)
        {
            eof = true;
        }
        k = 0;
_L4:
        int j4;
        byte byte0;
        if (k >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        j4 = i + 1;
        byte0 = abyte0[i];
        if (byte0 != 61)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        eof = true;
        if (!eof || modulus < 2) goto _L1; else goto _L3
_L3:
        ensureBufferSize(decodeSize);
        int k4;
        byte abyte15[];
        int l4;
        byte abyte16[];
        int i5;
        byte abyte17[];
        int j5;
        byte abyte18[];
        int k5;
        byte abyte19[];
        int l5;
        switch (modulus)
        {
        default:
            return;

        case 2: // '\002'
            byte abyte14[] = buffer;
            int i4 = pos;
            pos = i4 + 1;
            abyte14[i4] = (byte)(int)(255L & bitWorkArea >> 2);
            return;

        case 3: // '\003'
            byte abyte13[] = buffer;
            int l3 = pos;
            pos = l3 + 1;
            abyte13[l3] = (byte)(int)(255L & bitWorkArea >> 7);
            return;

        case 4: // '\004'
            bitWorkArea = bitWorkArea >> 4;
            byte abyte11[] = buffer;
            int j3 = pos;
            pos = j3 + 1;
            abyte11[j3] = (byte)(int)(255L & bitWorkArea >> 8);
            byte abyte12[] = buffer;
            int k3 = pos;
            pos = k3 + 1;
            abyte12[k3] = (byte)(int)(255L & bitWorkArea);
            return;

        case 5: // '\005'
            bitWorkArea = bitWorkArea >> 1;
            byte abyte8[] = buffer;
            int k2 = pos;
            pos = k2 + 1;
            abyte8[k2] = (byte)(int)(255L & bitWorkArea >> 16);
            byte abyte9[] = buffer;
            int l2 = pos;
            pos = l2 + 1;
            abyte9[l2] = (byte)(int)(255L & bitWorkArea >> 8);
            byte abyte10[] = buffer;
            int i3 = pos;
            pos = i3 + 1;
            abyte10[i3] = (byte)(int)(255L & bitWorkArea);
            return;

        case 6: // '\006'
            bitWorkArea = bitWorkArea >> 6;
            byte abyte5[] = buffer;
            int l1 = pos;
            pos = l1 + 1;
            abyte5[l1] = (byte)(int)(255L & bitWorkArea >> 16);
            byte abyte6[] = buffer;
            int i2 = pos;
            pos = i2 + 1;
            abyte6[i2] = (byte)(int)(255L & bitWorkArea >> 8);
            byte abyte7[] = buffer;
            int j2 = pos;
            pos = j2 + 1;
            abyte7[j2] = (byte)(int)(255L & bitWorkArea);
            return;

        case 7: // '\007'
            bitWorkArea = bitWorkArea >> 3;
            break;
        }
        break MISSING_BLOCK_LABEL_796;
        ensureBufferSize(decodeSize);
        if (byte0 >= 0 && byte0 < decodeTable.length)
        {
            k4 = decodeTable[byte0];
            if (k4 >= 0)
            {
                modulus = (1 + modulus) % 8;
                bitWorkArea = (bitWorkArea << 5) + (long)k4;
                if (modulus == 0)
                {
                    abyte15 = buffer;
                    l4 = pos;
                    pos = l4 + 1;
                    abyte15[l4] = (byte)(int)(255L & bitWorkArea >> 32);
                    abyte16 = buffer;
                    i5 = pos;
                    pos = i5 + 1;
                    abyte16[i5] = (byte)(int)(255L & bitWorkArea >> 24);
                    abyte17 = buffer;
                    j5 = pos;
                    pos = j5 + 1;
                    abyte17[j5] = (byte)(int)(255L & bitWorkArea >> 16);
                    abyte18 = buffer;
                    k5 = pos;
                    pos = k5 + 1;
                    abyte18[k5] = (byte)(int)(255L & bitWorkArea >> 8);
                    abyte19 = buffer;
                    l5 = pos;
                    pos = l5 + 1;
                    abyte19[l5] = (byte)(int)(255L & bitWorkArea);
                }
            }
        }
        k++;
        i = j4;
          goto _L4
        byte abyte1[] = buffer;
        int l = pos;
        pos = l + 1;
        abyte1[l] = (byte)(int)(255L & bitWorkArea >> 24);
        byte abyte2[] = buffer;
        int i1 = pos;
        pos = i1 + 1;
        abyte2[i1] = (byte)(int)(255L & bitWorkArea >> 16);
        byte abyte3[] = buffer;
        int j1 = pos;
        pos = j1 + 1;
        abyte3[j1] = (byte)(int)(255L & bitWorkArea >> 8);
        byte abyte4[] = buffer;
        int k1 = pos;
        pos = k1 + 1;
        abyte4[k1] = (byte)(int)(255L & bitWorkArea);
        return;
    }

    void encode(byte abyte0[], int i, int j)
    {
        if (!eof) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (j >= 0) goto _L4; else goto _L3
_L3:
        int j3;
        eof = true;
        if (modulus == 0 && lineLength == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        ensureBufferSize(encodeSize);
        j3 = pos;
        modulus;
        JVM INSTR tableswitch 1 4: default 80
    //                   1 146
    //                   2 391
    //                   3 664
    //                   4 951;
           goto _L5 _L6 _L7 _L8 _L9
_L5:
        currentLinePos = currentLinePos + (pos - j3);
        if (lineLength > 0 && currentLinePos > 0)
        {
            System.arraycopy(lineSeparator, 0, buffer, pos, lineSeparator.length);
            pos = pos + lineSeparator.length;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        byte abyte33[] = buffer;
        int k9 = pos;
        pos = k9 + 1;
        abyte33[k9] = encodeTable[0x1f & (int)(bitWorkArea >> 3)];
        byte abyte34[] = buffer;
        int l9 = pos;
        pos = l9 + 1;
        abyte34[l9] = encodeTable[0x1f & (int)(bitWorkArea << 2)];
        byte abyte35[] = buffer;
        int i10 = pos;
        pos = i10 + 1;
        abyte35[i10] = 61;
        byte abyte36[] = buffer;
        int j10 = pos;
        pos = j10 + 1;
        abyte36[j10] = 61;
        byte abyte37[] = buffer;
        int k10 = pos;
        pos = k10 + 1;
        abyte37[k10] = 61;
        byte abyte38[] = buffer;
        int l10 = pos;
        pos = l10 + 1;
        abyte38[l10] = 61;
        byte abyte39[] = buffer;
        int i11 = pos;
        pos = i11 + 1;
        abyte39[i11] = 61;
        byte abyte40[] = buffer;
        int j11 = pos;
        pos = j11 + 1;
        abyte40[j11] = 61;
        continue; /* Loop/switch isn't completed */
_L7:
        byte abyte25[] = buffer;
        int k7 = pos;
        pos = k7 + 1;
        abyte25[k7] = encodeTable[0x1f & (int)(bitWorkArea >> 11)];
        byte abyte26[] = buffer;
        int l7 = pos;
        pos = l7 + 1;
        abyte26[l7] = encodeTable[0x1f & (int)(bitWorkArea >> 6)];
        byte abyte27[] = buffer;
        int i8 = pos;
        pos = i8 + 1;
        abyte27[i8] = encodeTable[0x1f & (int)(bitWorkArea >> 1)];
        byte abyte28[] = buffer;
        int j8 = pos;
        pos = j8 + 1;
        abyte28[j8] = encodeTable[0x1f & (int)(bitWorkArea << 4)];
        byte abyte29[] = buffer;
        int k8 = pos;
        pos = k8 + 1;
        abyte29[k8] = 61;
        byte abyte30[] = buffer;
        int l8 = pos;
        pos = l8 + 1;
        abyte30[l8] = 61;
        byte abyte31[] = buffer;
        int i9 = pos;
        pos = i9 + 1;
        abyte31[i9] = 61;
        byte abyte32[] = buffer;
        int j9 = pos;
        pos = j9 + 1;
        abyte32[j9] = 61;
        continue; /* Loop/switch isn't completed */
_L8:
        byte abyte17[] = buffer;
        int k5 = pos;
        pos = k5 + 1;
        abyte17[k5] = encodeTable[0x1f & (int)(bitWorkArea >> 19)];
        byte abyte18[] = buffer;
        int l5 = pos;
        pos = l5 + 1;
        abyte18[l5] = encodeTable[0x1f & (int)(bitWorkArea >> 14)];
        byte abyte19[] = buffer;
        int i6 = pos;
        pos = i6 + 1;
        abyte19[i6] = encodeTable[0x1f & (int)(bitWorkArea >> 9)];
        byte abyte20[] = buffer;
        int j6 = pos;
        pos = j6 + 1;
        abyte20[j6] = encodeTable[0x1f & (int)(bitWorkArea >> 4)];
        byte abyte21[] = buffer;
        int k6 = pos;
        pos = k6 + 1;
        abyte21[k6] = encodeTable[0x1f & (int)(bitWorkArea << 1)];
        byte abyte22[] = buffer;
        int l6 = pos;
        pos = l6 + 1;
        abyte22[l6] = 61;
        byte abyte23[] = buffer;
        int i7 = pos;
        pos = i7 + 1;
        abyte23[i7] = 61;
        byte abyte24[] = buffer;
        int j7 = pos;
        pos = j7 + 1;
        abyte24[j7] = 61;
        continue; /* Loop/switch isn't completed */
_L9:
        byte abyte9[] = buffer;
        int k3 = pos;
        pos = k3 + 1;
        abyte9[k3] = encodeTable[0x1f & (int)(bitWorkArea >> 27)];
        byte abyte10[] = buffer;
        int l3 = pos;
        pos = l3 + 1;
        abyte10[l3] = encodeTable[0x1f & (int)(bitWorkArea >> 22)];
        byte abyte11[] = buffer;
        int i4 = pos;
        pos = i4 + 1;
        abyte11[i4] = encodeTable[0x1f & (int)(bitWorkArea >> 17)];
        byte abyte12[] = buffer;
        int j4 = pos;
        pos = j4 + 1;
        abyte12[j4] = encodeTable[0x1f & (int)(bitWorkArea >> 12)];
        byte abyte13[] = buffer;
        int k4 = pos;
        pos = k4 + 1;
        abyte13[k4] = encodeTable[0x1f & (int)(bitWorkArea >> 7)];
        byte abyte14[] = buffer;
        int l4 = pos;
        pos = l4 + 1;
        abyte14[l4] = encodeTable[0x1f & (int)(bitWorkArea >> 2)];
        byte abyte15[] = buffer;
        int i5 = pos;
        pos = i5 + 1;
        abyte15[i5] = encodeTable[0x1f & (int)(bitWorkArea << 3)];
        byte abyte16[] = buffer;
        int j5 = pos;
        pos = j5 + 1;
        abyte16[j5] = 61;
        if (true) goto _L5; else goto _L4
_L4:
        int k = 0;
        while (k < j) 
        {
            ensureBufferSize(encodeSize);
            modulus = (1 + modulus) % 5;
            int l = i + 1;
            int i1 = abyte0[i];
            if (i1 < 0)
            {
                i1 += 256;
            }
            bitWorkArea = (bitWorkArea << 8) + (long)i1;
            if (modulus == 0)
            {
                byte abyte1[] = buffer;
                int j1 = pos;
                pos = j1 + 1;
                abyte1[j1] = encodeTable[0x1f & (int)(bitWorkArea >> 35)];
                byte abyte2[] = buffer;
                int k1 = pos;
                pos = k1 + 1;
                abyte2[k1] = encodeTable[0x1f & (int)(bitWorkArea >> 30)];
                byte abyte3[] = buffer;
                int l1 = pos;
                pos = l1 + 1;
                abyte3[l1] = encodeTable[0x1f & (int)(bitWorkArea >> 25)];
                byte abyte4[] = buffer;
                int i2 = pos;
                pos = i2 + 1;
                abyte4[i2] = encodeTable[0x1f & (int)(bitWorkArea >> 20)];
                byte abyte5[] = buffer;
                int j2 = pos;
                pos = j2 + 1;
                abyte5[j2] = encodeTable[0x1f & (int)(bitWorkArea >> 15)];
                byte abyte6[] = buffer;
                int k2 = pos;
                pos = k2 + 1;
                abyte6[k2] = encodeTable[0x1f & (int)(bitWorkArea >> 10)];
                byte abyte7[] = buffer;
                int l2 = pos;
                pos = l2 + 1;
                abyte7[l2] = encodeTable[0x1f & (int)(bitWorkArea >> 5)];
                byte abyte8[] = buffer;
                int i3 = pos;
                pos = i3 + 1;
                abyte8[i3] = encodeTable[0x1f & (int)bitWorkArea];
                currentLinePos = 8 + currentLinePos;
                if (lineLength > 0 && lineLength <= currentLinePos)
                {
                    System.arraycopy(lineSeparator, 0, buffer, pos, lineSeparator.length);
                    pos = pos + lineSeparator.length;
                    currentLinePos = 0;
                }
            }
            k++;
            i = l;
        }
        if (true) goto _L1; else goto _L10
_L10:
    }

    public boolean isInAlphabet(byte byte0)
    {
        return byte0 >= 0 && byte0 < decodeTable.length && decodeTable[byte0] != -1;
    }

}
