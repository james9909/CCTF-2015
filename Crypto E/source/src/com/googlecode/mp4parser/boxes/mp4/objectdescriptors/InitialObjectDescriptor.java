// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.IsoTypeReader;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.objectdescriptors:
//            ObjectDescriptorBase, ObjectDescriptorFactory, ExtensionDescriptor, BaseDescriptor, 
//            ESDescriptor

public class InitialObjectDescriptor extends ObjectDescriptorBase
{

    int a;
    int b;
    int c;
    String d;
    int e;
    int f;
    int g;
    int h;
    int i;
    List j;
    List k;
    List l;
    private int m;

    public InitialObjectDescriptor()
    {
        j = new ArrayList();
        k = new ArrayList();
        l = new ArrayList();
    }

    public void a(ByteBuffer bytebuffer)
    {
        int j1;
        int i1 = IsoTypeReader.d(bytebuffer);
        m = (0xffc0 & i1) >> 6;
        a = (i1 & 0x3f) >> 5;
        b = (i1 & 0x1f) >> 4;
        j1 = -2 + a();
        if (a != 1) goto _L2; else goto _L1
_L1:
        int l1;
        c = IsoTypeReader.f(bytebuffer);
        d = IsoTypeReader.a(bytebuffer, c);
        l1 = j1 - (1 + c);
_L4:
        BaseDescriptor basedescriptor;
        if (l1 > 2)
        {
            basedescriptor = ObjectDescriptorFactory.a(-1, bytebuffer);
            if (!(basedescriptor instanceof ExtensionDescriptor))
            {
                break; /* Loop/switch isn't completed */
            }
            k.add((ExtensionDescriptor)basedescriptor);
        }
        return;
_L2:
        e = IsoTypeReader.f(bytebuffer);
        f = IsoTypeReader.f(bytebuffer);
        g = IsoTypeReader.f(bytebuffer);
        h = IsoTypeReader.f(bytebuffer);
        i = IsoTypeReader.f(bytebuffer);
        int k1 = j1 - 5;
        if (k1 > 2)
        {
            BaseDescriptor basedescriptor1 = ObjectDescriptorFactory.a(-1, bytebuffer);
            k1 -= basedescriptor1.a();
            if (basedescriptor1 instanceof ESDescriptor)
            {
                j.add((ESDescriptor)basedescriptor1);
                l1 = k1;
                continue; /* Loop/switch isn't completed */
            }
            l.add(basedescriptor1);
        }
        l1 = k1;
        if (true) goto _L4; else goto _L3
_L3:
        l.add(basedescriptor);
        return;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("InitialObjectDescriptor");
        stringbuilder.append("{objectDescriptorId=").append(m);
        stringbuilder.append(", urlFlag=").append(a);
        stringbuilder.append(", includeInlineProfileLevelFlag=").append(b);
        stringbuilder.append(", urlLength=").append(c);
        stringbuilder.append(", urlString='").append(d).append('\'');
        stringbuilder.append(", oDProfileLevelIndication=").append(e);
        stringbuilder.append(", sceneProfileLevelIndication=").append(f);
        stringbuilder.append(", audioProfileLevelIndication=").append(g);
        stringbuilder.append(", visualProfileLevelIndication=").append(h);
        stringbuilder.append(", graphicsProfileLevelIndication=").append(i);
        stringbuilder.append(", esDescriptors=").append(j);
        stringbuilder.append(", extensionDescriptors=").append(k);
        stringbuilder.append(", unknownDescriptors=").append(l);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
