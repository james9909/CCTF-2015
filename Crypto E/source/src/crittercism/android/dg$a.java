// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;


// Referenced classes of package crittercism.android:
//            dg

public static final class  extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    private static final d d[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(crittercism/android/dg$a, s);
    }

    public static [] values()
    {
        return ([])d.clone();
    }

    static 
    {
        a = new <init>("UNINITIALIZED", 0);
        b = new <init>("ON", 1);
        c = new <init>("OFF", 2);
        one aone[] = new <init>[3];
        aone[0] = a;
        aone[1] = b;
        aone[2] = c;
        d = aone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
