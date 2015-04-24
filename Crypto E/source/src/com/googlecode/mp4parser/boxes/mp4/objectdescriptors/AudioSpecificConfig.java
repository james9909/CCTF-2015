// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.Hex;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.objectdescriptors:
//            BaseDescriptor, BitReaderBuffer

public class AudioSpecificConfig extends BaseDescriptor
{

    public static Map b;
    public static Map c;
    int A;
    int B;
    int C;
    boolean D;
    int E;
    int F;
    int G;
    int H;
    int I;
    int J;
    int K;
    int L;
    int M;
    int N;
    int O;
    int P;
    int Q;
    int R;
    boolean S;
    byte a[];
    int d;
    int e;
    int f;
    int g;
    int h;
    int i;
    int j;
    int k;
    int l;
    int m;
    int n;
    int o;
    int p;
    int q;
    int r;
    int s;
    int t;
    int u;
    int v;
    int w;
    int x;
    int y;
    int z;

    public AudioSpecificConfig()
    {
    }

    private int a(BitReaderBuffer bitreaderbuffer)
    {
        int i1 = bitreaderbuffer.a(5);
        if (i1 == 31)
        {
            i1 = 32 + bitreaderbuffer.a(6);
        }
        return i1;
    }

    private void a(int i1, int j1, int k1, BitReaderBuffer bitreaderbuffer)
    {
        s = bitreaderbuffer.a(1);
        t = bitreaderbuffer.a(1);
        if (t == 1)
        {
            u = bitreaderbuffer.a(14);
        }
        v = bitreaderbuffer.a(1);
        if (j1 == 0)
        {
            throw new UnsupportedOperationException("can't parse program_config_element yet");
        }
        if (k1 == 6 || k1 == 20)
        {
            w = bitreaderbuffer.a(3);
        }
        if (v == 1)
        {
            if (k1 == 22)
            {
                x = bitreaderbuffer.a(5);
                y = bitreaderbuffer.a(11);
            }
            if (k1 == 17 || k1 == 19 || k1 == 20 || k1 == 23)
            {
                z = bitreaderbuffer.a(1);
                A = bitreaderbuffer.a(1);
                B = bitreaderbuffer.a(1);
            }
            C = bitreaderbuffer.a(1);
        }
        D = true;
    }

    private void b(int i1, int j1, int k1, BitReaderBuffer bitreaderbuffer)
    {
        E = bitreaderbuffer.a(1);
        if (E == 1)
        {
            c(i1, j1, k1, bitreaderbuffer);
            return;
        } else
        {
            f(i1, j1, k1, bitreaderbuffer);
            return;
        }
    }

    private void c(int i1, int j1, int k1, BitReaderBuffer bitreaderbuffer)
    {
        F = bitreaderbuffer.a(2);
        if (F != 1)
        {
            d(i1, j1, k1, bitreaderbuffer);
        }
        if (F != 0)
        {
            e(i1, j1, k1, bitreaderbuffer);
        }
        G = bitreaderbuffer.a(1);
        S = true;
    }

    private void d(int i1, int j1, int k1, BitReaderBuffer bitreaderbuffer)
    {
        H = bitreaderbuffer.a(1);
        I = bitreaderbuffer.a(2);
        J = bitreaderbuffer.a(1);
        if (J == 1)
        {
            K = bitreaderbuffer.a(1);
        }
    }

    private void e(int i1, int j1, int k1, BitReaderBuffer bitreaderbuffer)
    {
        L = bitreaderbuffer.a(1);
        M = bitreaderbuffer.a(8);
        N = bitreaderbuffer.a(4);
        O = bitreaderbuffer.a(12);
        P = bitreaderbuffer.a(2);
    }

    private void f(int i1, int j1, int k1, BitReaderBuffer bitreaderbuffer)
    {
        Q = bitreaderbuffer.a(1);
        if (Q == 1)
        {
            R = bitreaderbuffer.a(2);
        }
    }

