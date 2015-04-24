// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            hf

public class dq
{
    public static final class a
    {

        private boolean sd;
        private boolean se;
        private boolean sf;
        private boolean sg;
        private boolean sh;

        static boolean a(a a1)
        {
            return a1.sd;
        }

        static boolean b(a a1)
        {
            return a1.se;
        }

        static boolean c(a a1)
        {
            return a1.sf;
        }

        static boolean d(a a1)
        {
            return a1.sg;
        }

        static boolean e(a a1)
        {
            return a1.sh;
        }

        public dq cb()
        {
            return new dq(this);
        }

        public a l(boolean flag)
        {
            sd = flag;
            return this;
        }

        public a m(boolean flag)
        {
            se = flag;
            return this;
        }

        public a n(boolean flag)
        {
            sf = flag;
            return this;
        }

        public a o(boolean flag)
        {
            sg = flag;
            return this;
        }

        public a p(boolean flag)
        {
            sh = flag;
            return this;
        }

        public a()
        {
        }
    }


    private final boolean sd;
    private final boolean se;
    private final boolean sf;
    private final boolean sg;
    private final boolean sh;

    private dq(a a1)
    {
        sd = a.a(a1);
        se = a.b(a1);
        sf = a.c(a1);
        sg = a.d(a1);
        sh = a.e(a1);
    }


    public JSONObject toJson()
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = (new JSONObject()).put("sms", sd).put("tel", se).put("calendar", sf).put("storePicture", sg).put("inlineVideo", sh);
        }
        catch (JSONException jsonexception)
        {
            hf.b("Error occured while obtaining the MRAID capabilities.", jsonexception);
            return null;
        }
        return jsonobject;
    }
}
