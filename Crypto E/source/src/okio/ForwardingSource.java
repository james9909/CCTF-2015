// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;


// Referenced classes of package okio:
//            Source, Buffer, Timeout

public abstract class ForwardingSource
    implements Source
{

    private final Source a;

    public ForwardingSource(Source source)
    {
        if (source == null)
        {
            throw new IllegalArgumentException("delegate == null");
        } else
        {
            a = source;
            return;
        }
    }

    public long a(Buffer buffer, long l)
    {
        return a.a(buffer, l);
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