    public void a(ByteBuffer bytebuffer)
    {
        BitReaderBuffer bitreaderbuffer;
        ByteBuffer bytebuffer1 = bytebuffer.slice();
        bytebuffer1.limit(U);
        bytebuffer.position(bytebuffer.position() + U);
        a = new byte[U];
        bytebuffer1.get(a);
        bytebuffer1.rewind();
        bitreaderbuffer = new BitReaderBuffer(bytebuffer1);
        d = a(bitreaderbuffer);
        e = bitreaderbuffer.a(4);
        if (e == 15)
        {
            f = bitreaderbuffer.a(24);
        }
        g = bitreaderbuffer.a(4);
        if (d == 5 || d == 29)
        {
            h = 5;
            i = 1;
            if (d == 29)
            {
                j = 1;
            }
            k = bitreaderbuffer.a(4);
            if (k == 15)
            {
                l = bitreaderbuffer.a(24);
            }
            d = a(bitreaderbuffer);
            if (d == 22)
            {
                m = bitreaderbuffer.a(4);
            }
        } else
        {
            h = 0;
        }
        d;
        JVM INSTR tableswitch 1 41: default 396
    //                   1 730
    //                   2 730
    //                   3 730
    //                   4 730
    //                   5 396
    //                   6 730
    //                   7 730
    //                   8 751
    //                   9 762
    //                   10 396
    //                   11 396
    //                   12 773
    //                   13 784
    //                   14 784
    //                   15 784
    //                   16 784
    //                   17 730
    //                   18 396
    //                   19 730
    //                   20 730
    //                   21 730
    //                   22 730
    //                   23 730
    //                   24 795
    //                   25 806
    //                   26 817
    //                   27 817
    //                   28 838
    //                   29 396
    //                   30 849
    //                   31 396
    //                   32 870
    //                   33 870
    //                   34 870
    //                   35 881
    //                   36 892
    //                   37 913
    //                   38 913
    //                   39 924
    //                   40 935
    //                   41 935;
           goto _L1 _L2 _L2 _L2 _L2 _L1 _L2 _L2 _L3 _L4 _L1 _L1 _L5 _L6 _L6 _L6 _L6 _L2 _L1 _L2 _L2 _L2 _L2 _L2 _L7 _L8 _L9 _L9 _L10 _L1 _L11 _L1 _L12 _L12 _L12 _L13 _L14 _L15 _L15 _L16 _L17 _L17
_L1:
        d;
        JVM INSTR tableswitch 17 39: default 508
    //                   17 946
    //                   18 508
    //                   19 946
    //                   20 946
    //                   21 946
    //                   22 946
    //                   23 946
    //                   24 946
    //                   25 946
    //                   26 946
    //                   27 946
    //                   28 508
    //                   29 508
    //                   30 508
    //                   31 508
    //                   32 508
    //                   33 508
    //                   34 508
    //                   35 508
    //                   36 508
    //                   37 508
    //                   38 508
    //                   39 946;
           goto _L18 _L19 _L18 _L19 _L19 _L19 _L19 _L19 _L19 _L19 _L19 _L19 _L18 _L18 _L18 _L18 _L18 _L18 _L18 _L18 _L18 _L18 _L18 _L19
_L18:
        if (h != 5 && bitreaderbuffer.a() >= 16)
        {
            r = bitreaderbuffer.a(11);
            if (r == 695)
            {
                h = a(bitreaderbuffer);
                if (h == 5)
                {
                    i = bitreaderbuffer.a(1);
                    if (i == 1)
                    {
                        k = bitreaderbuffer.a(4);
                        if (k == 15)
                        {
                            l = bitreaderbuffer.a(24);
                        }
                        if (bitreaderbuffer.a() >= 12)
                        {
                            r = bitreaderbuffer.a(11);
                            if (r == 1352)
                            {
                                j = bitreaderbuffer.a(1);
                            }
                        }
                    }
                }
                if (h == 22)
                {
                    i = bitreaderbuffer.a(1);
                    if (i == 1)
                    {
                        k = bitreaderbuffer.a(4);
                        if (k == 15)
                        {
                            l = bitreaderbuffer.a(24);
                        }
                    }
                    m = bitreaderbuffer.a(4);
                }
            }
        }
        return;
_L2:
        a(e, g, d, bitreaderbuffer);
        continue; /* Loop/switch isn't completed */
_L3:
        throw new UnsupportedOperationException("can't parse CelpSpecificConfig yet");
_L4:
        throw new UnsupportedOperationException("can't parse HvxcSpecificConfig yet");
_L5:
        throw new UnsupportedOperationException("can't parse TTSSpecificConfig yet");
_L6:
        throw new UnsupportedOperationException("can't parse StructuredAudioSpecificConfig yet");
_L7:
        throw new UnsupportedOperationException("can't parse ErrorResilientCelpSpecificConfig yet");
_L8:
        throw new UnsupportedOperationException("can't parse ErrorResilientHvxcSpecificConfig yet");
_L9:
        b(e, g, d, bitreaderbuffer);
        continue; /* Loop/switch isn't completed */
_L10:
        throw new UnsupportedOperationException("can't parse SSCSpecificConfig yet");
_L11:
        n = bitreaderbuffer.a(1);
        throw new UnsupportedOperationException("can't parse SpatialSpecificConfig yet");
_L12:
        throw new UnsupportedOperationException("can't parse MPEG_1_2_SpecificConfig yet");
_L13:
        throw new UnsupportedOperationException("can't parse DSTSpecificConfig yet");
_L14:
        o = bitreaderbuffer.a(5);
        throw new UnsupportedOperationException("can't parse ALSSpecificConfig yet");
_L15:
        throw new UnsupportedOperationException("can't parse SLSSpecificConfig yet");
_L16:
        throw new UnsupportedOperationException("can't parse ELDSpecificConfig yet");
_L17:
        throw new UnsupportedOperationException("can't parse SymbolicMusicSpecificConfig yet");
_L19:
        p = bitreaderbuffer.a(2);
        if (p == 2 || p == 3)
        {
            throw new UnsupportedOperationException("can't parse ErrorProtectionSpecificConfig yet");
        }
        if (p != 3) goto _L18; else goto _L20
_L20:
        q = bitreaderbuffer.a(1);
        if (q != 0) goto _L18; else goto _L21
_L21:
        throw new RuntimeException("not implemented");
        if (true) goto _L1; else goto _L22
_L22:
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            AudioSpecificConfig audiospecificconfig = (AudioSpecificConfig)obj;
            if (A != audiospecificconfig.A)
            {
                return false;
            }
            if (z != audiospecificconfig.z)
            {
                return false;
            }
            if (B != audiospecificconfig.B)
            {
                return false;
            }
            if (d != audiospecificconfig.d)
            {
                return false;
            }
            if (g != audiospecificconfig.g)
            {
                return false;
            }
            if (u != audiospecificconfig.u)
            {
                return false;
            }
            if (t != audiospecificconfig.t)
            {
                return false;
            }
            if (q != audiospecificconfig.q)
            {
                return false;
            }
            if (p != audiospecificconfig.p)
            {
                return false;
            }
            if (J != audiospecificconfig.J)
            {
                return false;
            }
            if (h != audiospecificconfig.h)
            {
                return false;
            }
            if (m != audiospecificconfig.m)
            {
                return false;
            }
            if (v != audiospecificconfig.v)
            {
                return false;
            }
            if (C != audiospecificconfig.C)
            {
                return false;
            }
            if (l != audiospecificconfig.l)
            {
                return false;
            }
            if (k != audiospecificconfig.k)
            {
                return false;
            }
            if (o != audiospecificconfig.o)
            {
                return false;
            }
            if (s != audiospecificconfig.s)
            {
                return false;
            }
            if (D != audiospecificconfig.D)
            {
                return false;
            }
            if (P != audiospecificconfig.P)
            {
                return false;
            }
            if (Q != audiospecificconfig.Q)
            {
                return false;
            }
            if (R != audiospecificconfig.R)
            {
                return false;
            }
            if (O != audiospecificconfig.O)
            {
                return false;
            }
            if (M != audiospecificconfig.M)
            {
                return false;
            }
            if (L != audiospecificconfig.L)
            {
                return false;
            }
            if (N != audiospecificconfig.N)
            {
                return false;
            }
            if (I != audiospecificconfig.I)
            {
                return false;
            }
            if (H != audiospecificconfig.H)
            {
                return false;
            }
            if (E != audiospecificconfig.E)
            {
                return false;
            }
            if (w != audiospecificconfig.w)
            {
                return false;
            }
            if (y != audiospecificconfig.y)
            {
                return false;
            }
            if (x != audiospecificconfig.x)
            {
                return false;
            }
            if (G != audiospecificconfig.G)
            {
                return false;
            }
            if (F != audiospecificconfig.F)
            {
                return false;
            }
            if (S != audiospecificconfig.S)
            {
                return false;
            }
            if (j != audiospecificconfig.j)
            {
                return false;
            }
            if (n != audiospecificconfig.n)
            {
                return false;
            }
            if (f != audiospecificconfig.f)
            {
                return false;
            }
            if (e != audiospecificconfig.e)
            {
                return false;
            }
            if (i != audiospecificconfig.i)
            {
                return false;
            }
            if (r != audiospecificconfig.r)
            {
                return false;
            }
            if (K != audiospecificconfig.K)
            {
                return false;
            }
            if (!Arrays.equals(a, audiospecificconfig.a))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i1 = 1;
        int j1;
        int k1;
        int l1;
        int i2;
        if (a != null)
        {
            j1 = Arrays.hashCode(a);
        } else
        {
            j1 = 0;
        }
        k1 = 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (j1 * 31 + d) + e) + f) + g) + h) + i) + j) + k) + l) + m) + n) + o) + p) + q) + r) + s) + t) + u) + v) + w) + x) + y) + z) + A) + B) + C);
        if (D)
        {
            l1 = i1;
        } else
        {
            l1 = 0;
        }
        i2 = 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (l1 + k1) + E) + F) + G) + H) + I) + J) + K) + L) + M) + N) + O) + P) + Q) + R);
        if (!S)
        {
            i1 = 0;
        }
        return i2 + i1;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("AudioSpecificConfig");
        stringbuilder.append("{configBytes=").append(Hex.a(a));
        stringbuilder.append(", audioObjectType=").append(d).append(" (").append((String)c.get(Integer.valueOf(d))).append(")");
        stringbuilder.append(", samplingFrequencyIndex=").append(e).append(" (").append(b.get(Integer.valueOf(e))).append(")");
        stringbuilder.append(", samplingFrequency=").append(f);
        stringbuilder.append(", channelConfiguration=").append(g);
        if (h > 0)
        {
            stringbuilder.append(", extensionAudioObjectType=").append(h).append(" (").append((String)c.get(Integer.valueOf(h))).append(")");
            stringbuilder.append(", sbrPresentFlag=").append(i);
            stringbuilder.append(", psPresentFlag=").append(j);
            stringbuilder.append(", extensionSamplingFrequencyIndex=").append(k).append(" (").append(b.get(Integer.valueOf(k))).append(")");
            stringbuilder.append(", extensionSamplingFrequency=").append(l);
            stringbuilder.append(", extensionChannelConfiguration=").append(m);
        }
        stringbuilder.append(", syncExtensionType=").append(r);
        if (D)
        {
            stringbuilder.append(", frameLengthFlag=").append(s);
            stringbuilder.append(", dependsOnCoreCoder=").append(t);
            stringbuilder.append(", coreCoderDelay=").append(u);
            stringbuilder.append(", extensionFlag=").append(v);
            stringbuilder.append(", layerNr=").append(w);
            stringbuilder.append(", numOfSubFrame=").append(x);
            stringbuilder.append(", layer_length=").append(y);
            stringbuilder.append(", aacSectionDataResilienceFlag=").append(z);
            stringbuilder.append(", aacScalefactorDataResilienceFlag=").append(A);
            stringbuilder.append(", aacSpectralDataResilienceFlag=").append(B);
            stringbuilder.append(", extensionFlag3=").append(C);
        }
        if (S)
        {
            stringbuilder.append(", isBaseLayer=").append(E);
            stringbuilder.append(", paraMode=").append(F);
            stringbuilder.append(", paraExtensionFlag=").append(G);
            stringbuilder.append(", hvxcVarMode=").append(H);
            stringbuilder.append(", hvxcRateMode=").append(I);
            stringbuilder.append(", erHvxcExtensionFlag=").append(J);
            stringbuilder.append(", var_ScalableFlag=").append(K);
            stringbuilder.append(", hilnQuantMode=").append(L);
            stringbuilder.append(", hilnMaxNumLine=").append(M);
            stringbuilder.append(", hilnSampleRateCode=").append(N);
            stringbuilder.append(", hilnFrameLength=").append(O);
            stringbuilder.append(", hilnContMode=").append(P);
            stringbuilder.append(", hilnEnhaLayer=").append(Q);
            stringbuilder.append(", hilnEnhaQuantMode=").append(R);
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    static 
    {
        b = new HashMap();
        c = new HashMap();
        b.put(Integer.valueOf(0), Integer.valueOf(0x17700));
        b.put(Integer.valueOf(1), Integer.valueOf(0x15888));
        b.put(Integer.valueOf(2), Integer.valueOf(64000));
        b.put(Integer.valueOf(3), Integer.valueOf(48000));
        b.put(Integer.valueOf(4), Integer.valueOf(44100));
        b.put(Integer.valueOf(5), Integer.valueOf(32000));
        b.put(Integer.valueOf(6), Integer.valueOf(24000));
        b.put(Integer.valueOf(7), Integer.valueOf(22050));
        b.put(Integer.valueOf(8), Integer.valueOf(16000));
        b.put(Integer.valueOf(9), Integer.valueOf(12000));
        b.put(Integer.valueOf(10), Integer.valueOf(11025));
        b.put(Integer.valueOf(11), Integer.valueOf(8000));
        c.put(Integer.valueOf(1), "AAC main");
        c.put(Integer.valueOf(2), "AAC LC");
        c.put(Integer.valueOf(3), "AAC SSR");
        c.put(Integer.valueOf(4), "AAC LTP");
        c.put(Integer.valueOf(5), "SBR");
        c.put(Integer.valueOf(6), "AAC Scalable");
        c.put(Integer.valueOf(7), "TwinVQ");
        c.put(Integer.valueOf(8), "CELP");
        c.put(Integer.valueOf(9), "HVXC");
        c.put(Integer.valueOf(10), "(reserved)");
        c.put(Integer.valueOf(11), "(reserved)");
        c.put(Integer.valueOf(12), "TTSI");
        c.put(Integer.valueOf(13), "Main synthetic");
        c.put(Integer.valueOf(14), "Wavetable synthesis");
        c.put(Integer.valueOf(15), "General MIDI");
        c.put(Integer.valueOf(16), "Algorithmic Synthesis and Audio FX");
        c.put(Integer.valueOf(17), "ER AAC LC");
        c.put(Integer.valueOf(18), "(reserved)");
        c.put(Integer.valueOf(19), "ER AAC LTP");
        c.put(Integer.valueOf(20), "ER AAC Scalable");
        c.put(Integer.valueOf(21), "ER TwinVQ");
        c.put(Integer.valueOf(22), "ER BSAC");
        c.put(Integer.valueOf(23), "ER AAC LD");
        c.put(Integer.valueOf(24), "ER CELP");
        c.put(Integer.valueOf(25), "ER HVXC");
        c.put(Integer.valueOf(26), "ER HILN");
        c.put(Integer.valueOf(27), "ER Parametric");
        c.put(Integer.valueOf(28), "SSC");
        c.put(Integer.valueOf(29), "PS");
        c.put(Integer.valueOf(30), "MPEG Surround");
        c.put(Integer.valueOf(31), "(escape)");
        c.put(Integer.valueOf(32), "Layer-1");
        c.put(Integer.valueOf(33), "Layer-2");
        c.put(Integer.valueOf(34), "Layer-3");
        c.put(Integer.valueOf(35), "DST");
        c.put(Integer.valueOf(36), "ALS");
        c.put(Integer.valueOf(37), "SLS");
        c.put(Integer.valueOf(38), "SLS non-core");
        c.put(Integer.valueOf(39), "ER AAC ELD");
        c.put(Integer.valueOf(40), "SMR Simple");
        c.put(Integer.valueOf(41), "SMR Main");
    }
}
