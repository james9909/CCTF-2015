// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.os.AsyncTask;
import com.snapchat.android.ui.swipefilters.FilterPage;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.snapchat.android.ui:
//            SwipeImageView

class a extends AsyncTask
{

    final List a;
    final SwipeImageView b;

    protected Void a(Void avoid[])
    {
        Iterator iterator = a.iterator();
        while (iterator.hasNext()) 
        {
            FilterPage filterpage = (FilterPage)iterator.next();
            boolean flag;
            if (!SwipeImageView.a(b).get())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            filterpage.a(flag, SwipeImageView.b(b));
            b.postInvalidate();
        }
        return null;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    (SwipeImageView swipeimageview, List list)
    {
        b = swipeimageview;
        a = list;
        super();
    }
}
