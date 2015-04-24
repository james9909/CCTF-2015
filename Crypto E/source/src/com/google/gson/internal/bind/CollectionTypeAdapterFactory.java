// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.google.gson.internal.bind:
//            TypeAdapterRuntimeTypeWrapper

public final class CollectionTypeAdapterFactory
    implements TypeAdapterFactory
{
    static final class Adapter extends TypeAdapter
    {

        private final TypeAdapter a;
        private final ObjectConstructor b;

        public Collection a(JsonReader jsonreader)
        {
            if (jsonreader.peek() == JsonToken.NULL)
            {
                jsonreader.nextNull();
                return null;
            }
            Collection collection = (Collection)b.construct();
            jsonreader.beginArray();
            for (; jsonreader.hasNext(); collection.add(a.read(jsonreader))) { }
            jsonreader.endArray();
            return collection;
        }

        public void a(JsonWriter jsonwriter, Collection collection)
        {
            if (collection == null)
            {
                jsonwriter.nullValue();
                return;
            }
            jsonwriter.beginArray();
            Object obj;
            for (Iterator iterator = collection.iterator(); iterator.hasNext(); a.write(jsonwriter, obj))
            {
                obj = iterator.next();
            }

            jsonwriter.endArray();
        }

        public Object read(JsonReader jsonreader)
        {
            return a(jsonreader);
        }

        public void write(JsonWriter jsonwriter, Object obj)
        {
            a(jsonwriter, (Collection)obj);
        }

        public Adapter(Gson gson, Type type, TypeAdapter typeadapter, ObjectConstructor objectconstructor)
        {
            a = new TypeAdapterRuntimeTypeWrapper(gson, typeadapter, type);
            b = objectconstructor;
        }
    }


    private final ConstructorConstructor a;

    public CollectionTypeAdapterFactory(ConstructorConstructor constructorconstructor)
    {
        a = constructorconstructor;
    }

    public TypeAdapter create(Gson gson, TypeToken typetoken)
    {
        Type type = typetoken.getType();
        Class class1 = typetoken.getRawType();
        if (!java/util/Collection.isAssignableFrom(class1))
        {
            return null;
        } else
        {
            Type type1 = com.google.gson.internal..Gson.Types.getCollectionElementType(type, class1);
            return new Adapter(gson, type1, gson.getAdapter(TypeToken.get(type1)), a.get(typetoken));
        }
    }
}
