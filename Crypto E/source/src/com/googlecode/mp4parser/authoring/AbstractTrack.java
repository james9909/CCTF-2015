// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.googlecode.mp4parser.authoring:
//            Track

public abstract class AbstractTrack
    implements Track
{

    String a;
    List b;
    Map c;

    public AbstractTrack(String s)
    {
        b = new ArrayList();
        c = new HashMap();
        a = s;
    }
}
