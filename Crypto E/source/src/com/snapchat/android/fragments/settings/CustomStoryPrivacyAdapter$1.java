// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.widget.CompoundButton;
import com.snapchat.android.model.Friend;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            CustomStoryPrivacyAdapter

class a
    implements android.widget.geListener
{

    final Friend a;
    final CustomStoryPrivacyAdapter b;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (flag)
        {
            CustomStoryPrivacyAdapter.a(b).b(a);
            return;
        } else
        {
            CustomStoryPrivacyAdapter.a(b).c(a);
            return;
        }
    }

    iendCheckedCallback(CustomStoryPrivacyAdapter customstoryprivacyadapter, Friend friend)
    {
        b = customstoryprivacyadapter;
        a = friend;
        super();
    }
}
