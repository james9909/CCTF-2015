// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.yorick;


// Referenced classes of package com.snapchat.yorick:
//            HockeyAppReporter, ParsedTrace

class a
    implements Runnable
{

    final ParsedTrace a;
    final HockeyAppReporter b;

    public void run()
    {
        b.b(a);
    }

    (HockeyAppReporter hockeyappreporter, ParsedTrace parsedtrace)
    {
        b = hockeyappreporter;
        a = parsedtrace;
        super();
    }
}
