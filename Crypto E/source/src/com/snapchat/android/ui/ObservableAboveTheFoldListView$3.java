// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;


// Referenced classes of package com.snapchat.android.ui:
//            ObservableAboveTheFoldListView

class a
    implements Runnable
{

    final ObservableAboveTheFoldListView a;

    public void run()
    {
        a.smoothScrollBy(-1, 100);
    }

    (ObservableAboveTheFoldListView observableabovethefoldlistview)
    {
        a = observableabovethefoldlistview;
        super();
    }
}
