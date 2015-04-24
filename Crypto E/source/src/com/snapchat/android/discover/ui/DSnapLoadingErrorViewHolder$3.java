// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import com.snapchat.android.discover.model.MediaState;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapLoadingErrorViewHolder

static class 
{

    static final int a[];

    static 
    {
        a = new int[MediaState.values().length];
        try
        {
            a[MediaState.g.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[MediaState.i.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[MediaState.k.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2)
        {
            return;
        }
    }
}
