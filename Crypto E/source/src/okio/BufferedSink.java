// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.OutputStream;

// Referenced classes of package okio:
//            Sink, Source, ByteString, Buffer

public interface BufferedSink
    extends Sink
{

    public abstract long a(Source source);

    public abstract BufferedSink b(String s);

    public abstract BufferedSink b(ByteString bytestring);

    public abstract BufferedSink c(byte abyte0[]);

    public abstract BufferedSink c(byte abyte0[], int j, int k);

    public abstract Buffer d();

    public abstract OutputStream e();

    public abstract BufferedSink f(int j);

    public abstract BufferedSink g();

    public abstract BufferedSink g(int j);

    public abstract BufferedSink h(int j);

    public abstract BufferedSink i(int j);

    public abstract BufferedSink i(long l);

    public abstract BufferedSink w();
}
