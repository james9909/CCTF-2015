// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

// Referenced classes of package com.snapchat.android.util.crypto:
//            CbcKeyAndIvWrapper

public class CbcKeyAndIvWrapperAdapter extends TypeAdapter
{

    public CbcKeyAndIvWrapperAdapter()
    {
    }

    private String b(JsonReader jsonreader)
    {
        if (jsonreader.peek() == JsonToken.NULL)
        {
            jsonreader.nextNull();
            return null;
        } else
        {
            return jsonreader.nextString();
        }
    }

    public CbcKeyAndIvWrapper a(JsonReader jsonreader)
    {
        jsonreader.beginArray();
        String s = jsonreader.nextString();
        String s1 = jsonreader.nextString();
        String s2 = b(jsonreader);
        long l = jsonreader.nextLong();
        jsonreader.endArray();
        return new CbcKeyAndIvWrapper(s, s1, s2, l);
    }

    public void a(JsonWriter jsonwriter, CbcKeyAndIvWrapper cbckeyandivwrapper)
    {
        jsonwriter.beginArray();
        jsonwriter.value(cbckeyandivwrapper.a());
        jsonwriter.value(cbckeyandivwrapper.b());
        jsonwriter.value(cbckeyandivwrapper.c());
        jsonwriter.value(cbckeyandivwrapper.d());
        jsonwriter.endArray();
    }

    public Object read(JsonReader jsonreader)
    {
        return a(jsonreader);
    }

    public void write(JsonWriter jsonwriter, Object obj)
    {
        a(jsonwriter, (CbcKeyAndIvWrapper)obj);
    }
}
