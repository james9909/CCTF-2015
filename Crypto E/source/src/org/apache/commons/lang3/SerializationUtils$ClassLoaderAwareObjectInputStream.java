// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package org.apache.commons.lang3:
//            SerializationUtils

static class primitiveTypes extends ObjectInputStream
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


    public (InputStream inputstream, ClassLoader classloader)
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
