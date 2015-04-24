// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.InputStream;

// Referenced classes of package okio:
//            Source, Buffer, ByteString

public interface BufferedSource
    extends Source
{

    public abstract int a(byte abyte0[], int j, int i1);

    public abstract long a(byte byte0);

    public abstract void a(long l1);

    public abstract void a(byte abyte0[]);

    public abstract void b(Buffer buffer, long l1);

    public abstract ByteString c(long l1);

    public abstract Buffer d();

    public abstract byte[] f(long l1);

    public abstract void g(long l1);

    public abstract boolean h();

    public abstract InputStream i();

    public abstract byte k();

    public abstract short l();

    public abstract int m();

    public abstract long n();

    public abstract short o();

    public abstract int p();

    public abstract String s();

    public abstract byte[] t();
}
