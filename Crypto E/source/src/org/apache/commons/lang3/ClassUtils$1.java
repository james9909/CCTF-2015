// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.util.Iterator;
import org.apache.commons.lang3.mutable.MutableObject;

// Referenced classes of package org.apache.commons.lang3:
//            ClassUtils

static final class val.type
    implements Iterable
{

    final Class val$type;

    public Iterator iterator()
    {
        return new Iterator() {

            final ClassUtils._cls1 this$0;
            final MutableObject val$next;

            public boolean hasNext()
            {
                return next.getValue() != null;
            }

            public Class next()
            {
                Class class1 = (Class)next.getValue();
                next.setValue(class1.getSuperclass());
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

            
            {
                this$0 = ClassUtils._cls1.this;
                next = mutableobject;
                super();
            }
        };
    }

    _cls1.val.next(Class class1)
    {
        val$type = class1;
        super();
    }
}
