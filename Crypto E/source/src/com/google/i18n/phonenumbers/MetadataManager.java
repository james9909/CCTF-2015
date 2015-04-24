// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.google.i18n.phonenumbers:
//            AlternateFormatsCountryCodeSet, ShortNumbersRegionCodeSet, PhoneNumberMatcher

class MetadataManager
{

    private static final Logger a = Logger.getLogger(com/google/i18n/phonenumbers/MetadataManager.getName());
    private static final Map b = Collections.synchronizedMap(new HashMap());
    private static final Map c = Collections.synchronizedMap(new HashMap());
    private static final Set d = AlternateFormatsCountryCodeSet.a();
    private static final Set e = ShortNumbersRegionCodeSet.a();

    private MetadataManager()
    {
    }

    static Phonemetadata.PhoneMetadata a(int i)
    {
        if (!d.contains(Integer.valueOf(i)))
        {
            return null;
        }
        synchronized (b)
        {
            if (!b.containsKey(Integer.valueOf(i)))
            {
                b(i);
            }
        }
        return (Phonemetadata.PhoneMetadata)b.get(Integer.valueOf(i));
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static void a(InputStream inputstream)
    {
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        inputstream.close();
        return;
        IOException ioexception;
        ioexception;
        a.log(Level.WARNING, ioexception.toString());
        return;
    }

    private static void b(int i)
    {
        InputStream inputstream;
        String s = String.valueOf(String.valueOf("/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto_"));
        inputstream = com/google/i18n/phonenumbers/PhoneNumberMatcher.getResourceAsStream((new StringBuilder(11 + s.length())).append(s).append(i).toString());
        ObjectInputStream objectinputstream = new ObjectInputStream(inputstream);
        Phonemetadata.PhoneMetadataCollection phonemetadatacollection = new Phonemetadata.PhoneMetadataCollection();
        phonemetadatacollection.readExternal(objectinputstream);
        Phonemetadata.PhoneMetadata phonemetadata;
        for (Iterator iterator = phonemetadatacollection.a().iterator(); iterator.hasNext(); b.put(Integer.valueOf(phonemetadata.l()), phonemetadata))
        {
            phonemetadata = (Phonemetadata.PhoneMetadata)iterator.next();
        }

          goto _L1
        IOException ioexception;
        ioexception;
_L5:
        a.log(Level.WARNING, ioexception.toString());
        a(objectinputstream);
        return;
_L1:
        a(objectinputstream);
        return;
        Exception exception;
        exception;
        objectinputstream = null;
_L3:
        a(objectinputstream);
        throw exception;
        exception;
        if (true) goto _L3; else goto _L2
_L2:
        ioexception;
        objectinputstream = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

}
