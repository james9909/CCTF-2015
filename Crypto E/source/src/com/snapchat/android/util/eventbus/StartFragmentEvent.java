// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.snapchat.android.util.fragment.SnapchatFragment;

public class StartFragmentEvent
{

    public SnapchatFragment a;
    public String b;
    public String c;

    public StartFragmentEvent(SnapchatFragment snapchatfragment)
    {
        this(snapchatfragment, null, null);
    }

    public StartFragmentEvent(SnapchatFragment snapchatfragment, String s, String s1)
    {
        a = snapchatfragment;
        b = s;
        c = s1;
    }
}
