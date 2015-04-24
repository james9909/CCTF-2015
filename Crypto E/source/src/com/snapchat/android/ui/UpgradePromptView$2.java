// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;


// Referenced classes of package com.snapchat.android.ui:
//            UpgradePromptView

class a
    implements Runnable
{

    final UpgradePromptView a;

    public void run()
    {
        a.setVisibility(0);
        a.post(new Runnable() {

            final UpgradePromptView._cls2 a;

            public void run()
            {
                a.a.a(0, 1.5D);
            }

            
            {
                a = UpgradePromptView._cls2.this;
                super();
            }
        });
    }

    _cls1.a(UpgradePromptView upgradepromptview)
    {
        a = upgradepromptview;
        super();
    }
}
