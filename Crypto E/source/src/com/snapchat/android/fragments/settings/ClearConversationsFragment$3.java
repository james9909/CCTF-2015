// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.widget.ProgressBar;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            ClearConversationsFragment

class a
    implements Runnable
{

    final ClearConversationsFragment a;

    public void run()
    {
        synchronized (ClearConversationsFragment.d(a))
        {
            ClearConversationsFragment.b(a).setVisibility(8);
        }
        return;
        exception;
        listviewadapterlist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    (ClearConversationsFragment clearconversationsfragment)
    {
        a = clearconversationsfragment;
        super();
    }
}
