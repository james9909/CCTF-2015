// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.util;

import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser.util:
//            Logger

public class JuliLogger extends com.googlecode.mp4parser.util.Logger
{

    Logger a;

    public JuliLogger(String s)
    {
        a = Logger.getLogger(s);
    }

    public void a(String s)
    {
        a.log(Level.FINE, s);
    }

    public void b(String s)
    {
        a.log(Level.SEVERE, s);
    }
}
