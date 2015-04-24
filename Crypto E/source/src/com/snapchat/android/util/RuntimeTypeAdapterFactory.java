// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class RuntimeTypeAdapterFactory
    implements TypeAdapterFactory
{

    private final Class a;
    private final String b;
    private final Map c;
    private final Map d;

    static String a(RuntimeTypeAdapterFactory runtimetypeadapterfactory)
    {
        return runtimetypeadapterfactory.b;
    }

    static Class b(RuntimeTypeAdapterFactory runtimetypeadapterfactory)
    {
        return runtimetypeadapterfactory.a;
    }

    static Map c(RuntimeTypeAdapterFactory runtimetypeadapterfactory)
    {
        return runtimetypeadapterfactory.d;
    }

    public TypeAdapter create(Gson gson, TypeToken typetoken)
    {
        if (typetoken.getRawType() != a)
        {
            return null;
        }
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        LinkedHashMap linkedhashmap1 = new LinkedHashMap();
        java.util.Map.Entry entry;
        TypeAdapter typeadapter;
        for (Iterator iterator = c.entrySet().iterator(); iterator.hasNext(); linkedhashmap1.put(entry.getValue(), typeadapter))
        {
            entry = (java.util.Map.Entry)iterator.next();
            typeadapter = gson.getDelegateAdapter(this, TypeToken.get((Class)entry.getValue()));
            linkedhashmap.put(entry.getKey(), typeadapter);
        }

        return new TypeAdapter(linkedhashmap, linkedhashmap1) {

            final Map a;
            final Map b;
            final RuntimeTypeAdapterFactory c;

            public Object read(JsonReader jsonreader)
            {
                JsonElement jsonelement = Streams.parse(jsonreader);
                JsonElement jsonelement1 = jsonelement.getAsJsonObject().remove(RuntimeTypeAdapterFactory.a(c));
                if (jsonelement1 == null)
                {
                    throw new JsonParseException((new StringBuilder()).append("cannot deserialize ").append(RuntimeTypeAdapterFactory.b(c)).append(" because it does not define a field named ").append(RuntimeTypeAdapterFactory.a(c)).toString());
                }
                String s = jsonelement1.getAsString();
                TypeAdapter typeadapter1 = (TypeAdapter)a.get(s);
                if (typeadapter1 == null)
                {
                    throw new JsonParseException((new StringBuilder()).append("cannot deserialize ").append(RuntimeTypeAdapterFactory.b(c)).append(" subtype named ").append(s).append("; did you forget to register a subtype?").toString());
                } else
                {
                    return typeadapter1.fromJsonTree(jsonelement);
                }
            }

            public void write(JsonWriter jsonwriter, Object obj)
            {
                Class class1 = obj.getClass();
                String s = (String)RuntimeTypeAdapterFactory.c(c).get(class1);
                TypeAdapter typeadapter1 = (TypeAdapter)b.get(class1);
                if (typeadapter1 == null)
                {
                    throw new JsonParseException((new StringBuilder()).append("cannot serialize ").append(class1.getName()).append("; did you forget to register a subtype?").toString());
                }
                JsonObject jsonobject = typeadapter1.toJsonTree(obj).getAsJsonObject();
                if (jsonobject.has(RuntimeTypeAdapterFactory.a(c)))
                {
                    throw new JsonParseException((new StringBuilder()).append("cannot serialize ").append(class1.getName()).append(" because it already defines a field named ").append(RuntimeTypeAdapterFactory.a(c)).toString());
                }
                JsonObject jsonobject1 = new JsonObject();
                jsonobject1.add(RuntimeTypeAdapterFactory.a(c), new JsonPrimitive(s));
                java.util.Map.Entry entry1;
                for (Iterator iterator1 = jsonobject.entrySet().iterator(); iterator1.hasNext(); jsonobject1.add((String)entry1.getKey(), (JsonElement)entry1.getValue()))
                {
                    entry1 = (java.util.Map.Entry)iterator1.next();
                }

                Streams.write(jsonobject1, jsonwriter);
            }

            
            {
                c = RuntimeTypeAdapterFactory.this;
                a = map;
                b = map1;
                super();
            }
        };
    }
}
