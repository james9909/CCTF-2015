// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.IsoTypeReader;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.objectdescriptors:
//            DecoderSpecificInfo, SLConfigDescriptor, BaseDescriptor, ExtensionDescriptor, 
//            ObjectDescriptorBase, ProfileLevelIndicationDescriptor, AudioSpecificConfig, ExtensionProfileLevelDescriptor, 
//            ESDescriptor, DecoderConfigDescriptor, Descriptor, UnknownDescriptor

public class ObjectDescriptorFactory
{

    protected static Logger a;
    protected static Map b;

    public ObjectDescriptorFactory()
    {
    }

    public static BaseDescriptor a(int i, ByteBuffer bytebuffer)
    {
        int j;
        Class class1;
        j = IsoTypeReader.f(bytebuffer);
        Map map = (Map)b.get(Integer.valueOf(i));
        if (map == null)
        {
            map = (Map)b.get(Integer.valueOf(-1));
        }
        class1 = (Class)map.get(Integer.valueOf(j));
        if (class1 != null && !class1.isInterface() && !Modifier.isAbstract(class1.getModifiers())) goto _L2; else goto _L1
_L1:
        Object obj;
        a.warning((new StringBuilder("No ObjectDescriptor found for objectTypeIndication ")).append(Integer.toHexString(i)).append(" and tag ").append(Integer.toHexString(j)).append(" found: ").append(class1).toString());
        obj = new UnknownDescriptor();
_L4:
        ((BaseDescriptor) (obj)).a(j, bytebuffer);
        return ((BaseDescriptor) (obj));
_L2:
        try
        {
            obj = (BaseDescriptor)class1.newInstance();
        }
        catch (Exception exception)
        {
            a.log(Level.SEVERE, (new StringBuilder("Couldn't instantiate BaseDescriptor class ")).append(class1).append(" for objectTypeIndication ").append(i).append(" and tag ").append(j).toString(), exception);
            throw new RuntimeException(exception);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static 
    {
        Iterator iterator;
        a = Logger.getLogger(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory.getName());
        b = new HashMap();
        HashSet hashset = new HashSet();
        hashset.add(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/ExtensionDescriptor);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorBase);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/ExtensionProfileLevelDescriptor);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor);
        hashset.add(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor);
        iterator = hashset.iterator();
_L2:
        if (!iterator.hasNext())
        {
            return;
        }
        Class class1 = (Class)iterator.next();
        Descriptor descriptor = (Descriptor)class1.getAnnotation(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/Descriptor);
        int ai[] = descriptor.a();
        int i = descriptor.b();
        Object obj = (Map)b.get(Integer.valueOf(i));
        if (obj == null)
        {
            obj = new HashMap();
        }
        int j = ai.length;
        int k = 0;
        do
        {
label0:
            {
                if (k < j)
                {
                    break label0;
                }
                b.put(Integer.valueOf(i), obj);
            }
            if (true)
            {
                continue;
            }
            ((Map) (obj)).put(Integer.valueOf(ai[k]), class1);
            k++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }
}
