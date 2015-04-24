// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appindexing;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.internal.s;

// Referenced classes of package com.google.android.gms.appindexing:
//            Thing

public final class Action extends Thing
{
    public static final class Builder extends Thing.Builder
    {

        public Action build()
        {
            s.b(EV.get("object"), "setObject is required before calling build().");
            s.b(EV.get("type"), "setType is required before calling build().");
            Bundle bundle = (Bundle)EV.getParcelable("object");
            s.b(bundle.get("name"), "Must call setObject() with a valid name. Example: setObject(new Thing.Builder().setName(name).setUrl(url))");
            s.b(bundle.get("url"), "Must call setObject() with a valid app url. Example: setObject(new Thing.Builder().setName(name).setUrl(url))");
            return new Action(EV);
        }

        public volatile Thing build()
        {
            return build();
        }

        public Builder put(String s1, Thing thing)
        {
            return (Builder)super.put(s1, thing);
        }

        public Builder put(String s1, String s2)
        {
            return (Builder)super.put(s1, s2);
        }

        public volatile Thing.Builder put(String s1, Thing thing)
        {
            return put(s1, thing);
        }

        public volatile Thing.Builder put(String s1, String s2)
        {
            return put(s1, s2);
        }

        public Builder setName(String s1)
        {
            return (Builder)super.put("name", s1);
        }

        public volatile Thing.Builder setName(String s1)
        {
            return setName(s1);
        }

        public Builder setObject(Thing thing)
        {
            s.l(thing);
            return (Builder)super.put("object", thing);
        }

        public Builder setType(String s1)
        {
            s.l(s1);
            return (Builder)super.put("type", s1);
        }

        public volatile Thing.Builder setType(String s1)
        {
            return setType(s1);
        }

        public Builder setUrl(Uri uri)
        {
            if (uri != null)
            {
                super.put("url", uri.toString());
            }
            return this;
        }

        public volatile Thing.Builder setUrl(Uri uri)
        {
            return setUrl(uri);
        }

        public Builder()
        {
        }
    }


    public static final String TYPE_ADD = "http://schema.org/AddAction";
    public static final String TYPE_BOOKMARK = "http://schema.org/BookmarkAction";
    public static final String TYPE_LIKE = "http://schema.org/LikeAction";
    public static final String TYPE_LISTEN = "http://schema.org/ListenAction";
    public static final String TYPE_VIEW = "http://schema.org/ViewAction";
    public static final String TYPE_WANT = "http://schema.org/WantAction";
    public static final String TYPE_WATCH = "http://schema.org/WatchAction";

    private Action(Bundle bundle)
    {
        super(bundle);
    }


    public static Action newAction(String s, String s1, Uri uri)
    {
        return newAction(s, s1, null, uri);
    }

    public static Action newAction(String s, String s1, Uri uri, Uri uri1)
    {
        Builder builder = (new Builder()).setType(s);
        Thing.Builder builder1 = (new Thing.Builder()).setName(s1);
        String s2;
        if (uri == null)
        {
            s2 = null;
        } else
        {
            s2 = uri.toString();
        }
        return builder.setObject(builder1.setId(s2).setUrl(uri1).build()).build();
    }
}
