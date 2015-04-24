// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.view.MotionEvent;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class <init> extends android.view.rollingGestureDetector
{

    final ChatFragment a;

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        return false;
    }

    private (ChatFragment chatfragment)
    {
        a = chatfragment;
        super();
    }

    a(ChatFragment chatfragment, a a1)
    {
        this(chatfragment);
    }
}
