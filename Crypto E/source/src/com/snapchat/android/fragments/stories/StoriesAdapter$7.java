// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.snapchat.android.model.StorySnapLogbook;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter

class a
    implements android.view.ner
{

    final StorySnapLogbook a;
    final StoriesAdapter b;

    public void onClick(View view)
    {
        StoriesAdapter.b(b).hideSoftInputFromWindow(view.getWindowToken(), 0);
        StoriesAdapter.a(b).a(a);
    }

    oriesAdapterInterface(StoriesAdapter storiesadapter, StorySnapLogbook storysnaplogbook)
    {
        b = storiesadapter;
        a = storysnaplogbook;
        super();
    }
}
