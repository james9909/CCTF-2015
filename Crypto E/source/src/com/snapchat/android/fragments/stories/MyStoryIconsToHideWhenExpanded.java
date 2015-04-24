// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;
import com.snapchat.android.model.StorySnapExtra;
import com.snapchat.android.model.StorySnapLogbook;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesListItemViewHolder

public class MyStoryIconsToHideWhenExpanded
{

    private View a;
    private View b;
    private View c;
    private View d;
    private StorySnapLogbook e;
    private boolean f;

    public MyStoryIconsToHideWhenExpanded()
    {
    }

    void a(StorySnapLogbook storysnaplogbook, StoriesListItemViewHolder storieslistitemviewholder)
    {
        a = storieslistitemviewholder.n;
        b = storieslistitemviewholder.o;
        d = storieslistitemviewholder.q;
        c = storieslistitemviewholder.p;
        e = storysnaplogbook;
        f = true;
    }

    void a(boolean flag)
    {
        boolean flag1 = true;
        if (a == null || e == null || e.i() == null)
        {
            return;
        }
        StorySnapExtra storysnapextra = e.i();
        boolean flag2;
        View view;
        int i;
        View view1;
        int j;
        View view2;
        int k;
        View view3;
        int l;
        if (storysnapextra.a() > 0 && flag)
        {
            flag2 = flag1;
        } else
        {
            flag2 = false;
        }
        view = a;
        if (flag2)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        view.setVisibility(i);
        view1 = b;
        if (flag2)
        {
            j = 0;
        } else
        {
            j = 8;
        }
        view1.setVisibility(j);
        if (storysnapextra.b() <= 0 || !flag2)
        {
            flag1 = false;
        }
        view2 = c;
        if (flag1)
        {
            k = 0;
        } else
        {
            k = 8;
        }
        view2.setVisibility(k);
        view3 = d;
        l = 0;
        if (!flag1)
        {
            l = 8;
        }
        view3.setVisibility(l);
    }

    boolean a()
    {
        return f;
    }

    void b()
    {
        f = false;
        d = null;
        c = null;
        b = null;
        a = null;
    }
}
