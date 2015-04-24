// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import com.snapchat.android.util.threading.ThreadUtils;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportFragment

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        ThreadUtils.a(300L);
        BugReportFragment.c(a.a, false);
    }

    ( )
    {
        a = ;
        super();
    }

    // Unreferenced inner class com/snapchat/android/util/debug/BugReportFragment$5

/* anonymous class */
    class BugReportFragment._cls5
        implements android.widget.TextView.OnEditorActionListener
    {

        final BugReportFragment a;

        public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
        {
            if (i == 5 || keyevent != null && keyevent.getKeyCode() == 66 && keyevent.getAction() == 0)
            {
                if (BugReportFragment.g(a))
                {
                    BugReportFragment.f(a).requestFocus();
                    return true;
                }
                BugReportFragment.c(a, true);
                (new Thread(new BugReportFragment._cls5._cls1(this))).start();
            }
            return false;
        }

            
            {
                a = bugreportfragment;
                super();
            }
    }

}
