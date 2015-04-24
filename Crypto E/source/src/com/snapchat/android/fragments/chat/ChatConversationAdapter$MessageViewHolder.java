// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.FeedReplayAnimationView;
import com.snapchat.android.ui.FixTouchConsumeTextView;
import com.snapchat.android.ui.ImageResourceView;
import com.snapchat.android.ui.TextureVideoView;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatConversationAdapter

public static class 
{

    public int A;
    public int B;
    public boolean C;
    TextView D;
    public View E;
    public ChatFeedItem a;
    View b;
    View c;
    public ViewGroup d;
    FixTouchConsumeTextView e;
    View f;
    LinearLayout g;
    TextView h;
    TextView i;
    TextView j;
    TextView k;
    View l;
    FeedReplayAnimationView m;
    ProgressBar n;
    TextureVideoView o;
    View p;
    TextView q;
    TextView r;
    TextView s;
    ImageView t;
    ImageView u;
    ImageView v;
    ImageView w;
    ProgressBar x;
    public ImageResourceView y;
    public ViewGroup z;

    public void a()
    {
        if (e != null)
        {
            e.setLinkTextColor(0xff0000ff);
        }
        b();
        if (n != null)
        {
            n.setVisibility(8);
        }
        if (x != null)
        {
            x.setVisibility(8);
        }
    }

    public void a(float f1)
    {
        c.setTranslationX(f1);
        if (j != null)
        {
            j.setTranslationX(f1);
        }
    }

    public void b()
    {
        if (z != null)
        {
            android.widget.er.MessageViewHolder messageviewholder = (android.widget.er.MessageViewHolder.z)z.getLayoutParams();
            if (messageviewholder.z != -1 || messageviewholder.z != -2)
            {
                messageviewholder.z = -1;
                messageviewholder.z = -2;
                messageviewholder.z = 0;
                z.setLayoutParams(messageviewholder);
            }
            if (z.getTop() != 0)
            {
                z.setTop(0);
            }
            A = 0;
            B = 0;
            C = false;
        }
    }

    public ()
    {
    }
}
