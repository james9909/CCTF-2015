// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.util.Iterator;
import org.apache.commons.lang3.mutable.MutableObject;

// Referenced classes of package org.apache.commons.lang3:
//            ClassUtils

class Object
    implements Iterator
{

    final <init> this$0;
    final MutableObject val$next;

    public boolean hasNext()
    {
        return val$next.getValue() != null;
    }

    public Class next()
    {
        Class class1 = (Class)val$next.getValue();
        val$next.setValue(class1.getSuperclass());
        return class1;
    }

    public volatile Object next()
    {
        return next();
    }

    public void remove()
    {
        throw new UnsupportedOperationException();
    }

    Object()
    {
        this$0 = final_obj;
        val$next = MutableObject.this;
        super();
    }

    // Unreferenced inner class org/apache/commons/lang3/ClassUtils$1

/* anonymous class */
    static final class ClassUtils._cls1
        implements Iterable
    {

        final Class val$type;

        public Iterator iterator()
        {
            return (new MutableObject(type)). new ClassUtils._cls1._cls1();
        }

            
            {
                type = class1;
                super();
            }
    }

}
