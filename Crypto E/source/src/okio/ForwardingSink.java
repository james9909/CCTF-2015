// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;


// Referenced classes of package okio:
//            Sink, Buffer, Timeout

public abstract class ForwardingSink
    implements Sink
{

    private final Sink a;

    public ForwardingSink(Sink sink)
    {
        if (sink == null)
        {
            throw new IllegalArgumentException("delegate == null");
        } else
        {
            a = sink;
            return;
        }
    }

    public void a()
    {
        a.a();
    }

    public void a_(Buffer buffer, long l)
    {
        a.a_(buffer, l);
    }

    public Timeout b()
    {
        return a.b();
    }

    public void close()
    {
        a.close();
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getSimpleName()).append("(").append(a.toString()).append(")").toString();
    }
}
