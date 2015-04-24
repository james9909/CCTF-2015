// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.snapchat.android.Timber;
import com.snapchat.android.util.GsonUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.model:
//            UserPrefs

public class StudySettings
{

    public static final String EMPTY_MAP = "{}";
    private static final String TAG = "StudySettings";
    private static final StudySettings sInstance = new StudySettings();
    private Map mStudySettings;

    protected StudySettings()
    {
    }

    public static StudySettings a()
    {
        return sInstance;
    }

    protected static Map b(String s)
    {
        java.lang.reflect.Type type = (new TypeToken() {

        }).getType();
        return (Map)GsonUtil.a().fromJson(s, type);
    }

    private void c(String s)
    {
        if (mStudySettings == null)
        {
            mStudySettings = b(s);
            Timber.b("StudySettings", (new StringBuilder()).append("Applied study settings: ").append(mStudySettings).toString(), new Object[0]);
        }
    }

    public float a(String s, String s1, float f)
    {
        return Float.valueOf(a(s, s1, Float.toString(f))).floatValue();
    }

    public int a(String s, String s1, int i)
    {
        return Integer.valueOf(a(s, s1, Integer.toString(i))).intValue();
    }

    public long a(String s, String s1, long l)
    {
        return Long.valueOf(a(s, s1, Long.toString(l))).longValue();
    }

    public String a(String s, String s1, String s2)
    {
        return a(s, s1, s2, UserPrefs.am());
    }

    protected String a(String s, String s1, String s2, String s3)
    {
        c(s3);
        if (mStudySettings.containsKey(s) && ((Map)mStudySettings.get(s)).containsKey(s1))
        {
            return (String)((Map)mStudySettings.get(s)).get(s1);
        } else
        {
            return s2;
        }
    }

    public String a(Map map)
    {
        String s = "{}";
        if (map != null)
        {
            HashMap hashmap = new HashMap();
            java.lang.reflect.Type type = (new TypeToken() {

                final StudySettings this$0;

            
            {
                this$0 = StudySettings.this;
                super();
            }
            }).getType();
            String s1;
            String s2;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); hashmap.put(s1, (Map)GsonUtil.a().fromJson(s2, type)))
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                s1 = (String)entry.getKey();
                s2 = (String)entry.getValue();
            }

            mStudySettings = hashmap;
            s = GsonUtil.a().toJson(hashmap);
        }
        return s;
    }

    protected Map a(String s)
    {
        c(s);
        HashMap hashmap = new HashMap();
        java.util.Map.Entry entry;
        for (Iterator iterator = mStudySettings.entrySet().iterator(); iterator.hasNext(); hashmap.put((String)entry.getKey(), (String)((Map)entry.getValue()).get("experimentId")))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return hashmap;
    }

    public boolean a(String s, String s1, boolean flag)
    {
        return Boolean.valueOf(a(s, s1, Boolean.toString(flag))).booleanValue();
    }

    public Map b()
    {
        return a(UserPrefs.am());
    }

}
