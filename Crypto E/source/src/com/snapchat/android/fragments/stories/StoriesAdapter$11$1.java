// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import android.content.Context;
import android.view.View;
import com.snapchat.android.api2.HideSharedStoryTask;
import com.snapchat.android.fragments.addfriends.SharedStorySearchResult;
import com.snapchat.android.ui.dialog.TwoButtonDialog;
import com.snapchat.android.util.LocalizationUtils;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesAdapter

class a extends TwoButtonDialog
{

    final Result.a a;

    protected void a()
    {
        (new HideSharedStoryTask(a.a.a(), false)).g();
    }

    protected void b()
    {
    }

    Result(Result result, Context context, String s, String s1, String s2)
    {
        a = result;
        super(context, s, s1, s2);
    }

    // Unreferenced inner class com/snapchat/android/fragments/stories/StoriesAdapter$11

/* anonymous class */
    class StoriesAdapter._cls11
        implements android.view.View.OnClickListener
    {

        final SharedStorySearchResult a;
        final StoriesAdapter b;

        public void onClick(View view)
        {
            String s = a.d();
            if (s == null)
            {
                Object aobj[] = new Object[1];
                aobj[0] = a.b();
                s = LocalizationUtils.a(0x7f0c0018, aobj);
            }
            (new StoriesAdapter._cls11._cls1(this, StoriesAdapter.c(b), s, LocalizationUtils.a(0x7f0c0142, new Object[0]), LocalizationUtils.a(0x7f0c0216, new Object[0]))).show();
        }

            
            {
                b = storiesadapter;
                a = sharedstorysearchresult;
                super();
            }
    }

}