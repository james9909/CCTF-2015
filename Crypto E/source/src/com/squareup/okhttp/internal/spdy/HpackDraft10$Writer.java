// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.util.List;
import java.util.Map;
import okio.Buffer;
import okio.ByteString;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            Header, HpackDraft10

static final class a
{

    private final Buffer a;

    void a(int i, int j, int k)
    {
        if (i < j)
        {
            a.a(k | i);
            return;
        }
        a.a(k | j);
        int l;
        for (l = i - j; l >= 128; l >>>= 7)
        {
            int i1 = l & 0x7f;
            a.a(i1 | 0x80);
        }

        a.a(l);
    }

    void a(List list)
    {
        int i = list.size();
        int j = 0;
        while (j < i) 
        {
            ByteString bytestring = ((Header)list.get(j)).h.d();
            Integer integer = (Integer)HpackDraft10.b().get(bytestring);
            if (integer != null)
            {
                a(1 + integer.intValue(), 15, 0);
                a(((Header)list.get(j)).i);
            } else
            {
                a.a(0);
                a(bytestring);
                a(((Header)list.get(j)).i);
            }
            j++;
        }
    }

    void a(ByteString bytestring)
    {
        a(bytestring.e(), 127, 0);
        a.a(bytestring);
    }

    (Buffer buffer)
    {
        a = buffer;
    }
}
