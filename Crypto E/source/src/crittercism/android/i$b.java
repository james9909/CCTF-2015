// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;


// Referenced classes of package crittercism.android:
//            i

public static final class  extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    private static final d d[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(crittercism/android/i$b, s);
    }

    public static [] values()
    {
        return ([])d.clone();
    }

    static 
    {
        a = new <init>("SOCKET_MONITOR", 0);
        b = new <init>("STREAM_MONITOR", 1);
        c = new <init>("NONE", 2);
        lone alone[] = new <init>[3];
        alone[0] = a;
        alone[1] = b;
        alone[2] = c;
        d = alone;
    }

    private (String s, int j)
    {
        super(s, j);
    }
}
