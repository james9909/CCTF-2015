// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;


// Referenced classes of package crittercism.android:
//            c

public static final class l extends Enum
{

    public static final m a;
    public static final m b;
    public static final m c;
    public static final m d;
    public static final m e;
    public static final m f;
    public static final m g;
    public static final m h;
    public static final m i;
    public static final m j;
    public static final m k;
    private static final m m[];
    private String l;

    public static l valueOf(String s)
    {
        return (l)Enum.valueOf(crittercism/android/c$a, s);
    }

    public static l[] values()
    {
        return (l[])m.clone();
    }

    public final String toString()
    {
        return l;
    }

    static 
    {
        a = new <init>("NOT_LOGGED_YET", 0, "Not logged");
        b = new <init>("INPUT_STREAM_READ", 1, "InputStream.read()");
        c = new <init>("INPUT_STREAM_CLOSE", 2, "InputStream.close()");
        d = new <init>("SOCKET_CLOSE", 3, "Socket.close()");
        e = new <init>("LEGACY_JAVANET", 4, "Legacy java.net");
        f = new <init>("HTTP_CONTENT_LENGTH_PARSER", 5, "parse()");
        g = new <init>("INPUT_STREAM_FINISHED", 6, "finishedMessage()");
        h = new <init>("PARSING_INPUT_STREAM_LOG_ERROR", 7, "logError()");
        i = new <init>("SOCKET_IMPL_CONNECT", 8, "MonitoredSocketImpl.connect()");
        j = new <init>("SSL_SOCKET_START_HANDSHAKE", 9, "MonitoredSSLSocket.startHandshake");
        k = new <init>("UNIT_TEST", 10, "Unit test");
        l al[] = new <init>[11];
        al[0] = a;
        al[1] = b;
        al[2] = c;
        al[3] = d;
        al[4] = e;
        al[5] = f;
        al[6] = g;
        al[7] = h;
        al[8] = i;
        al[9] = j;
        al[10] = k;
        m = al;
    }

    private (String s, int i1, String s1)
    {
        super(s, i1);
        l = s1;
    }
}
