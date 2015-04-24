// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

// Referenced classes of package org.apache.commons.lang3:
//            ClassUtils

static final class val.classes
    implements Iterable
{

    final Iterable val$classes;

    public Iterator iterator()
    {
        HashSet hashset = new HashSet();
        return new Iterator() {

            Iterator interfaces;
            final ClassUtils._cls2 this$0;
            final Set val$seenInterfaces;
            final Iterator val$wrapped;

            private void walkInterfaces(Set set, Class class1)
            {
                Class aclass[] = class1.getInterfaces();
                int i = aclass.length;
                for (int j = 0; j < i; j++)
                {
                    Class class2 = aclass[j];
                    if (!seenInterfaces.contains(class2))
                    {
                        set.add(class2);
                    }
                    walkInterfaces(set, class2);
                }

            }

            public boolean hasNext()
            {
                return interfaces.hasNext() || wrapped.hasNext();
            }

            public Class next()
            {
                if (interfaces.hasNext())
                {
                    Class class2 = (Class)interfaces.next();
                    seenInterfaces.add(class2);
                    return class2;
                } else
                {
                    Class class1 = (Class)wrapped.next();
                    LinkedHashSet linkedhashset = new LinkedHashSet();
                    walkInterfaces(linkedhashset, class1);
                    interfaces = linkedhashset.iterator();
                    return class1;
                }
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
                this$0 = ClassUtils._cls2.this;
                wrapped = iterator1;
                seenInterfaces = set;
                super();
                interfaces = Collections.emptySet().iterator();
            }
        };
    }

    _cls1.interfaces(Iterable iterable)
    {
        val$classes = iterable;
        super();
    }
}
