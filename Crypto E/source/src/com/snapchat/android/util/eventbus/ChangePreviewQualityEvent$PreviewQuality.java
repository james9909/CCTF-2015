// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


// Referenced classes of package com.snapchat.android.util.eventbus:
//            ChangePreviewQualityEvent

public static final class Q extends Enum
{

    public static final c a;
    public static final c b;
    private static final c c[];

    public static Q valueOf(String s)
    {
        return (Q)Enum.valueOf(com/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality, s);
    }

    public static Q[] values()
    {
        return (Q[])c.clone();
    }

    static 
    {
        a = new <init>("LOW", 0);
        b = new <init>("HIGH", 1);
        y_3B_.clone aclone[] = new <init>[2];
        aclone[0] = a;
        aclone[1] = b;
        c = aclone;
    }

    private Q(String s, int i)
    {
        super(s, i);
    }
}
