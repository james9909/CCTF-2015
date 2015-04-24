// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appindexing;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.internal.s;

// Referenced classes of package com.google.android.gms.appindexing:
//            Action, Thing

public static final class  extends 
{

    public Action build()
    {
        s.b(EV.get("object"), "setObject is required before calling build().");
        s.b(EV.get("type"), "setType is required before calling build().");
        Bundle bundle = (Bundle)EV.getParcelable("object");
        s.b(bundle.get("name"), "Must call setObject() with a valid name. Example: setObject(new Thing.Builder().setName(name).setUrl(url))");
        s.b(bundle.get("url"), "Must call setObject() with a valid app url. Example: setObject(new Thing.Builder().setName(name).setUrl(url))");
        return new Action(EV, null);
    }

    public volatile Thing build()
    {
        return build();
    }

    public build put(String s1, Thing thing)
    {
        return (build)super.ut(s1, thing);
    }

    public ut put(String s1, String s2)
    {
        return (ut)super.ut(s1, s2);
    }

    public volatile ut put(String s1, Thing thing)
    {
        return put(s1, thing);
    }

    public volatile put put(String s1, String s2)
    {
        return put(s1, s2);
    }

    public put setName(String s1)
    {
        return (put)super.ut("name", s1);
    }

    public volatile ut setName(String s1)
    {
        return setName(s1);
    }

    public setName setObject(Thing thing)
    {
        s.l(thing);
        return (setName)super.ut("object", thing);
    }

    public ut setType(String s1)
    {
        s.l(s1);
        return (ut)super.ut("type", s1);
    }

    public volatile ut setType(String s1)
    {
        return setType(s1);
    }

    public setType setUrl(Uri uri)
    {
        if (uri != null)
        {
            super.ut("url", uri.toString());
        }
        return this;
    }

    public volatile ut setUrl(Uri uri)
    {
        return setUrl(uri);
    }

    public ()
    {
    }
}
