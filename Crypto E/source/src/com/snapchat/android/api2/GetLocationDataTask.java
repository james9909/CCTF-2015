// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.BasicScRequestTask;
import com.snapchat.android.api2.framework.NetworkResult;
import com.snapchat.android.model.Geofilter;
import com.snapchat.android.model.PostToStory;
import com.snapchat.android.model.StoryLibrary;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.WeatherData;
import com.snapchat.android.model.server.GeofilterResponse;
import com.snapchat.android.model.server.WeatherResponse;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.GetLocationDataTaskCompletedEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.snapchat.android.api2:
//            AuthPayload

public class GetLocationDataTask extends BasicScRequestTask
    implements com.snapchat.android.api2.framework.HyperRequest.JsonCallback
{
    public static interface GetLocationDataTaskCallback
    {

        public abstract void a(PostToStory posttostory);

        public abstract void a(WeatherData weatherdata);

        public abstract void a(List list);
    }

    static class LocationResponsePayload
    {

        List filters;
        PostToStory local_story;
        WeatherResponse weather;

        LocationResponsePayload()
        {
        }
    }

    public class RequestPayload extends AuthPayload
    {

        Double accuracy;
        Double latitude;
        Double longitude;
        final GetLocationDataTask this$0;
        String username;

        public RequestPayload()
        {
            this$0 = GetLocationDataTask.this;
            super();
            username = UserPrefs.k();
            latitude = Double.valueOf(GetLocationDataTask.a(GetLocationDataTask.this).getLatitude());
            longitude = Double.valueOf(GetLocationDataTask.a(GetLocationDataTask.this).getLongitude());
            accuracy = Double.valueOf(GetLocationDataTask.a(GetLocationDataTask.this).getAccuracy());
        }
    }

    static class ResponsePayload
    {

        List createdFriendStories;
        List createdFriends;
        LocationResponsePayload location;

        ResponsePayload()
        {
        }
    }


    protected static final int MAX_GEO_FILTERS = 3;
    private static final String TAG = "GetLocationDataTask";
    private final GetLocationDataTaskCallback mCallback;
    private final Location mLocation;

    public GetLocationDataTask(GetLocationDataTaskCallback getlocationdatataskcallback, Location location)
    {
        mCallback = getlocationdatataskcallback;
        mLocation = location;
        a(com/snapchat/android/api2/GetLocationDataTask$ResponsePayload, this);
    }

    static Location a(GetLocationDataTask getlocationdatatask)
    {
        return getlocationdatatask.mLocation;
    }

    private void a(LocationResponsePayload locationresponsepayload)
    {
        if (locationresponsepayload != null) goto _L2; else goto _L1
_L1:
        Timber.c("GetLocationDataTask", "LocationResponsePayload was null", new Object[0]);
_L4:
        return;
_L2:
        ArrayList arraylist;
        Iterator iterator;
        if (locationresponsepayload.weather != null)
        {
            Timber.c("GetLocationDataTask", "Updating Weather", new Object[0]);
            mCallback.a(new WeatherData(locationresponsepayload.weather));
        }
        if (locationresponsepayload.filters == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        arraylist = new ArrayList();
        iterator = locationresponsepayload.filters.iterator();
_L5:
        GeofilterResponse geofilterresponse;
        if (iterator.hasNext())
        {
            geofilterresponse = (GeofilterResponse)iterator.next();
            if (arraylist.size() < 3)
            {
                break MISSING_BLOCK_LABEL_189;
            }
        }
        Timber.c("GetLocationDataTask", (new StringBuilder()).append("Updating geofilters with ").append(arraylist.size()).append(" geofilters").toString(), new Object[0]);
        mCallback.a(arraylist);
        if (locationresponsepayload.local_story == null) goto _L4; else goto _L3
_L3:
        Timber.c("GetLocationDataTask", "Updating Shared stories", new Object[0]);
        mCallback.a(locationresponsepayload.local_story);
        return;
        arraylist.add(new Geofilter(geofilterresponse));
          goto _L5
    }

    static void a(GetLocationDataTask getlocationdatatask, LocationResponsePayload locationresponsepayload)
    {
        getlocationdatatask.a(locationresponsepayload);
    }

    static User b(GetLocationDataTask getlocationdatatask)
    {
        return getlocationdatatask.mUser;
    }

    static User c(GetLocationDataTask getlocationdatatask)
    {
        return getlocationdatatask.mUser;
    }

    public void a(final ResponsePayload result, NetworkResult networkresult)
    {
        if (result == null)
        {
            return;
        } else
        {
            (new Handler(Looper.getMainLooper())).post(new Runnable() {

                final GetLocationDataTask this$0;
                final ResponsePayload val$result;

                public void run()
                {
                    GetLocationDataTask.a(GetLocationDataTask.this, result.location);
                    if (GetLocationDataTask.b(GetLocationDataTask.this) != null)
                    {
                        GetLocationDataTask.c(GetLocationDataTask.this).h(result.createdFriends);
                    }
                    StoryLibrary.a().a(result.createdFriendStories, false);
                    if (result.createdFriends != null && !result.createdFriends.isEmpty() || result.createdFriendStories != null && !result.createdFriendStories.isEmpty())
                    {
                        BusProvider.a().a(new GetLocationDataTaskCompletedEvent());
                    }
                }

            
            {
                this$0 = GetLocationDataTask.this;
                result = responsepayload;
                super();
            }
            });
            return;
        }
    }

    public volatile void a(Object obj, NetworkResult networkresult)
    {
        a((ResponsePayload)obj, networkresult);
    }

    public Object b()
    {
        return e();
    }

    public String d()
    {
        return "/loq/local_story";
    }

    public RequestPayload e()
    {
        return new RequestPayload();
    }
}
