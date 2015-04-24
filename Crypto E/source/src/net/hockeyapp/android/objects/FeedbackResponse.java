// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.objects;

import java.io.Serializable;

// Referenced classes of package net.hockeyapp.android.objects:
//            Feedback

public class FeedbackResponse
    implements Serializable
{

    private String a;
    private Feedback b;
    private String c;

    public FeedbackResponse()
    {
    }

    public String a()
    {
        return a;
    }

    public void a(String s)
    {
        a = s;
    }

    public void a(Feedback feedback)
    {
        b = feedback;
    }

    public Feedback b()
    {
        return b;
    }

    public void b(String s)
    {
        c = s;
    }

    public String c()
    {
        return c;
    }
}
