// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appindexing;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.internal.s;

public class Thing
{
    public static class Builder
    {

        final Bundle EV = new Bundle();

        public Thing build()
        {
            return new Thing(EV);
        }

        public Builder put(String s1, Thing thing)
        {
            s.l(s1);
            if (thing != null)
            {
                EV.putParcelable(s1, thing.EU);
            }
            return this;
        }

        public Builder put(String s1, String s2)
        {
            s.l(s1);
            if (s2 != null)
            {
                EV.putString(s1, s2);
            }
            return this;
        }

        public Builder setDescription(String s1)
        {
            put("description", s1);
            return this;
        }

        public Builder setId(String s1)
        {
            if (s1 != null)
            {
                put("id", s1);
            }
            return this;
        }

        public Builder setName(String s1)
        {
            s.l(s1);
            put("name", s1);
            return this;
        }

        public Builder setType(String s1)
        {
            put("type", s1);
            return this;
        }

        public Builder setUrl(Uri uri)
        {
            s.l(uri);
            put("url", uri.toString());
            return this;
        }

        public Builder()
        {
        }
    }


    final Bundle EU;

    Thing(Bundle bundle)
    {
        EU = bundle;
    }

    public Bundle fR()
    {
        return EU;
    }
}
