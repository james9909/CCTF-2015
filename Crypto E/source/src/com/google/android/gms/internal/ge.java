// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import java.util.concurrent.Future;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            gc, by

public class ge
    implements gc.a
{

    public ge()
    {
    }

    public bz.a a(gc gc1, JSONObject jsonobject)
    {
        return c(gc1, jsonobject);
    }

    public by c(gc gc1, JSONObject jsonobject)
    {
        Future future = gc1.a(jsonobject, "image", true);
        Future future1 = gc1.a(jsonobject, "secondary_image", false);
        return new by(jsonobject.getString("headline"), (Drawable)future.get(), jsonobject.getString("body"), (Drawable)future1.get(), jsonobject.getString("call_to_action"), jsonobject.getString("attribution"));
    }
}
