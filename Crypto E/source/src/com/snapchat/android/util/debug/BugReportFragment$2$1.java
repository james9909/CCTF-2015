// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;

// Referenced classes of package com.snapchat.android.util.debug:
//            BugReportFragment

class a
    implements android.content.kListener
{

    final a a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (BugReportFragment.d(a.a))
        {
            BugReportFragment.b(a.a, false);
            BugReportFragment.e(a.a).setVisibility(0);
        }
    }

    a(a a1)
    {
        a = a1;
        super();
    }

    // Unreferenced inner class com/snapchat/android/util/debug/BugReportFragment$2

/* anonymous class */
    class BugReportFragment._cls2
        implements android.view.View.OnClickListener
    {

        final Bitmap a;
        final BugReportFragment b;

        public void onClick(View view)
        {
            ImageView imageview = new ImageView(BugReportFragment.c(b));
            imageview.setImageBitmap(a);
            (new android.app.AlertDialog.Builder(BugReportFragment.c(b))).setTitle("Included Screenshot").setView(imageview).setPositiveButton("Include", new BugReportFragment._cls2._cls2()).setNegativeButton("Remove", new BugReportFragment._cls2._cls1(this)).show();
        }

            
            {
                b = bugreportfragment;
                a = bitmap;
                super();
            }

        // Unreferenced inner class com/snapchat/android/util/debug/BugReportFragment$2$2

/* anonymous class */
        class BugReportFragment._cls2._cls2
            implements android.content.DialogInterface.OnClickListener
        {

            final BugReportFragment._cls2 a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (!BugReportFragment.d(a.b))
                {
                    BugReportFragment.b(a.b, true);
                    BugReportFragment.e(a.b).setVisibility(8);
                }
            }

                    
                    {
                        a = BugReportFragment._cls2.this;
                        super();
                    }
        }

    }

}
