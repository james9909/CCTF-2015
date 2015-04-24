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
    implements android.view.
{

    final Bitmap a;
    final BugReportFragment b;

    public void onClick(View view)
    {
        ImageView imageview = new ImageView(BugReportFragment.c(b));
        imageview.setImageBitmap(a);
        (new android.app.<init>(BugReportFragment.c(b))).setTitle("Included Screenshot").setView(imageview).setPositiveButton("Include", new android.content.DialogInterface.OnClickListener() {

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
        }).setNegativeButton("Remove", new android.content.DialogInterface.OnClickListener() {

            final BugReportFragment._cls2 a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (BugReportFragment.d(a.b))
                {
                    BugReportFragment.b(a.b, false);
                    BugReportFragment.e(a.b).setVisibility(0);
                }
            }

            
            {
                a = BugReportFragment._cls2.this;
                super();
            }
        }).show();
    }

    _cls2.a(BugReportFragment bugreportfragment, Bitmap bitmap)
    {
        b = bugreportfragment;
        a = bitmap;
        super();
    }
}
