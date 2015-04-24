// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Primitives;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

// Referenced classes of package com.google.gson.internal.bind:
//            TypeAdapterRuntimeTypeWrapper

public final class ReflectiveTypeAdapterFactory
    implements TypeAdapterFactory
{
    public static final class Adapter extends TypeAdapter
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
            BoundField boundfield;
            if (!jsonreader.hasNext())
            {
                break MISSING_BLOCK_LABEL_111;
            }
            String s = jsonreader.nextName();
            boundfield = (BoundField)b.get(s);
            if (boundfield == null)
            {
                break MISSING_BLOCK_LABEL_72;
            }
            if (boundfield.i)
            {
                break MISSING_BLOCK_LABEL_91;
            }
            IllegalStateException illegalstateexception;
            jsonreader.skipValue();
              goto _L1
            try
            {
                boundfield.a(jsonreader, obj);
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
                    BoundField boundfield = (BoundField)iterator.next();
                    if (boundfield.h)
                    {
                        jsonwriter.name(boundfield.g);
                        boundfield.a(jsonwriter, obj);
                    }
                } while (true);
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                throw new AssertionError();
            }
            jsonwriter.endObject();
        }

        private Adapter(ObjectConstructor objectconstructor, Map map)
        {
            a = objectconstructor;
            b = map;
        }

    }

    static abstract class BoundField
    {

        final String g;
        final boolean h;
        final boolean i;

        abstract void a(JsonReader jsonreader, Object obj);

        abstract void a(JsonWriter jsonwriter, Object obj);

        protected BoundField(String s, boolean flag, boolean flag1)
        {
            g = s;
            h = flag;
            i = flag1;
        }
    }


    private final ConstructorConstructor a;
    private final FieldNamingStrategy b;
    private final Excluder c;

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorconstructor, FieldNamingStrategy fieldnamingstrategy, Excluder excluder)
    {
        a = constructorconstructor;
        b = fieldnamingstrategy;
        c = excluder;
    }

    private BoundField a(Gson gson, Field field, String s, TypeToken typetoken, boolean flag, boolean flag1)
    {
        return new BoundField(s, flag, flag1, gson, typetoken, field, Primitives.isPrimitive(typetoken.getRawType())) {

            final TypeAdapter a;
            final Gson b;
            final TypeToken c;
            final Field d;
            final boolean e;
            final ReflectiveTypeAdapterFactory f;

            void a(JsonReader jsonreader, Object obj)
            {
                Object obj1 = a.read(jsonreader);
                if (obj1 != null || !e)
                {
                    d.set(obj, obj1);
                }
            }

            void a(JsonWriter jsonwriter, Object obj)
            {
                Object obj1 = d.get(obj);
                (new TypeAdapterRuntimeTypeWrapper(b, a, c.getType())).write(jsonwriter, obj1);
            }

            
            {
                f = ReflectiveTypeAdapterFactory.this;
                b = gson;
                c = typetoken;
                d = field;
                e = flag2;
                super(s, flag, flag1);
                a = b.getAdapter(c);
            }
        };
    }

    private String a(Field field)
    {
        SerializedName serializedname = (SerializedName)field.getAnnotation(com/google/gson/annotations/SerializedName);
        if (serializedname == null)
        {
            return b.translateName(field);
        } else
        {
            return serializedname.value();
        }
    }

    private Map a(Gson gson, TypeToken typetoken, Class class1)
    {
        LinkedHashMap linkedhashmap;
        java.lang.reflect.Type type;
        linkedhashmap = new LinkedHashMap();
        if (class1.isInterface())
        {
            return linkedhashmap;
        }
        type = typetoken.getType();
_L6:
        Field afield[];
        int i;
        int j;
        if (class1 == java/lang/Object)
        {
            break; /* Loop/switch isn't completed */
        }
        afield = class1.getDeclaredFields();
        i = afield.length;
        j = 0;
_L2:
        Field field;
        boolean flag;
        boolean flag1;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_198;
        }
        field = afield[j];
        flag = excludeField(field, true);
        flag1 = excludeField(field, false);
        if (flag || flag1)
        {
            break; /* Loop/switch isn't completed */
        }
_L4:
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        BoundField boundfield1;
        field.setAccessible(true);
        java.lang.reflect.Type type1 = com.google.gson.internal..Gson.Types.resolve(typetoken.getType(), class1, field.getGenericType());
        BoundField boundfield = a(gson, field, a(field), TypeToken.get(type1), flag, flag1);
        boundfield1 = (BoundField)linkedhashmap.put(boundfield.g, boundfield);
        if (boundfield1 == null) goto _L4; else goto _L3
_L3:
        throw new IllegalArgumentException((new StringBuilder()).append(type).append(" declares multiple JSON fields named ").append(boundfield1.g).toString());
        typetoken = TypeToken.get(com.google.gson.internal..Gson.Types.resolve(typetoken.getType(), class1, class1.getGenericSuperclass()));
        class1 = typetoken.getRawType();
        if (true) goto _L6; else goto _L5
_L5:
        return linkedhashmap;
    }

    public TypeAdapter create(Gson gson, TypeToken typetoken)
    {
        Class class1 = typetoken.getRawType();
        if (!java/lang/Object.isAssignableFrom(class1))
        {
            return null;
        } else
        {
            return new Adapter(a.get(typetoken), a(gson, typetoken, class1));
        }
    }

    public boolean excludeField(Field field, boolean flag)
    {
        return !c.excludeClass(field.getType(), flag) && !c.excludeField(field, flag);
    }
}
