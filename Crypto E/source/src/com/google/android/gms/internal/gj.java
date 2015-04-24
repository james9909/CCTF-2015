// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

class gj
{

    private int uq;
    private final List vZ;
    private final List wa;
    private final String wb;
    private final String wc;
    private final String wd;
    private final String we;
    private final boolean wf;
    private final int wg;
    private String wh;

    public gj(int i, Map map)
    {
        wh = (String)map.get("url");
        wc = (String)map.get("base_uri");
        wd = (String)map.get("post_parameters");
        wf = parseBoolean((String)map.get("drt_include"));
        wb = (String)map.get("activation_overlay_url");
        wa = M((String)map.get("check_packages"));
        wg = parseInt((String)map.get("request_id"));
        we = (String)map.get("type");
        vZ = M((String)map.get("errors"));
        uq = i;
    }

    private List M(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return Arrays.asList(s.split(","));
        }
    }

    private static boolean parseBoolean(String s)
    {
        return s != null && (s.equals("1") || s.equals("true"));
    }

    private int parseInt(String s)
    {
        if (s == null)
        {
            return 0;
        } else
        {
            return Integer.parseInt(s);
        }
    }

    public List dc()
    {
        return vZ;
    }

    public String dd()
    {
        return wd;
    }

    public boolean de()
    {
        return wf;
    }

    public int getErrorCode()
    {
        return uq;
    }

    public String getType()
    {
        return we;
    }

    public String getUrl()
    {
        return wh;
    }

    public void setUrl(String s)
    {
        wh = s;
    }
}
