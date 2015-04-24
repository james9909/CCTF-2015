// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.addfriends;

import android.content.Context;
import android.view.View;
import com.snapchat.android.ui.dialog.OneButtonDialog;
import com.snapchat.android.util.LocalizationUtils;

// Referenced classes of package com.snapchat.android.fragments.addfriends:
//            AddFriendsViewHolder, SharedStorySearchResult

class a extends OneButtonDialog
{

    final a a;

    protected void a()
    {
    }

    ( , Context context, String s)
    {
        a = ;
        super(context, s);
    }

    // Unreferenced inner class com/snapchat/android/fragments/addfriends/AddFriendsViewHolder$5

/* anonymous class */
    class AddFriendsViewHolder._cls5
        implements android.view.View.OnClickListener
    {

        final SharedStorySearchResult a;
        final AddFriendsViewHolder b;

        public void onClick(View view)
        {
            String s = a.d();
            if (s == null)
            {
                Object aobj[] = new Object[1];
                aobj[0] = a.b();
                s = LocalizationUtils.a(0x7f0c0018, aobj);
            }
            (new AddFriendsViewHolder._cls5._cls1(this, AddFriendsViewHolder.d(b), s)).show();
        }

            
            {
                b = addfriendsviewholder;
                a = sharedstorysearchresult;
                super();
            }
    }

}
