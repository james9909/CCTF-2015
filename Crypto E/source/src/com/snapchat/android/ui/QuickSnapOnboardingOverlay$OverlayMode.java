// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;


// Referenced classes of package com.snapchat.android.ui:
//            QuickSnapOnboardingOverlay

public static final class  extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    private static final d d[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode, s);
    }

    public static [] values()
    {
        return ([])d.clone();
    }

    static 
    {
        a = new <init>("MODE_BLINK", 0);
        b = new <init>("MODE_SOLID", 1);
        c = new <init>("MODE_SOLID_EXPIRE", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        d = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
