// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import android.animation.Animator;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.FeedReplayAnimationView;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedAdapter

public static class 
{

    public TextView a;
    public TextView b;
    public ChatConversation c;
    public Animator d;
    public boolean e;
    FrameLayout f;
    ImageView g;
    FeedReplayAnimationView h;
    ProgressBar i;
    TextView j;
    View k;

    public void a()
    {
        a.setGravity(80);
        a.setTranslationY(0.0F);
        b.setAlpha(1.0F);
        b.setVisibility(0);
    }

    public void b()
    {
        a.setGravity(16);
        a.setTranslationY(0.0F);
        b.setVisibility(8);
    }

    public ()
    {
    }
}
