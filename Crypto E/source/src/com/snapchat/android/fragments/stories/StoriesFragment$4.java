// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import com.snapchat.android.discover.ui.DiscoverButtonView;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesFragment

class a
    implements com.snapchat.android.discover.controller.Observer.DiscoverNewContentListener
{

    final StoriesFragment a;

    public void a(boolean flag)
    {
        StoriesFragment.d(a).post(new Runnable(flag) {

            final boolean a;
            final StoriesFragment._cls4 b;

            public void run()
            {
                if (a)
                {
                    StoriesFragment.d(b.a).a();
                    return;
                } else
                {
                    StoriesFragment.d(b.a).b();
                    return;
                }
            }

            
            {
                b = StoriesFragment._cls4.this;
                a = flag;
                super();
            }
        });
    }

    _cls1.a(StoriesFragment storiesfragment)
    {
        a = storiesfragment;
        super();
    }
}
