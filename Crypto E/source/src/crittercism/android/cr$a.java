// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;


// Referenced classes of package crittercism.android:
//            cr

public static final class  extends Enum
{

    public static final c a;
    public static final c b;
    private static final c c[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(crittercism/android/cr$a, s);
    }

    public static [] values()
    {
        return ([])c.clone();
    }

    static 
    {
        a = new <init>("STDOUT", 0);
        b = new <init>("STDERR", 1);
        one aone[] = new <init>[2];
        aone[0] = a;
        aone[1] = b;
        c = aone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
