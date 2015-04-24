// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;


// Referenced classes of package com.snapchat.android.discover.ui:
//            DiscoverLoadingStatePresenter

public static final class Q extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    public static final f e;
    private static final f f[];

    public static Q valueOf(String s)
    {
        return (Q)Enum.valueOf(com/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState, s);
    }

    public static Q[] values()
    {
        return (Q[])f.clone();
    }

    static 
    {
        a = new <init>("LOADING", 0);
        b = new <init>("LOADED", 1);
        c = new <init>("NETWORK_ERROR", 2);
        d = new <init>("EXTERNAL_STORAGE_UNAVAILABLE", 3);
        e = new <init>("GENERIC_ERROR", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        f = aclone;
    }

    private Q(String s, int i)
    {
        super(s, i);
    }
}
