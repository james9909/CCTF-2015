// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;


public final class CipherSuite extends Enum
{

    public static final CipherSuite A;
    public static final CipherSuite B;
    public static final CipherSuite C;
    public static final CipherSuite D;
    public static final CipherSuite E;
    public static final CipherSuite F;
    public static final CipherSuite G;
    public static final CipherSuite H;
    public static final CipherSuite I;
    public static final CipherSuite J;
    public static final CipherSuite K;
    public static final CipherSuite L;
    public static final CipherSuite M;
    public static final CipherSuite N;
    public static final CipherSuite O;
    public static final CipherSuite P;
    public static final CipherSuite Q;
    public static final CipherSuite R;
    public static final CipherSuite S;
    public static final CipherSuite T;
    public static final CipherSuite U;
    public static final CipherSuite V;
    public static final CipherSuite W;
    public static final CipherSuite X;
    public static final CipherSuite Y;
    public static final CipherSuite Z;
    public static final CipherSuite a;
    public static final CipherSuite aA;
    public static final CipherSuite aB;
    public static final CipherSuite aC;
    public static final CipherSuite aD;
    public static final CipherSuite aE;
    public static final CipherSuite aF;
    public static final CipherSuite aG;
    public static final CipherSuite aH;
    public static final CipherSuite aI;
    public static final CipherSuite aJ;
    public static final CipherSuite aK;
    public static final CipherSuite aL;
    public static final CipherSuite aM;
    public static final CipherSuite aN;
    public static final CipherSuite aO;
    public static final CipherSuite aP;
    public static final CipherSuite aQ;
    public static final CipherSuite aR;
    private static final CipherSuite aT[];
    public static final CipherSuite aa;
    public static final CipherSuite ab;
    public static final CipherSuite ac;
    public static final CipherSuite ad;
    public static final CipherSuite ae;
    public static final CipherSuite af;
    public static final CipherSuite ag;
    public static final CipherSuite ah;
    public static final CipherSuite ai;
    public static final CipherSuite aj;
    public static final CipherSuite ak;
    public static final CipherSuite al;
    public static final CipherSuite am;
    public static final CipherSuite an;
    public static final CipherSuite ao;
    public static final CipherSuite ap;
    public static final CipherSuite aq;
    public static final CipherSuite ar;
    public static final CipherSuite as;
    public static final CipherSuite at;
    public static final CipherSuite au;
    public static final CipherSuite av;
    public static final CipherSuite aw;
    public static final CipherSuite ax;
    public static final CipherSuite ay;
    public static final CipherSuite az;
    public static final CipherSuite b;
    public static final CipherSuite c;
    public static final CipherSuite d;
    public static final CipherSuite e;
    public static final CipherSuite f;
    public static final CipherSuite g;
    public static final CipherSuite h;
    public static final CipherSuite i;
    public static final CipherSuite j;
    public static final CipherSuite k;
    public static final CipherSuite l;
    public static final CipherSuite m;
    public static final CipherSuite n;
    public static final CipherSuite o;
    public static final CipherSuite p;
    public static final CipherSuite q;
    public static final CipherSuite r;
    public static final CipherSuite s;
    public static final CipherSuite t;
    public static final CipherSuite u;
    public static final CipherSuite v;
    public static final CipherSuite w;
    public static final CipherSuite x;
    public static final CipherSuite y;
    public static final CipherSuite z;
    final String aS;

    private CipherSuite(String s1, int i1, String s2, int j1, int k1, int l1, int i2)
    {
        super(s1, i1);
        aS = s2;
    }

    static CipherSuite a(String s1)
    {
        if (s1.startsWith("SSL_"))
        {
            return valueOf((new StringBuilder()).append("TLS_").append(s1.substring(4)).toString());
        } else
        {
            return valueOf(s1);
        }
    }

    public static CipherSuite valueOf(String s1)
    {
        return (CipherSuite)Enum.valueOf(com/squareup/okhttp/CipherSuite, s1);
    }

    public static CipherSuite[] values()
    {
        return (CipherSuite[])aT.clone();
    }

