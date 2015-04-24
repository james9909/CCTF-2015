// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview.filterpage.operation;

import android.content.Context;
import com.snapchat.android.Timber;
import com.snapchat.android.location.GeofilterManager;
import com.snapchat.android.model.Geofilter;
import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.smartfilters.GeofilterView;
import com.snapchat.android.ui.swipefilters.FilterPage;
import com.snapchat.android.ui.swipeimageview.filterpage.FilterPageInitializationStrategy;
import com.snapchat.android.ui.swipeimageview.filterpage.FilterPageStore;
import com.snapchat.android.ui.swipeimageview.filterpage.OverlayPageInitializationStrategy;
import com.snapchat.android.ui.swipeimageview.filterpage.filterpages.GeofilterPage;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.ui.swipeimageview.filterpage.operation:
//            FilterPageOperation

public class RefreshGeofilterPagesOperation extends FilterPageOperation
{

    private final GeofilterManager a;
    private final FilterPageInitializationStrategy b;

    public RefreshGeofilterPagesOperation()
    {
        this(GeofilterManager.a(), ((FilterPageInitializationStrategy) (new OverlayPageInitializationStrategy())));
    }

    public RefreshGeofilterPagesOperation(GeofilterManager geofiltermanager, FilterPageInitializationStrategy filterpageinitializationstrategy)
    {
        a = geofiltermanager;
        b = filterpageinitializationstrategy;
    }

    private List a(List list, Context context)
    {
        int i = list.size();
        Timber.c("RefreshGeofilterPagesOperation", (new StringBuilder()).append("Have ").append(i).append(" geofilters returned from server").toString(), new Object[0]);
        ArrayList arraylist = new ArrayList(i);
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Geofilter geofilter = (Geofilter)iterator.next();
            if (geofilter.c() != null)
            {
                arraylist.add(new GeofilterPage(geofilter, new GeofilterView(context, geofilter)));
            }
        } while (true);
        Timber.c("RefreshGeofilterPagesOperation", (new StringBuilder()).append("getGeofilterPagesFromServer has ").append(arraylist.size()).append(" current geofilters").toString(), new Object[0]);
        return arraylist;
    }

    private List a(List list, Collection collection)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            FilterPage filterpage = (FilterPage)iterator.next();
            if (!list.contains(filterpage) && (filterpage instanceof GeofilterPage))
            {
                arraylist.add(filterpage);
            }
        } while (true);
        return arraylist;
    }

    private void a(SwipeImageView swipeimageview, FilterPageStore filterpagestore, List list)
    {
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            FilterPage filterpage = (FilterPage)iterator.next();
            if (filterpage instanceof GeofilterPage)
            {
                filterpagestore.b(filterpage);
                swipeimageview.a(filterpage.d());
            }
        } while (true);
    }

    public void a(SwipeImageView swipeimageview, FilterPageStore filterpagestore)
    {
        Timber.c("RefreshGeofilterPagesOperation", "Upading geofilter pages", new Object[0]);
        List list = a(a.b(), swipeimageview.getContext());
        List list1 = filterpagestore.a();
        a(swipeimageview, filterpagestore, a(list, ((Collection) (list1))));
        ArrayList arraylist = new ArrayList(list);
        arraylist.removeAll(list1);
        a(filterpagestore, swipeimageview, ((List) (arraylist)));
    }

    protected void a(FilterPageStore filterpagestore, SwipeImageView swipeimageview, List list)
    {
        for (int i = -1 + list.size(); i >= 0; i--)
        {
            FilterPage filterpage = (FilterPage)list.get(i);
            filterpagestore.a((FilterPage)list.get(i));
            b.a(filterpage);
            swipeimageview.a(filterpage);
        }

    }
}
