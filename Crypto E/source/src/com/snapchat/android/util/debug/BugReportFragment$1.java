// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.content.DialogInterface;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.snapchat.android.util.AlertDialogUtils;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportFragment

class a
    implements android.view.
{

    final BugReportFragment a;

    public void onClick(View view)
    {
        if (BugReportFragment.a(a))
        {
            BugReportFragment.a(a, false);
            BugReportFragment.b(a).setText("Send this report only to yourself?");
            return;
        } else
        {
            android.app.BugReportFragment bugreportfragment = new android.app.<init>(BugReportFragment.c(a));
            EditText edittext = new EditText(BugReportFragment.c(a));
            bugreportfragment.setTitle("Please enter your email").setView(edittext).setPositiveButton("Okay", new android.content.DialogInterface.OnClickListener(edittext) {

                final EditText a;
                final BugReportFragment._cls1 b;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    String s = a.getText().toString();
                    if (s.endsWith("@snapchat.com"))
                    {
                        BugReportFragment.b(b.a).setText(s);
                        BugReportFragment.a(b.a, true);
                        return;
                    } else
                    {
                        AlertDialogUtils.a(BugReportFragment.c(b.a), "Please enter a valid @snapchat email!!");
                        return;
                    }
                }

            
            {
                b = BugReportFragment._cls1.this;
                a = edittext;
                super();
            }
            }).show();
            return;
        }
    }

    _cls1.a(BugReportFragment bugreportfragment)
    {
        a = bugreportfragment;
        super();
    }
}
