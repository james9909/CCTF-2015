// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            hf, cv, ab, db

public final class cw
{

    public final List qV;
    public final long qW;
    public final List qX;
    public final List qY;
    public final List qZ;
    public final String ra;
    public final long rb;
    public int rc;
    public int rd;

    public cw(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        if (hf.x(2))
        {
            hf.W((new StringBuilder()).append("Mediation Response JSON: ").append(jsonobject.toString(2)).toString());
        }
        JSONArray jsonarray = jsonobject.getJSONArray("ad_networks");
        ArrayList arraylist = new ArrayList(jsonarray.length());
        int i = -1;
        for (int j = 0; j < jsonarray.length(); j++)
        {
            cv cv1 = new cv(jsonarray.getJSONObject(j));
            arraylist.add(cv1);
            if (i < 0 && a(cv1))
            {
                i = j;
            }
        }

        rc = i;
        rd = jsonarray.length();
        qV = Collections.unmodifiableList(arraylist);
        ra = jsonobject.getString("qdata");
        JSONObject jsonobject1 = jsonobject.optJSONObject("settings");
        if (jsonobject1 != null)
        {
            qW = jsonobject1.optLong("ad_network_timeout_millis", -1L);
            qX = ab.aK().a(jsonobject1, "click_urls");
            qY = ab.aK().a(jsonobject1, "imp_urls");
            qZ = ab.aK().a(jsonobject1, "nofill_urls");
            long l = jsonobject1.optLong("refresh", -1L);
            long l1;
            if (l > 0L)
            {
                l1 = l * 1000L;
            } else
            {
                l1 = -1L;
            }
            rb = l1;
            return;
        } else
        {
            qW = -1L;
            qX = null;
            qY = null;
            qZ = null;
            rb = -1L;
            return;
        }
    }

    private boolean a(cv cv1)
    {
        for (Iterator iterator = cv1.qQ.iterator(); iterator.hasNext();)
        {
            if (((String)iterator.next()).equals("com.google.ads.mediation.admob.AdMobAdapter"))
            {
                return true;
            }
        }

        return false;
    }
}
