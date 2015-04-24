// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;


// Referenced classes of package com.snapchat.android.ui:
//            UpgradePromptView

class a
    implements OnScrolledListener
{

    final UpgradePromptView a;

    public void a(int i, int j, int k)
    {
    }

    public void c(int i)
    {
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
            UpgradePromptView.a(a, true);
            return;

        case 1: // '\001'
            break;
        }
        if (UpgradePromptView.a(a))
        {
            UpgradePromptView.b(a);
        }
        a.setVisibility(8);
    }

    OnScrolledListener(UpgradePromptView upgradepromptview)
    {
        a = upgradepromptview;
        super();
    }
}