    static 
    {
        a = new CipherSuite("TLS_RSA_WITH_NULL_MD5", 0, "SSL_RSA_WITH_NULL_MD5", 1, 5246, 6, 10);
        b = new CipherSuite("TLS_RSA_WITH_NULL_SHA", 1, "SSL_RSA_WITH_NULL_SHA", 2, 5246, 6, 10);
        c = new CipherSuite("TLS_RSA_EXPORT_WITH_RC4_40_MD5", 2, "SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3, 4346, 6, 10);
        d = new CipherSuite("TLS_RSA_WITH_RC4_128_MD5", 3, "SSL_RSA_WITH_RC4_128_MD5", 4, 5246, 6, 10);
        e = new CipherSuite("TLS_RSA_WITH_RC4_128_SHA", 4, "SSL_RSA_WITH_RC4_128_SHA", 5, 5246, 6, 10);
        f = new CipherSuite("TLS_RSA_EXPORT_WITH_DES40_CBC_SHA", 5, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8, 4346, 6, 10);
        g = new CipherSuite("TLS_RSA_WITH_DES_CBC_SHA", 6, "SSL_RSA_WITH_DES_CBC_SHA", 9, 5469, 6, 10);
        h = new CipherSuite("TLS_RSA_WITH_3DES_EDE_CBC_SHA", 7, "SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10, 5246, 6, 10);
        i = new CipherSuite("TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 8, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17, 4346, 6, 10);
        j = new CipherSuite("TLS_DHE_DSS_WITH_DES_CBC_SHA", 9, "SSL_DHE_DSS_WITH_DES_CBC_SHA", 18, 5469, 6, 10);
        k = new CipherSuite("TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 10, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19, 5246, 6, 10);
        l = new CipherSuite("TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 11, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20, 4346, 6, 10);
        m = new CipherSuite("TLS_DHE_RSA_WITH_DES_CBC_SHA", 12, "SSL_DHE_RSA_WITH_DES_CBC_SHA", 21, 5469, 6, 10);
        n = new CipherSuite("TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 13, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22, 5246, 6, 10);
        o = new CipherSuite("TLS_DH_anon_EXPORT_WITH_RC4_40_MD5", 14, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23, 4346, 6, 10);
        p = new CipherSuite("TLS_DH_anon_WITH_RC4_128_MD5", 15, "SSL_DH_anon_WITH_RC4_128_MD5", 24, 5246, 6, 10);
        q = new CipherSuite("TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 16, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25, 4346, 6, 10);
        r = new CipherSuite("TLS_DH_anon_WITH_DES_CBC_SHA", 17, "SSL_DH_anon_WITH_DES_CBC_SHA", 26, 5469, 6, 10);
        s = new CipherSuite("TLS_DH_anon_WITH_3DES_EDE_CBC_SHA", 18, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27, 5246, 6, 10);
        t = new CipherSuite("TLS_KRB5_WITH_DES_CBC_SHA", 19, "TLS_KRB5_WITH_DES_CBC_SHA", 30, 2712, 6, 0x7fffffff);
        u = new CipherSuite("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 20, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31, 2712, 6, 0x7fffffff);
        v = new CipherSuite("TLS_KRB5_WITH_RC4_128_SHA", 21, "TLS_KRB5_WITH_RC4_128_SHA", 32, 2712, 6, 0x7fffffff);
        w = new CipherSuite("TLS_KRB5_WITH_DES_CBC_MD5", 22, "TLS_KRB5_WITH_DES_CBC_MD5", 34, 2712, 6, 0x7fffffff);
        x = new CipherSuite("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 23, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35, 2712, 6, 0x7fffffff);
        y = new CipherSuite("TLS_KRB5_WITH_RC4_128_MD5", 24, "TLS_KRB5_WITH_RC4_128_MD5", 36, 2712, 6, 0x7fffffff);
        z = new CipherSuite("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 25, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38, 2712, 6, 0x7fffffff);
        A = new CipherSuite("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 26, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40, 2712, 6, 0x7fffffff);
        B = new CipherSuite("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 27, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41, 2712, 6, 0x7fffffff);
        C = new CipherSuite("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 28, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43, 2712, 6, 0x7fffffff);
        D = new CipherSuite("TLS_RSA_WITH_AES_128_CBC_SHA", 29, "TLS_RSA_WITH_AES_128_CBC_SHA", 47, 5246, 6, 10);
        E = new CipherSuite("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 30, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50, 5246, 6, 10);
        F = new CipherSuite("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 31, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51, 5246, 6, 10);
        G = new CipherSuite("TLS_DH_anon_WITH_AES_128_CBC_SHA", 32, "TLS_DH_anon_WITH_AES_128_CBC_SHA", 52, 5246, 6, 10);
        H = new CipherSuite("TLS_RSA_WITH_AES_256_CBC_SHA", 33, "TLS_RSA_WITH_AES_256_CBC_SHA", 53, 5246, 6, 10);
        I = new CipherSuite("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 34, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56, 5246, 6, 10);
        J = new CipherSuite("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 35, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57, 5246, 6, 10);
        K = new CipherSuite("TLS_DH_anon_WITH_AES_256_CBC_SHA", 36, "TLS_DH_anon_WITH_AES_256_CBC_SHA", 58, 5246, 6, 10);
        L = new CipherSuite("TLS_RSA_WITH_NULL_SHA256", 37, "TLS_RSA_WITH_NULL_SHA256", 59, 5246, 7, 21);
        M = new CipherSuite("TLS_RSA_WITH_AES_128_CBC_SHA256", 38, "TLS_RSA_WITH_AES_128_CBC_SHA256", 60, 5246, 7, 21);
        N = new CipherSuite("TLS_RSA_WITH_AES_256_CBC_SHA256", 39, "TLS_RSA_WITH_AES_256_CBC_SHA256", 61, 5246, 7, 21);
        O = new CipherSuite("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 40, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64, 5246, 7, 21);
        P = new CipherSuite("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 41, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103, 5246, 7, 21);
        Q = new CipherSuite("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 42, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106, 5246, 7, 21);
        R = new CipherSuite("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 43, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107, 5246, 7, 21);
        S = new CipherSuite("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 44, "TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108, 5246, 7, 21);
        T = new CipherSuite("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 45, "TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109, 5246, 7, 21);
        U = new CipherSuite("TLS_RSA_WITH_AES_128_GCM_SHA256", 46, "TLS_RSA_WITH_AES_128_GCM_SHA256", 156, 5288, 8, 21);
        V = new CipherSuite("TLS_RSA_WITH_AES_256_GCM_SHA384", 47, "TLS_RSA_WITH_AES_256_GCM_SHA384", 157, 5288, 8, 21);
        W = new CipherSuite("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 48, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158, 5288, 8, 21);
        X = new CipherSuite("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 49, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159, 5288, 8, 21);
        Y = new CipherSuite("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 50, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162, 5288, 8, 21);
        Z = new CipherSuite("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 51, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163, 5288, 8, 21);
        aa = new CipherSuite("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 52, "TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166, 5288, 8, 21);
        ab = new CipherSuite("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 53, "TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167, 5288, 8, 21);
        ac = new CipherSuite("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 54, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255, 5746, 6, 14);
        ad = new CipherSuite("TLS_ECDH_ECDSA_WITH_NULL_SHA", 55, "TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153, 4492, 7, 14);
        ae = new CipherSuite("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 56, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154, 4492, 7, 14);
        af = new CipherSuite("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 57, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155, 4492, 7, 14);
        ag = new CipherSuite("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 58, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156, 4492, 7, 14);
        ah = new CipherSuite("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 59, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157, 4492, 7, 14);
        ai = new CipherSuite("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 60, "TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158, 4492, 7, 14);
        aj = new CipherSuite("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 61, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159, 4492, 7, 14);
        ak = new CipherSuite("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 62, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160, 4492, 7, 14);
        al = new CipherSuite("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 63, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161, 4492, 7, 14);
        am = new CipherSuite("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 64, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162, 4492, 7, 14);
        an = new CipherSuite("TLS_ECDH_RSA_WITH_NULL_SHA", 65, "TLS_ECDH_RSA_WITH_NULL_SHA", 49163, 4492, 7, 14);
        ao = new CipherSuite("TLS_ECDH_RSA_WITH_RC4_128_SHA", 66, "TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164, 4492, 7, 14);
        ap = new CipherSuite("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 67, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165, 4492, 7, 14);
        aq = new CipherSuite("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 68, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166, 4492, 7, 14);
        ar = new CipherSuite("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 69, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167, 4492, 7, 14);
        as = new CipherSuite("TLS_ECDHE_RSA_WITH_NULL_SHA", 70, "TLS_ECDHE_RSA_WITH_NULL_SHA", 49168, 4492, 7, 14);
        at = new CipherSuite("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 71, "TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169, 4492, 7, 14);
        au = new CipherSuite("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 72, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170, 4492, 7, 14);
        av = new CipherSuite("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 73, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171, 4492, 7, 14);
        aw = new CipherSuite("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 74, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172, 4492, 7, 14);
        ax = new CipherSuite("TLS_ECDH_anon_WITH_NULL_SHA", 75, "TLS_ECDH_anon_WITH_NULL_SHA", 49173, 4492, 7, 14);
        ay = new CipherSuite("TLS_ECDH_anon_WITH_RC4_128_SHA", 76, "TLS_ECDH_anon_WITH_RC4_128_SHA", 49174, 4492, 7, 14);
        az = new CipherSuite("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 77, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175, 4492, 7, 14);
        aA = new CipherSuite("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 78, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176, 4492, 7, 14);
        aB = new CipherSuite("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 79, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177, 4492, 7, 14);
        aC = new CipherSuite("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 80, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187, 5289, 7, 21);
        aD = new CipherSuite("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 81, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188, 5289, 7, 21);
        aE = new CipherSuite("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 82, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189, 5289, 7, 21);
        aF = new CipherSuite("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 83, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190, 5289, 7, 21);
        aG = new CipherSuite("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 84, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191, 5289, 7, 21);
        aH = new CipherSuite("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 85, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192, 5289, 7, 21);
        aI = new CipherSuite("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 86, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193, 5289, 7, 21);
        aJ = new CipherSuite("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 87, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194, 5289, 7, 21);
        aK = new CipherSuite("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 88, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195, 5289, 8, 21);
        aL = new CipherSuite("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 89, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196, 5289, 8, 21);
        aM = new CipherSuite("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 90, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197, 5289, 8, 21);
        aN = new CipherSuite("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 91, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198, 5289, 8, 21);
        aO = new CipherSuite("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 92, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199, 5289, 8, 21);
        aP = new CipherSuite("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 93, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200, 5289, 8, 21);
        aQ = new CipherSuite("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 94, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201, 5289, 8, 21);
        aR = new CipherSuite("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 95, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202, 5289, 8, 21);
        CipherSuite aciphersuite[] = new CipherSuite[96];
        aciphersuite[0] = a;
        aciphersuite[1] = b;
        aciphersuite[2] = c;
        aciphersuite[3] = d;
        aciphersuite[4] = e;
        aciphersuite[5] = f;
        aciphersuite[6] = g;
        aciphersuite[7] = h;
        aciphersuite[8] = i;
        aciphersuite[9] = j;
        aciphersuite[10] = k;
        aciphersuite[11] = l;
        aciphersuite[12] = m;
        aciphersuite[13] = n;
        aciphersuite[14] = o;
        aciphersuite[15] = p;
        aciphersuite[16] = q;
        aciphersuite[17] = r;
        aciphersuite[18] = s;
        aciphersuite[19] = t;
        aciphersuite[20] = u;
        aciphersuite[21] = v;
        aciphersuite[22] = w;
        aciphersuite[23] = x;
        aciphersuite[24] = y;
        aciphersuite[25] = z;
        aciphersuite[26] = A;
        aciphersuite[27] = B;
        aciphersuite[28] = C;
        aciphersuite[29] = D;
        aciphersuite[30] = E;
        aciphersuite[31] = F;
        aciphersuite[32] = G;
        aciphersuite[33] = H;
        aciphersuite[34] = I;
        aciphersuite[35] = J;
        aciphersuite[36] = K;
        aciphersuite[37] = L;
        aciphersuite[38] = M;
        aciphersuite[39] = N;
        aciphersuite[40] = O;
        aciphersuite[41] = P;
        aciphersuite[42] = Q;
        aciphersuite[43] = R;
        aciphersuite[44] = S;
        aciphersuite[45] = T;
        aciphersuite[46] = U;
        aciphersuite[47] = V;
        aciphersuite[48] = W;
        aciphersuite[49] = X;
        aciphersuite[50] = Y;
        aciphersuite[51] = Z;
        aciphersuite[52] = aa;
        aciphersuite[53] = ab;
        aciphersuite[54] = ac;
        aciphersuite[55] = ad;
        aciphersuite[56] = ae;
        aciphersuite[57] = af;
        aciphersuite[58] = ag;
        aciphersuite[59] = ah;
        aciphersuite[60] = ai;
        aciphersuite[61] = aj;
        aciphersuite[62] = ak;
        aciphersuite[63] = al;
        aciphersuite[64] = am;
        aciphersuite[65] = an;
        aciphersuite[66] = ao;
        aciphersuite[67] = ap;
        aciphersuite[68] = aq;
        aciphersuite[69] = ar;
        aciphersuite[70] = as;
        aciphersuite[71] = at;
        aciphersuite[72] = au;
        aciphersuite[73] = av;
        aciphersuite[74] = aw;
        aciphersuite[75] = ax;
        aciphersuite[76] = ay;
        aciphersuite[77] = az;
        aciphersuite[78] = aA;
        aciphersuite[79] = aB;
        aciphersuite[80] = aC;
        aciphersuite[81] = aD;
        aciphersuite[82] = aE;
        aciphersuite[83] = aF;
        aciphersuite[84] = aG;
        aciphersuite[85] = aH;
        aciphersuite[86] = aI;
        aciphersuite[87] = aJ;
        aciphersuite[88] = aK;
        aciphersuite[89] = aL;
        aciphersuite[90] = aM;
        aciphersuite[91] = aN;
        aciphersuite[92] = aO;
        aciphersuite[93] = aP;
        aciphersuite[94] = aQ;
        aciphersuite[95] = aR;
        aT = aciphersuite;
    }
}
