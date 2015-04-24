// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;


// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatConversationAdapter

static class atItemType
{

    static final int a[];
    static final int b[];

    static 
    {
        b = new int[com.snapchat.android.model.nStatus.values().length];
        try
        {
            b[com.snapchat.android.model.nStatus.INITIATED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            b[com.snapchat.android.model.nStatus.WAITING_ON_RECIPIENT.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        a = new int[atItemType.values().length];
        try
        {
            a[atItemType.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[atItemType.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[atItemType.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            a[atItemType.d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            a[atItemType.f.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            a[atItemType.g.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            a[atItemType.e.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            a[atItemType.i.ordinal()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        try
        {
            a[atItemType.h.ordinal()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror10)
        {
            return;
        }
    }
}
