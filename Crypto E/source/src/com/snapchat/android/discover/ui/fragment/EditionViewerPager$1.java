// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.fragment;


// Referenced classes of package com.snapchat.android.discover.ui.fragment:
//            EditionViewerPager

class a
    implements Runnable
{

    final EditionViewerPager a;

    public void run()
    {
        a.a(a.getCurrentItem());
    }

    (EditionViewerPager editionviewerpager)
    {
        a = editionviewerpager;
        super();
    }
}
