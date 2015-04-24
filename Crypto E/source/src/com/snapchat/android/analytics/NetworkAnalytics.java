// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.analytics;

import android.text.TextUtils;
import com.google.gson.internal.LinkedTreeMap;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.util.EnumUtils;
import com.snapchat.android.util.HttpUtils;
import com.snapchat.android.util.SnapUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

public class NetworkAnalytics
{
    public static final class PageContext extends Enum
    {

        private static final PageContext $VALUES[];
        public static final PageContext FEED;
        public static final PageContext STORY;

        public static PageContext valueOf(String s)
        {
            return (PageContext)Enum.valueOf(com/snapchat/android/analytics/NetworkAnalytics$PageContext, s);
        }

        public static PageContext[] values()
        {
            return (PageContext[])$VALUES.clone();
        }

        static 
        {
            FEED = new PageContext("FEED", 0);
            STORY = new PageContext("STORY", 1);
            PageContext apagecontext[] = new PageContext[2];
            apagecontext[0] = FEED;
            apagecontext[1] = STORY;
            $VALUES = apagecontext;
        }

        private PageContext(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class SnapSendContext extends Enum
    {

        private static final SnapSendContext $VALUES[];
        public static final SnapSendContext PREVIEW_SCREEN;
        public static final SnapSendContext RETRY_POST_FAILED_STORY;
        public static final SnapSendContext RETRY_SEND_FAILED_SNAP;
        public static final SnapSendContext SEND_TO_SCREEN;

        public static SnapSendContext valueOf(String s)
        {
            return (SnapSendContext)Enum.valueOf(com/snapchat/android/analytics/NetworkAnalytics$SnapSendContext, s);
        }

        public static SnapSendContext[] values()
        {
            return (SnapSendContext[])$VALUES.clone();
        }

        static 
        {
            SEND_TO_SCREEN = new SnapSendContext("SEND_TO_SCREEN", 0);
            PREVIEW_SCREEN = new SnapSendContext("PREVIEW_SCREEN", 1);
            RETRY_SEND_FAILED_SNAP = new SnapSendContext("RETRY_SEND_FAILED_SNAP", 2);
            RETRY_POST_FAILED_STORY = new SnapSendContext("RETRY_POST_FAILED_STORY", 3);
            SnapSendContext asnapsendcontext[] = new SnapSendContext[4];
            asnapsendcontext[0] = SEND_TO_SCREEN;
            asnapsendcontext[1] = PREVIEW_SCREEN;
            asnapsendcontext[2] = RETRY_SEND_FAILED_SNAP;
            asnapsendcontext[3] = RETRY_POST_FAILED_STORY;
            $VALUES = asnapsendcontext;
        }

        private SnapSendContext(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String CONTENT_READY_EVENT = "CONTENT_READY";
    public static final String CONTEXT_PARAM = "context";
    public static final String FIRST_ITEM_READY_EVENT = "FIRST_ITEM_READY";
    public static final String FROM_NOTIFICATION_PARAM = "from_notification";
    public static final String IS_DOUBLE_POST_PARAM = "is_double_post";
    public static final String IS_FULL_RESPONSE_PARAM = "is_full_response";
    public static final String MEDIA_DURATION_PARAM = "media_duration";
    public static final String MEDIA_SIZE_PARAM = "media_size";
    public static final String REACHABILITY_PARAM = "reachability";
    public static final String RECEIVED_BYTES_PARAM = "return_size_bytes";
    public static final String SERVER_INFO_PARAM = "server_info";
    public static final String SNAP_SENT_DELAY_EVENT = "SNAP_SENT_DELAY";
    public static final String SNAP_SENT_FAILED_EVENT = "SNAP_SENT_FAILED";
    public static final String SNAP_SENT_SUCCESS_EVENT = "SNAP_SENT_SUCCESS";
    public static final String STATUS_CODE_PARAM = "status_code";
    public static final String STORY_POST_DELAY_EVENT = "STORY_POST_DELAY";
    public static final String SUCCESS_PARAM = "success";
    public static final String TYPE_PARAM = "type";
    public static final String WITH_MEDIA_PARAM = "with_media";
    private static final Set mAllowedPaths = new HashSet(Arrays.asList(mAllowedPathsList));
    private static final String mAllowedPathsList[] = {
        "/loq/send", "/bq/post_story", "/loq/all_updates"
    };
    private static final NetworkAnalytics sInstance = new NetworkAnalytics();
    private final DictionaryEasyMetric mDictionaryEasyMetric;
    private final Map mRequestTaskResponseMap;

    private NetworkAnalytics()
    {
        this(DictionaryEasyMetric.a());
    }

    NetworkAnalytics(DictionaryEasyMetric dictionaryeasymetric)
    {
        mRequestTaskResponseMap = new ConcurrentHashMap();
        mDictionaryEasyMetric = dictionaryeasymetric;
    }

    public static NetworkAnalytics a()
    {
        return sInstance;
    }

    private void a(AnnotatedMediabryo annotatedmediabryo, boolean flag, UUID uuid)
    {
        String s;
        EasyMetric easymetric;
        Map map;
        String s1;
        if (flag)
        {
            s = "SNAP_SENT_SUCCESS";
        } else
        {
            s = "SNAP_SENT_FAILED";
        }
        easymetric = new EasyMetric(s);
        map = (Map)mRequestTaskResponseMap.get(uuid);
        if (map != null)
        {
            easymetric.a("reachability", map.get("reachability")).a("status_code", map.get("status_code"));
        }
        if (SnapUtils.a(annotatedmediabryo))
        {
            s1 = "video";
        } else
        {
            s1 = "image";
        }
        easymetric.a("type", s1).c();
    }

    private void a(String s, int i)
    {
        mDictionaryEasyMetric.a(s, "with_media", Boolean.valueOf(true)).a(s, "media_size", Integer.valueOf(i));
    }

    private void a(String s, PageContext pagecontext, UUID uuid)
    {
        a(s, uuid);
        mDictionaryEasyMetric.a(s, "from_notification", Boolean.valueOf(false), false);
        mDictionaryEasyMetric.a(s, "context", EnumUtils.a(pagecontext));
        mDictionaryEasyMetric.b(s, false);
    }

    private void a(String s, SnapSendContext snapsendcontext)
    {
        mDictionaryEasyMetric.a(s);
        mDictionaryEasyMetric.a(s, "context", EnumUtils.a(snapsendcontext));
    }

    private void a(String s, AnnotatedMediabryo annotatedmediabryo, boolean flag, UUID uuid)
    {
        a(annotatedmediabryo, flag, uuid);
        boolean flag1;
        DictionaryEasyMetric dictionaryeasymetric;
        String s1;
        if (annotatedmediabryo.D().size() > 0 && annotatedmediabryo.l().size() > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        a(s, uuid);
        dictionaryeasymetric = mDictionaryEasyMetric.a(s, "is_double_post", Boolean.valueOf(flag1));
        if (SnapUtils.a(annotatedmediabryo))
        {
            s1 = "video";
        } else
        {
            s1 = "image";
        }
        dictionaryeasymetric.a(s, "type", s1).a(s, "media_duration", Double.valueOf(annotatedmediabryo.m())).a(s, "success", Boolean.valueOf(flag)).a(s, "with_media", Boolean.valueOf(false), false).a(s, "media_size", Integer.valueOf(0), false);
        mDictionaryEasyMetric.c(s);
    }

    private void a(String s, UUID uuid)
    {
        Map map;
        if (uuid != null)
        {
            if ((map = (Map)mRequestTaskResponseMap.get(uuid)) != null)
            {
                mDictionaryEasyMetric.a(s, "reachability", map.get("reachability"));
                int i = ((Integer)map.get("status_code")).intValue();
                mDictionaryEasyMetric.a(s, "success", Boolean.valueOf(HttpUtils.a(i)));
                mDictionaryEasyMetric.a(s, "return_size_bytes", map.get("return_size_bytes"));
                if (map.containsKey("server_info"))
                {
                    Map map1 = (Map)map.get("server_info");
                    boolean flag;
                    if (!TextUtils.equals((CharSequence)map1.get("response_compare_result"), "equal"))
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    mDictionaryEasyMetric.a(s, "is_full_response", Boolean.valueOf(flag));
                    mDictionaryEasyMetric.a(s, map1);
                }
                mRequestTaskResponseMap.remove(uuid);
                return;
            }
        }
    }

    private void g()
    {
        mDictionaryEasyMetric.a("FIRST_ITEM_READY");
        mDictionaryEasyMetric.a("CONTENT_READY");
    }

    public void a(int i)
    {
        a("STORY_POST_DELAY", i);
    }

    public void a(PageContext pagecontext)
    {
        b(pagecontext, ((UUID) (null)));
    }

    public void a(PageContext pagecontext, UUID uuid)
    {
        a("CONTENT_READY", pagecontext, uuid);
    }

    public void a(AnnotatedMediabryo annotatedmediabryo, UUID uuid)
    {
        a("SNAP_SENT_DELAY", annotatedmediabryo, true, uuid);
    }

    public void a(UUID uuid, String s, int i, long l, String s1, LinkedTreeMap linkedtreemap)
    {
        if (uuid == null || !mAllowedPaths.contains(s))
        {
            return;
        }
        HashMap hashmap = new HashMap();
        hashmap.put("status_code", Integer.valueOf(i));
        hashmap.put("reachability", s1);
        hashmap.put("return_size_bytes", Long.valueOf(l));
        if (linkedtreemap != null)
        {
            hashmap.put("server_info", linkedtreemap);
        }
        mRequestTaskResponseMap.put(uuid, hashmap);
    }

    public void a(boolean flag, boolean flag1)
    {
        if (flag)
        {
            a("SNAP_SENT_DELAY", SnapSendContext.SEND_TO_SCREEN);
        }
        if (flag1)
        {
            a("STORY_POST_DELAY", SnapSendContext.SEND_TO_SCREEN);
        }
    }

    public void b()
    {
        mDictionaryEasyMetric.a("FIRST_ITEM_READY", "from_notification", Boolean.valueOf(true));
        mDictionaryEasyMetric.a("CONTENT_READY", "from_notification", Boolean.valueOf(true));
    }

    public void b(int i)
    {
        a("SNAP_SENT_DELAY", i);
    }

    public void b(PageContext pagecontext, UUID uuid)
    {
        a("FIRST_ITEM_READY", pagecontext, uuid);
    }

    public void b(AnnotatedMediabryo annotatedmediabryo, UUID uuid)
    {
        a("SNAP_SENT_DELAY", annotatedmediabryo, false, uuid);
    }

    public void b(boolean flag, boolean flag1)
    {
        if (flag)
        {
            a("SNAP_SENT_DELAY", SnapSendContext.RETRY_SEND_FAILED_SNAP);
        }
        if (flag1)
        {
            a("STORY_POST_DELAY", SnapSendContext.RETRY_POST_FAILED_STORY);
        }
    }

    public void c()
    {
        g();
    }

    public void c(AnnotatedMediabryo annotatedmediabryo, UUID uuid)
    {
        a("STORY_POST_DELAY", annotatedmediabryo, true, uuid);
    }

    public void d()
    {
        g();
    }

    public void d(AnnotatedMediabryo annotatedmediabryo, UUID uuid)
    {
        a("STORY_POST_DELAY", annotatedmediabryo, false, uuid);
    }

    public void e()
    {
        a("STORY_POST_DELAY", SnapSendContext.PREVIEW_SCREEN);
    }

    public void f()
    {
        a("SNAP_SENT_DELAY", SnapSendContext.PREVIEW_SCREEN);
    }

}
