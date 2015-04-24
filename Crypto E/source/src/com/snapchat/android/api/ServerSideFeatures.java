// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import com.snapchat.android.model.StudySettings;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public class ServerSideFeatures
{
    public static class ABTestForFeature
    {

        public String onValue;
        public String studyId;
        public String variable;

        ABTestForFeature(String s, String s1, String s2)
        {
            studyId = s;
            variable = s1;
            onValue = s2;
        }
    }

    public static class ServerSideFeature
    {

        private ABTestForFeature mABTestForFeature;
        private String mFeatureName;
        private boolean mOnByDefault;

        String a()
        {
            return mFeatureName;
        }

        boolean a(StudySettings studysettings)
        {
            if (mABTestForFeature == null)
            {
                return mOnByDefault;
            }
            String s = studysettings.a(mABTestForFeature.studyId, mABTestForFeature.variable, null);
            return s != null && s.equals(mABTestForFeature.onValue);
        }

        ServerSideFeature(String s, ABTestForFeature abtestforfeature)
        {
            this(s, false, abtestforfeature);
        }

        ServerSideFeature(String s, boolean flag)
        {
            this(s, flag, null);
        }

        ServerSideFeature(String s, boolean flag, ABTestForFeature abtestforfeature)
        {
            mFeatureName = s;
            mOnByDefault = flag;
            mABTestForFeature = abtestforfeature;
        }
    }


    private static final ServerSideFeatures sInstance = new ServerSideFeatures(StudySettings.a());
    private Map mFeatures;
    private StudySettings mStudySettings;

    protected ServerSideFeatures(StudySettings studysettings)
    {
        mStudySettings = studysettings;
        ServerSideFeature serversidefeature = new ServerSideFeature("stories_delta_response", new ABTestForFeature("DELTA_RESPONSE", "FRIENDS_STORY_DELTA", "on"));
        ServerSideFeature serversidefeature1 = new ServerSideFeature("conversations_delta_response", new ABTestForFeature("DELTA_RESPONSE", "CONVERSATIONS_DELTA", "on"));
        mFeatures = new HashMap();
        mFeatures.put("/loq/all_updates", Arrays.asList(new ServerSideFeature[] {
            serversidefeature, serversidefeature1
        }));
    }

    public static ServerSideFeatures a()
    {
        return sInstance;
    }

    public String a(String s)
    {
        HashMap hashmap = new HashMap();
        Collection collection = (Collection)mFeatures.get(s);
        if (collection != null)
        {
            Iterator iterator = collection.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                ServerSideFeature serversidefeature = (ServerSideFeature)iterator.next();
                if (serversidefeature.a(mStudySettings))
                {
                    hashmap.put(serversidefeature.a(), Boolean.valueOf(true));
                }
            } while (true);
        }
        return (new JSONObject(hashmap)).toString();
    }

    protected void a(String s, Collection collection)
    {
        mFeatures.put(s, collection);
    }

}
