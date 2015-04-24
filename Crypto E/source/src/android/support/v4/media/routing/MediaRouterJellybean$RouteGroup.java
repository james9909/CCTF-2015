// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.routing;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package android.support.v4.media.routing:
//            MediaRouterJellybean

public static final class 
{

    public static List getGroupedRoutes(Object obj)
    {
        android.media.llybean.RouteGroup routegroup = (android.media.llybean.RouteGroup)obj;
        int i = routegroup.ount();
        ArrayList arraylist = new ArrayList(i);
        for (int j = 0; j < i; j++)
        {
            arraylist.add(routegroup.t(j));
        }

        return arraylist;
    }

    public ()
    {
    }
}
