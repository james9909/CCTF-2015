// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.otto;

import java.util.Map;

// Referenced classes of package com.squareup.otto:
//            AnnotatedHandlerFinder

interface HandlerFinder
{

    public static final HandlerFinder a = new HandlerFinder() {

        public Map a(Object obj)
        {
            return AnnotatedHandlerFinder.a(obj);
        }

        public Map b(Object obj)
        {
            return AnnotatedHandlerFinder.b(obj);
        }

    };

    public abstract Map a(Object obj);

    public abstract Map b(Object obj);

}
