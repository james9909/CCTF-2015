// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

// Referenced classes of package com.google.gson.internal.bind:
//            TypeAdapters

static final class  extends TypeAdapter
{

    public String a(JsonReader jsonreader)
    {
        JsonToken jsontoken = jsonreader.peek();
        if (jsontoken == JsonToken.NULL)
        {
            jsonreader.nextNull();
            return null;
        }
        if (jsontoken == JsonToken.BOOLEAN)
        {
            return Boolean.toString(jsonreader.nextBoolean());
        } else
        {
            return jsonreader.nextString();
        }
    }

    public void a(JsonWriter jsonwriter, String s)
    {
        jsonwriter.value(s);
    }

    public Object read(JsonReader jsonreader)
    {
        return a(jsonreader);
    }

    public void write(JsonWriter jsonwriter, Object obj)
    {
        a(jsonwriter, (String)obj);
    }

    ()
    {
    }
}
