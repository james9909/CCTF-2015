// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.fragment;

import android.support.v4.view.PagerAdapter;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DiscoverViewTrackingManager;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.ui.DSnapView;

// Referenced classes of package com.snapchat.android.discover.ui.fragment:
//            EditionViewerPager

class <init> extends android.support.v4.view.ageChangeListener
{

    final EditionViewerPager a;

    public void onPageScrollStateChanged(int i)
    {
        EditionViewerPager.a(a, i);
        if (i == 2 && a.getCurrentItem() != EditionViewerPager.c(a))
        {
            a.b(EditionViewerPager.c(a));
        } else
        {
            if (i == 0 && a.getCurrentItem() != EditionViewerPager.c(a))
            {
                a.b(EditionViewerPager.c(a));
                return;
            }
            if (i == 1)
            {
                EditionViewerPager.b(a, a.getCurrentItem());
                return;
            }
        }
    }

    public void onPageSelected(int i)
    {
        a.a(i);
        DSnapView dsnapview = EditionViewerPager.a(a);
        if (dsnapview != null)
        {
            DSnapPage dsnappage = dsnapview.getDSnapPage();
            if (dsnappage != null)
            {
                EditionViewerPager.b(a).a(dsnappage.d(), i);
                if (i == -1 + a.getAdapter().getCount() && dsnappage.k() == MediaState.f)
                {
                    EditionViewerPager.b(a).a(dsnappage.d(), true);
                }
            }
        }
    }

    private (EditionViewerPager editionviewerpager)
    {
        a = editionviewerpager;
        super();
    }

    a(EditionViewerPager editionviewerpager, a a1)
    {
        this(editionviewerpager);
    }
}
