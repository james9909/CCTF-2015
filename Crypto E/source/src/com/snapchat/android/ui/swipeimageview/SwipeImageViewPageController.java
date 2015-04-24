// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.swipeimageview;

import android.content.Context;
import com.snapchat.android.camera.transcoding.VideoFilterPreferenceWrapper;
import com.snapchat.android.location.GeofilterManager;
import com.snapchat.android.location.LocationPermissionsAccessor;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.smartfilters.ClockView;
import com.snapchat.android.ui.smartfilters.SpeedometerView;
import com.snapchat.android.ui.smartfilters.TurnOnFiltersView;
import com.snapchat.android.ui.smartfilters.WeatherView;
import com.snapchat.android.ui.swipefilters.VideoFilterPage;
import com.snapchat.android.ui.swipefilters.VisualFilterPage;
import com.snapchat.android.ui.swipeimageview.filterpage.FilterPageStore;
import com.snapchat.android.ui.swipeimageview.filterpage.OverlayPageInitializationStrategy;
import com.snapchat.android.ui.swipeimageview.filterpage.filterpages.ClockFilterPage;
import com.snapchat.android.ui.swipeimageview.filterpage.filterpages.SpeedometerFilterPage;
import com.snapchat.android.ui.swipeimageview.filterpage.filterpages.TurnOnFiltersPage;
import com.snapchat.android.ui.swipeimageview.filterpage.filterpages.UnfilteredPage;
import com.snapchat.android.ui.swipeimageview.filterpage.filterpages.WeatherFilterPage;
import com.snapchat.android.ui.swipeimageview.filterpage.operation.AddFilterPageOperation;
import com.snapchat.android.ui.swipeimageview.filterpage.operation.ClearFilterPagesOperation;
import com.snapchat.android.ui.swipeimageview.filterpage.operation.FilterPageOperationQueue;
import com.snapchat.android.ui.swipeimageview.filterpage.operation.RefreshGeofilterPagesOperation;
import com.snapchat.android.util.eventbus.GeofilterLoadedEvent;
import com.snapchat.android.util.eventbus.WeatherUpdatedEvent;
import com.snapchat.android.util.threading.ThreadUtils;
import java.util.Date;

