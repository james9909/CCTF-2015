// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import java.util.zip.Inflater;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            NameValueBlockReader, Spdy3

class a extends Inflater
{

    final NameValueBlockReader a;

    public int inflate(byte abyte0[], int i, int j)
    {
        int k = super.inflate(abyte0, i, j);
        if (k == 0 && needsDictionary())
        {
            setDictionary(Spdy3.a);
            k = super.inflate(abyte0, i, j);
        }
        return k;
    }

    (NameValueBlockReader namevalueblockreader)
    {
        a = namevalueblockreader;
        super();
    }
}
