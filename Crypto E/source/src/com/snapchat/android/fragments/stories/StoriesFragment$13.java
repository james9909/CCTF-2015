// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;
import com.snapchat.android.util.listview.ListViewUtils;
import in.srain.cube.views.ptr.PtrFrameLayout;
import in.srain.cube.views.ptr.PtrHandler;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesFragment

class a
    implements PtrHandler
{

    final StoriesFragment a;

    public void a(PtrFrameLayout ptrframelayout)
    {
        StoriesFragment.i(a);
    }

    public boolean a(PtrFrameLayout ptrframelayout, View view, View view1)
    {
        return ListViewUtils.a(StoriesFragment.f(a));
    }

    (StoriesFragment storiesfragment)
    {
        a = storiesfragment;
        super();
    }
}
