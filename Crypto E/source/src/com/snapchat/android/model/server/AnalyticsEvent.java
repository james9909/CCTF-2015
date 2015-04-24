// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.util.GsonUtil;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public class AnalyticsEvent
{
    public static class Builder
    {

        private final String mEventName;
        private Map mParams;
        private Map mTimers;
        private double mTimestamp;

        private Builder addTimer(String s, String s1)
        {
            if (mTimers == null)
            {
                mTimers = new HashMap();
            }
            List list = Arrays.asList(new String[] {
                s1
            });
            mTimers.put(s, list);
            return this;
        }

        public Builder addParams(Map map)
        {
            if (map != null)
            {
                if (mParams == null)
                {
                    mParams = new HashMap();
                }
                mParams.putAll(map);
            }
            return this;
        }

        public Builder addParamsFromString(String s)
        {
            java.lang.reflect.Type type = (new TypeToken() {

                final Builder this$0;

            
            {
                this$0 = Builder.this;
                super();
            }
            }).getType();
            return addParams((Map)GsonUtil.a().fromJson(s, type));
        }

        public Builder addTimer(String s, long l)
        {
            return addTimer(s, Long.toString(l));
        }

        public Builder addTimersFromString(String s)
        {
            if (s != null)
            {
                java.lang.reflect.Type type = (new TypeToken() {

                    final Builder this$0;

            
            {
                this$0 = Builder.this;
                super();
            }
                }).getType();
                Iterator iterator = ((Map)GsonUtil.a().fromJson(s, type)).entrySet().iterator();
                while (iterator.hasNext()) 
                {
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                    addTimer((String)entry.getKey(), (String)entry.getValue());
                }
            }
            return this;
        }

        public AnalyticsEvent build()
        {
            AnalyticsEvent analyticsevent = new AnalyticsEvent(mEventName, mTimestamp);
            analyticsevent.mParams = mParams;
            if (mTimers != null)
            {
                analyticsevent.mMetrics = new TreeMap();
                analyticsevent.mMetrics.put("timers", mTimers);
            }
            return analyticsevent;
        }

        public Builder setTimestampInSeconds(double d)
        {
            mTimestamp = d;
            return this;
        }

        public Builder(String s)
        {
            mEventName = s;
            mTimestamp = (double)System.currentTimeMillis() / 1000D;
        }
    }


    private static final String TIMERS = "timers";
    private String mEventName;
    protected Map mMetrics;
    protected Map mParams;
    private double mTimestamp;

    public AnalyticsEvent()
    {
    }

    private AnalyticsEvent(String s, double d)
    {
        mEventName = s;
        mTimestamp = d;
    }

    AnalyticsEvent(String s, double d, _cls1 _pcls1)
    {
        this(s, d);
    }

    public String getEventName()
    {
        return mEventName;
    }

    public String getParamsAsString()
    {
        return GsonUtil.a().toJson(mParams);
    }

    public double getTimeStampInSeconds()
    {
        return mTimestamp;
    }

    public String getTimersAsString()
    {
        if (mMetrics == null)
        {
            return null;
        }
        Map map = (Map)mMetrics.get("timers");
        if (map == null)
        {
            return null;
        }
        TreeMap treemap = new TreeMap();
        java.util.Map.Entry entry;
        List list;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); treemap.put(entry.getKey(), list.get(0)))
        {
            entry = (java.util.Map.Entry)iterator.next();
            list = (List)entry.getValue();
            if (list.size() != 1)
            {
                throw new IllegalStateException("Multi-element lists are not supported.");
            }
        }

        return GsonUtil.a().toJson(treemap);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(mEventName);
        stringbuilder.append(" ");
        stringbuilder.append(mTimestamp);
        stringbuilder.append(" ");
        if (mParams != null)
        {
            for (Iterator iterator = mParams.entrySet().iterator(); iterator.hasNext(); stringbuilder.append("]"))
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                stringbuilder.append("[");
                stringbuilder.append((String)entry.getKey());
                stringbuilder.append(",");
                stringbuilder.append(entry.getValue());
            }

        }
        return stringbuilder.toString();
    }
}
