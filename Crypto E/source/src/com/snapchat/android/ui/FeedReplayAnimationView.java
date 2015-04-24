// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.util.ListUtils;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.ui:
//            FrivolousAnimationView

public class FeedReplayAnimationView extends FrivolousAnimationView
{

    protected static int a = 0x7f020135;
    protected static int b = 0x7f020033;
    private static final String c = com/snapchat/android/ui/FeedReplayAnimationView.getSimpleName();

    public FeedReplayAnimationView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void setDisplayedIcon(Snap snap)
    {
        setDisplayedIcon(ListUtils.a(snap), null);
    }

    public void setDisplayedIcon(List list, ChatConversation chatconversation)
    {
        setBackgroundResource(0);
        a();
        if (list != null && !list.isEmpty()) goto _L2; else goto _L1
_L1:
        com.snapchat.android.model.chat.ChatFeedItem.FeedIconResource feediconresource;
        if (chatconversation != null && chatconversation.aC())
        {
            feediconresource = new com.snapchat.android.model.chat.ChatFeedItem.FeedIconResource(a);
        } else
        {
            feediconresource = new com.snapchat.android.model.chat.ChatFeedItem.FeedIconResource(b);
        }
_L4:
        if (feediconresource != null)
        {
            if (feediconresource.frivolousAnimationTime > 0L)
            {
                a(feediconresource.frivolousAnimationTime);
            }
            setIconResources(feediconresource.startResource, feediconresource.endResource);
            return;
        }
        break; /* Loop/switch isn't completed */
_L2:
        int i = list.size();
        feediconresource = null;
        if (i == 1)
        {
            feediconresource = ((ChatFeedItem)list.get(0)).a(this, chatconversation);
        }
        if (true) goto _L4; else goto _L3
_L3:
        AnimationDrawable animationdrawable = new AnimationDrawable();
        animationdrawable.setOneShot(false);
        Resources resources = getResources();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            com.snapchat.android.model.chat.ChatFeedItem.FeedIconResource feediconresource1 = ((ChatFeedItem)iterator.next()).a(this, chatconversation);
            if (feediconresource1 != null)
            {
                animationdrawable.addFrame(resources.getDrawable(feediconresource1.startResource), 1000);
            }
        } while (true);
        setBackgroundDrawable(animationdrawable);
        animationdrawable.start();
        setIconResources(0, 0);
        return;
    }

}
