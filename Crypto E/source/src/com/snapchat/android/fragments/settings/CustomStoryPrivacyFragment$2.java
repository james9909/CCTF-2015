// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            CustomStoryPrivacyFragment

class a
    implements android.widget.er
{

    final CustomStoryPrivacyFragment a;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        CheckBox checkbox = (CheckBox)view.findViewById(0x7f0a0169);
        if (checkbox == null)
        {
            return;
        }
        boolean flag;
        if (!checkbox.isChecked())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        checkbox.setChecked(flag);
    }

    (CustomStoryPrivacyFragment customstoryprivacyfragment)
    {
        a = customstoryprivacyfragment;
        super();
    }
}
