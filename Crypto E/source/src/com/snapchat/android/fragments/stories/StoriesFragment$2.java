// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesFragment

class a
    implements android.view.er
{

    final StoriesFragment a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (a.h)
        {
            StoriesFragment.a(a).hideSoftInputFromWindow(a.getView().getWindowToken(), 0);
        }
        return false;
    }

    (StoriesFragment storiesfragment)
    {
        a = storiesfragment;
        super();
    }
}
