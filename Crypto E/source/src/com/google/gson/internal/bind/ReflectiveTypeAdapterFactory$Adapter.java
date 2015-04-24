// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.google.gson.internal.bind:
//            ReflectiveTypeAdapterFactory

public static final class <init> extends TypeAdapter
{

    private final ObjectConstructor a;
    private final Map b;

    public Object read(JsonReader jsonreader)
    {
        Object obj;
        if (jsonreader.peek() == JsonToken.NULL)
        {
            jsonreader.nextNull();
            return null;
        }
        obj = a.construct();
        jsonreader.beginObject();
_L1:
        ld ld;
        if (!jsonreader.hasNext())
        {
            break MISSING_BLOCK_LABEL_111;
        }
        String s = jsonreader.nextName();
        ld = (ld)b.get(s);
        if (ld == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        if (ld.i)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        IllegalStateException illegalstateexception;
        jsonreader.skipValue();
          goto _L1
        try
        {
            ld.a(jsonreader, obj);
        }
        // Misplaced declaration of an exception variable
        catch (IllegalStateException illegalstateexception)
        {
            throw new JsonSyntaxException(illegalstateexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new AssertionError(illegalaccessexception);
        }
          goto _L1
        jsonreader.endObject();
        return obj;
    }

    public void write(JsonWriter jsonwriter, Object obj)
    {
        if (obj == null)
        {
            jsonwriter.nullValue();
            return;
        }
        jsonwriter.beginObject();
        try
        {
            Iterator iterator = b.values().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                ld ld = (ld)iterator.next();
                if (ld.h)
                {
                    jsonwriter.name(ld.g);
                    ld.a(jsonwriter, obj);
                }
            } while (true);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new AssertionError();
        }
        jsonwriter.endObject();
    }

    private ld(ObjectConstructor objectconstructor, Map map)
    {
        a = objectconstructor;
        b = map;
    }

    b(ObjectConstructor objectconstructor, Map map, b b1)
    {
        this(objectconstructor, map);
    }
}
