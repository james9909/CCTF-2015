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
    implements android.widget.ionListener
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
            (new Thread(new Runnable() {

                final BugReportFragment._cls5 a;

                public void run()
                {
                    ThreadUtils.a(300L);
                    BugReportFragment.c(a.a, false);
                }

            
            {
                a = BugReportFragment._cls5.this;
                super();
            }
            })).start();
        }
        return false;
    }

    _cls1.a(BugReportFragment bugreportfragment)
    {
        a = bugreportfragment;
        super();
    }
}