public class SwipeImageViewPageController
    implements com.snapchat.android.ui.SwipeController.OnScrollListener
{

    protected final FilterPageOperationQueue a;
    private final Context b;
    private final SwipeImageView c;
    private final GeofilterManager d;
    private final LocationPermissionsAccessor e;
    private final VideoFilterPreferenceWrapper f;
    private boolean g;
    private boolean h;
    private boolean i;

    protected SwipeImageViewPageController(Context context, SwipeImageView swipeimageview, GeofilterManager geofiltermanager, LocationPermissionsAccessor locationpermissionsaccessor, FilterPageOperationQueue filterpageoperationqueue, VideoFilterPreferenceWrapper videofilterpreferencewrapper)
    {
        b = context;
        c = swipeimageview;
        d = geofiltermanager;
        e = locationpermissionsaccessor;
        boolean flag;
        if (d.d() == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
        a = filterpageoperationqueue;
        f = videofilterpreferencewrapper;
    }

    public SwipeImageViewPageController(Context context, SwipeImageView swipeimageview, FilterPageStore filterpagestore)
    {
        this(context, swipeimageview, GeofilterManager.a(), new LocationPermissionsAccessor(), new FilterPageOperationQueue(swipeimageview, filterpagestore), VideoFilterPreferenceWrapper.a());
    }

    private void d()
    {
        ThreadUtils.a();
        if (e.b())
        {
            SpeedometerFilterPage speedometerfilterpage = new SpeedometerFilterPage(new SpeedometerView(b));
            a.a(new AddFilterPageOperation(speedometerfilterpage, new OverlayPageInitializationStrategy()));
        }
        if (d.d() != null)
        {
            WeatherFilterPage weatherfilterpage = new WeatherFilterPage(new WeatherView(b));
            a.a(new AddFilterPageOperation(weatherfilterpage, new OverlayPageInitializationStrategy()));
        }
        ClockFilterPage clockfilterpage = new ClockFilterPage(new ClockView(b, new Date()));
        a.a(new AddFilterPageOperation(clockfilterpage, new OverlayPageInitializationStrategy()));
        if (e.b() && d.e())
        {
            a.a(new RefreshGeofilterPagesOperation());
        }
    }

    private void e()
    {
        ThreadUtils.a();
        if (!f.b())
        {
            return;
        } else
        {
            VideoFilterPage videofilterpage = new VideoFilterPage(com.snapchat.videotranscoder.video.ShaderText.Type.b);
            a.a(new AddFilterPageOperation(videofilterpage));
            VideoFilterPage videofilterpage1 = new VideoFilterPage(com.snapchat.videotranscoder.video.ShaderText.Type.c);
            a.a(new AddFilterPageOperation(videofilterpage1));
            return;
        }
    }

    private void f()
    {
        ThreadUtils.a();
        VisualFilterPage visualfilterpage = new VisualFilterPage("Instasnap", 3);
        a.a(new AddFilterPageOperation(visualfilterpage));
        VisualFilterPage visualfilterpage1 = new VisualFilterPage("Miss Etikate", 17);
        a.a(new AddFilterPageOperation(visualfilterpage1));
        VisualFilterPage visualfilterpage2 = new VisualFilterPage("B&w", 0);
        a.a(new AddFilterPageOperation(visualfilterpage2));
    }

    public void a()
    {
        UnfilteredPage unfilteredpage = new UnfilteredPage();
        a.a(new AddFilterPageOperation(unfilteredpage));
        if (UserPrefs.L())
        {
            d();
        } else
        {
            TurnOnFiltersPage turnonfilterspage = new TurnOnFiltersPage(new TurnOnFiltersView(b));
            a.a(new AddFilterPageOperation(turnonfilterspage, new OverlayPageInitializationStrategy()));
        }
        if (!h)
        {
            a.a();
            c.invalidate();
        }
    }

    public void a(int j)
    {
        ThreadUtils.a();
        b();
        UnfilteredPage unfilteredpage = new UnfilteredPage();
        a.a(new AddFilterPageOperation(unfilteredpage));
        if (!UserPrefs.L())
        {
            TurnOnFiltersPage turnonfilterspage = new TurnOnFiltersPage(new TurnOnFiltersView(b));
            a.a(new AddFilterPageOperation(turnonfilterspage, new OverlayPageInitializationStrategy()));
            if (!h)
            {
                a.a();
            }
        } else
        {
            if (UserPrefs.L())
            {
                if (j == 0)
                {
                    f();
                } else
                {
                    e();
                }
                d();
            }
            if (!h)
            {
                a.a();
                c.b();
            } else
            {
                i = true;
            }
        }
        c.invalidate();
    }

    public void a(SwipeImageView swipeimageview)
    {
    }

    public void a(SwipeImageView swipeimageview, boolean flag)
    {
        h = false;
        a.a();
        if (i)
        {
            c.b();
            i = false;
        }
        c.invalidate();
    }

    public void b()
    {
        a.b(new ClearFilterPagesOperation());
        a.d();
    }

    public void b(SwipeImageView swipeimageview)
    {
        h = true;
    }

    public void c()
    {
        a.c();
        c.a();
    }

    public void onGeofilterLoadedEvent(GeofilterLoadedEvent geofilterloadedevent)
    {
        ThreadUtils.a();
        a.a(new RefreshGeofilterPagesOperation());
        if (!h)
        {
            a.a();
            c.invalidate();
        }
    }

    public void onWeatherUpdatedEvent(WeatherUpdatedEvent weatherupdatedevent)
    {
        ThreadUtils.a();
        if (g && d.d() != null)
        {
            g = false;
            WeatherFilterPage weatherfilterpage = new WeatherFilterPage(new WeatherView(b));
            a.a(new AddFilterPageOperation(weatherfilterpage, new OverlayPageInitializationStrategy()));
            a.a(new RefreshGeofilterPagesOperation());
            if (!h)
            {
                a.a();
                c.invalidate();
            }
        }
    }
}
