// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import com.addlive.platform.InitState;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlLiveChatProvider

static class ate
{

    static final int a[];
    static final int b[];

    static 
    {
        b = new int[InitState.values().length];
        try
        {
            b[InitState.INITIALIZED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            b[InitState.INITIALIZING.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            b[InitState.NOT_INITIALIZED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            b[InitState.ERROR.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            b[InitState.REALEASING.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        a = new int[ate.values().length];
        try
        {
            a[ate.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            a[ate.e.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            a[ate.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            a[ate.b.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            a[ate.d.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror9)
        {
            return;
        }
    }
}
