// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package org.apache.commons.lang3:
//            SerializationException

public class SerializationUtils
{
    static class ClassLoaderAwareObjectInputStream extends ObjectInputStream
    {

        private static final Map primitiveTypes = new HashMap();
        private final ClassLoader classLoader;

        protected Class resolveClass(ObjectStreamClass objectstreamclass)
        {
            String s = objectstreamclass.getName();
            Class class3 = Class.forName(s, false, classLoader);
            Class class1 = class3;
_L2:
            return class1;
            ClassNotFoundException classnotfoundexception;
            classnotfoundexception;
            Class class2 = Class.forName(s, false, Thread.currentThread().getContextClassLoader());
            return class2;
            ClassNotFoundException classnotfoundexception1;
            classnotfoundexception1;
            class1 = (Class)primitiveTypes.get(s);
            if (class1 == null)
            {
                throw classnotfoundexception1;
            }
            if (true) goto _L2; else goto _L1
_L1:
        }


        public ClassLoaderAwareObjectInputStream(InputStream inputstream, ClassLoader classloader)
        {
            super(inputstream);
            classLoader = classloader;
            primitiveTypes.put("byte", Byte.TYPE);
            primitiveTypes.put("short", Short.TYPE);
            primitiveTypes.put("int", Integer.TYPE);
            primitiveTypes.put("long", Long.TYPE);
            primitiveTypes.put("float", Float.TYPE);
            primitiveTypes.put("double", Double.TYPE);
            primitiveTypes.put("boolean", Boolean.TYPE);
            primitiveTypes.put("char", Character.TYPE);
            primitiveTypes.put("void", Void.TYPE);
        }
    }


    public SerializationUtils()
    {
    }

    public static Serializable clone(Serializable serializable)
    {
        Serializable serializable1 = null;
        if (serializable != null) goto _L2; else goto _L1
_L1:
        return serializable1;
_L2:
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(serialize(serializable));
        ClassLoaderAwareObjectInputStream classloaderawareobjectinputstream = new ClassLoaderAwareObjectInputStream(bytearrayinputstream, serializable.getClass().getClassLoader());
        serializable1 = (Serializable)classloaderawareobjectinputstream.readObject();
        if (classloaderawareobjectinputstream != null)
        {
            try
            {
                classloaderawareobjectinputstream.close();
            }
            catch (IOException ioexception2)
            {
                throw new SerializationException("IOException on closing cloned object data InputStream.", ioexception2);
            }
            return serializable1;
        }
        if (true) goto _L1; else goto _L3
_L3:
        ClassNotFoundException classnotfoundexception1;
        classnotfoundexception1;
        ClassNotFoundException classnotfoundexception;
        classloaderawareobjectinputstream = null;
        classnotfoundexception = classnotfoundexception1;
_L7:
        throw new SerializationException("ClassNotFoundException while reading cloned object data", classnotfoundexception);
        Exception exception;
        exception;
_L4:
        IOException ioexception1;
        IOException ioexception3;
        if (classloaderawareobjectinputstream != null)
        {
            try
            {
                classloaderawareobjectinputstream.close();
            }
            catch (IOException ioexception)
            {
                throw new SerializationException("IOException on closing cloned object data InputStream.", ioexception);
            }
        }
        throw exception;
        ioexception3;
        classloaderawareobjectinputstream = null;
        ioexception1 = ioexception3;
_L5:
        throw new SerializationException("IOException while reading cloned object data", ioexception1);
        Exception exception1;
        exception1;
        exception = exception1;
        classloaderawareobjectinputstream = null;
          goto _L4
        ioexception1;
          goto _L5
        classnotfoundexception;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static Object deserialize(InputStream inputstream)
    {
        ObjectInputStream objectinputstream;
        if (inputstream == null)
        {
            throw new IllegalArgumentException("The InputStream must not be null");
        }
        objectinputstream = null;
        ObjectInputStream objectinputstream1 = new ObjectInputStream(inputstream);
        Object obj = objectinputstream1.readObject();
        ClassCastException classcastexception;
        Exception exception;
        ClassNotFoundException classnotfoundexception;
        IOException ioexception1;
        if (objectinputstream1 != null)
        {
            try
            {
                objectinputstream1.close();
            }
            catch (IOException ioexception2)
            {
                return obj;
            }
        }
        return obj;
        classcastexception;
        objectinputstream1 = null;
_L3:
        throw new SerializationException(classcastexception);
        exception;
        objectinputstream = objectinputstream1;
_L4:
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception;
        classnotfoundexception;
_L2:
        throw new SerializationException(classnotfoundexception);
_L1:
        throw new SerializationException(ioexception1);
        ioexception1;
        objectinputstream = objectinputstream1;
          goto _L1
        classnotfoundexception;
        objectinputstream = objectinputstream1;
          goto _L2
        classcastexception;
          goto _L3
        exception;
          goto _L4
        ioexception1;
        objectinputstream = null;
          goto _L1
    }

    public static Object deserialize(byte abyte0[])
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("The byte[] must not be null");
        } else
        {
            return deserialize(((InputStream) (new ByteArrayInputStream(abyte0))));
        }
    }

    public static Serializable roundtrip(Serializable serializable)
    {
        return (Serializable)deserialize(serialize(serializable));
    }

    public static void serialize(Serializable serializable, OutputStream outputstream)
    {
        if (outputstream == null)
        {
            throw new IllegalArgumentException("The OutputStream must not be null");
        }
        ObjectOutputStream objectoutputstream = new ObjectOutputStream(outputstream);
        objectoutputstream.writeObject(serializable);
        if (objectoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        objectoutputstream.close();
        return;
        IOException ioexception;
        ioexception;
        objectoutputstream = null;
_L4:
        throw new SerializationException(ioexception);
        Exception exception;
        exception;
_L2:
        IOException ioexception2;
        if (objectoutputstream != null)
        {
            try
            {
                objectoutputstream.close();
            }
            catch (IOException ioexception1) { }
        }
        throw exception;
        ioexception2;
        return;
        exception;
        objectoutputstream = null;
        if (true) goto _L2; else goto _L1
_L1:
        ioexception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static byte[] serialize(Serializable serializable)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream(512);
        serialize(serializable, ((OutputStream) (bytearrayoutputstream)));
        return bytearrayoutputstream.toByteArray();
    }
}
