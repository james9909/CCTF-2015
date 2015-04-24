// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.chat;

import com.snapchat.android.model.server.chat.SCMessage;
import com.snapchat.android.util.GsonWrapper;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.OutputStream;
import org.apache.commons.io.Charsets;

public class SCMessageOutputStream
    implements Closeable
{

    private final DataOutputStream a;
    private final GsonWrapper b;

    public SCMessageOutputStream(OutputStream outputstream, GsonWrapper gsonwrapper)
    {
        a = new DataOutputStream(new BufferedOutputStream(outputstream));
        b = gsonwrapper;
    }

    public void a(SCMessage scmessage)
    {
        byte abyte0[] = b.a(scmessage).getBytes(Charsets.UTF_8);
        a.writeInt(abyte0.length);
        a.write(abyte0);
        a.flush();
    }

    public void close()
    {
        a.close();
    }
}
