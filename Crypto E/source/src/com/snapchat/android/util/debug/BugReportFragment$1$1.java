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
    implements android.content.kListener
{

    final EditText a;
    final b b;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        String s = a.getText().toString();
        if (s.endsWith("@snapchat.com"))
        {
            BugReportFragment.b(b.b).setText(s);
            BugReportFragment.a(b.b, true);
            return;
        } else
        {
            AlertDialogUtils.a(BugReportFragment.c(b.b), "Please enter a valid @snapchat email!!");
            return;
        }
    }

    ( , EditText edittext)
    {
        b = ;
        a = edittext;
        super();
    }

    // Unreferenced inner class com/snapchat/android/util/debug/BugReportFragment$1

/* anonymous class */
    class BugReportFragment._cls1
        implements android.view.View.OnClickListener
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
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(BugReportFragment.c(a));
                EditText edittext = new EditText(BugReportFragment.c(a));
                builder.setTitle("Please enter your email").setView(edittext).setPositiveButton("Okay", new BugReportFragment._cls1._cls1(this, edittext)).show();
                return;
            }
        }

            
            {
                a = bugreportfragment;
                super();
            }
    }

}
