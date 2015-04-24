// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;


// Referenced classes of package com.snapchat.android.ui:
//            UpgradePromptView

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        a.a.a(0, 1.5D);
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/snapchat/android/ui/UpgradePromptView$2

/* anonymous class */
    class UpgradePromptView._cls2
        implements Runnable
    {

        final UpgradePromptView a;

        public void run()
        {
            a.setVisibility(0);
            a.post(new UpgradePromptView._cls2._cls1(this));
        }

            
            {
                a = upgradepromptview;
                super();
            }
    }

}
