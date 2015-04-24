// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;


// Referenced classes of package crittercism.android:
//            bw

public final class bi extends Enum
{

    public static final bi a;
    public static final bi b;
    public static final bi c;
    public static final bi d;
    public static final bi e;
    public static final bi f;
    public static final bi g;
    public static final bi h;
    private static final bi p[];
    private String i;
    private int j;
    private int k;
    private bj.a l;
    private bw m;
    private String n;
    private String o;

    private bi(String s, int i1, String s1, int j1, int k1, bj.a a1, bw bw, 
            String s2, String s3)
    {
        super(s, i1);
        i = s1;
        j = j1;
        k = k1;
        l = a1;
        m = bw;
        n = s2;
        o = s3;
    }

    public static bi valueOf(String s)
    {
        return (bi)Enum.valueOf(crittercism/android/bi, s);
    }

    public static bi[] values()
    {
        return (bi[])p.clone();
    }

    public final String a()
    {
        return i;
    }

    public final int b()
    {
        return j;
    }

    public final bj.a c()
    {
        return l;
    }

    public final bw d()
    {
        return m;
    }

    public final String e()
    {
        return n;
    }

    public final int f()
    {
        return k;
    }

    public final String g()
    {
        return o;
    }

    static 
    {
        a = new bi("APP_LOADS", 0, "app_loads", 10, 0x7fffffff, new bj.a(0), new bp.a(), "/android_v2/handle_app_loads", "app_loads");
        b = new bi("HAND_EXCS", 1, "exceptions", 5, 50, new bj.a(0), new bp.a(), "/android_v2/handle_exceptions", "exceptions");
        c = new bi("INTERNAL_EXCS", 2, "internal_excs", 3, 3, new bj.a(0), new bp.a(), "/android_v2/handle_exceptions", "exceptions");
        d = new bi("NDK_CRASHES", 3, "ndk_crashes", 5, 0x7fffffff, new bj.a(0), new bp.a(), "/android_v2/handle_ndk_crashes", "crashes");
        e = new bi("SDK_CRASHES", 4, "sdk_crashes", 5, 0x7fffffff, new bj.a(0), new bp.a(), "/android_v2/handle_crashes", "crashes");
        f = new bi("CURR_BCS", 5, "current_bcs", 50, 0x7fffffff, new bj.a(1), new bo.a(), null, null);
        g = new bi("NW_BCS", 6, "network_bcs", 10, 0x7fffffff, new bj.a(0), new bo.a(), null, null);
        h = new bi("PREV_BCS", 7, "previous_bcs", 50, 0x7fffffff, new bj.a(0), new bo.a(), null, null);
        bi abi[] = new bi[8];
        abi[0] = a;
        abi[1] = b;
        abi[2] = c;
        abi[3] = d;
        abi[4] = e;
        abi[5] = f;
        abi[6] = g;
        abi[7] = h;
        p = abi;
    }
}
