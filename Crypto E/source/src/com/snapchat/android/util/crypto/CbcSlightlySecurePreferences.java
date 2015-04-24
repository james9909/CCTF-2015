// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import com.google.gson.reflect.TypeToken;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.util.GsonWrapper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.util.crypto:
//            SlightlySecurePreferences, CbcKeyAndIvWrapper, CbcEncryptionAlgorithm, SlightlySecurePreferencesKey

public class CbcSlightlySecurePreferences
{

    SlightlySecurePreferences a;
    GsonWrapper b;

    public CbcSlightlySecurePreferences()
    {
        SnapchatApplication.e().a(this);
    }

    private Map a(String s)
    {
        java.lang.reflect.Type type = (new TypeToken() {

            final CbcSlightlySecurePreferences a;

            
            {
                a = CbcSlightlySecurePreferences.this;
                super();
            }
        }).getType();
        return (Map)b.a(s, type);
    }

    public boolean a(List list, SlightlySecurePreferencesKey slightlysecurepreferenceskey)
    {
        String s = a.a(slightlysecurepreferenceskey);
        if (s == null)
        {
            return false;
        }
        Map map = a(s);
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            StorySnap storysnap = (StorySnap)iterator.next();
            CbcKeyAndIvWrapper cbckeyandivwrapper = (CbcKeyAndIvWrapper)map.get(storysnap.ay());
            if (cbckeyandivwrapper == null)
            {
                iterator.remove();
            } else
            {
                storysnap.a(new CbcEncryptionAlgorithm(cbckeyandivwrapper.a(), cbckeyandivwrapper.b(), cbckeyandivwrapper.c()));
            }
        }

        return true;
    }

    public void b(List list, SlightlySecurePreferencesKey slightlysecurepreferenceskey)
    {
        HashMap hashmap = new HashMap();
        StorySnap storysnap;
        CbcKeyAndIvWrapper cbckeyandivwrapper;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); hashmap.put(storysnap.ay(), cbckeyandivwrapper))
        {
            storysnap = (StorySnap)iterator.next();
            CbcEncryptionAlgorithm cbcencryptionalgorithm = storysnap.R();
            cbckeyandivwrapper = new CbcKeyAndIvWrapper(cbcencryptionalgorithm.a(), cbcencryptionalgorithm.b(), cbcencryptionalgorithm.c());
        }

        String s = b.a(hashmap);
        a.a(slightlysecurepreferenceskey, s);
    }
}
