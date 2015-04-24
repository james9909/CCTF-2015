// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;

import com.coremedia.iso.boxes.Box;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.coremedia.iso:
//            AbstractBoxParser, Hex

public class PropertyBoxParserImpl extends AbstractBoxParser
{

    static String g[] = new String[0];
    Properties b;
    Pattern c;
    StringBuilder d;
    String e;
    String f[];

    public PropertyBoxParserImpl(Properties properties)
    {
        c = Pattern.compile("(.*)\\((.*?)\\)");
        d = new StringBuilder();
        b = properties;
    }

    public Box a(String s, byte abyte0[], String s1)
    {
        b(s, abyte0, s1);
        Class class1 = Class.forName(e);
        if (f.length <= 0) goto _L2; else goto _L1
_L1:
        Class aclass[];
        Object aobj[];
        aclass = new Class[f.length];
        aobj = new Object[f.length];
        int i = 0;
_L11:
        if (i >= f.length)
        {
            return (Box)class1.getConstructor(aclass).newInstance(aobj);
        }
        if (!"userType".equals(f[i])) goto _L4; else goto _L3
_L3:
        aobj[i] = abyte0;
        aclass[i] = [B;
          goto _L5
_L4:
        if (!"type".equals(f[i])) goto _L7; else goto _L6
_L6:
        ClassNotFoundException classnotfoundexception;
        aobj[i] = s;
        aclass[i] = java/lang/String;
          goto _L5
_L7:
        if (!"parent".equals(f[i])) goto _L9; else goto _L8
_L8:
        InstantiationException instantiationexception;
        aobj[i] = s1;
        aclass[i] = java/lang/String;
          goto _L5
_L9:
        Box box;
        try
        {
            throw new InternalError((new StringBuilder("No such param: ")).append(f[i]).toString());
        }
        // Misplaced declaration of an exception variable
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new RuntimeException(classnotfoundexception);
        }
        // Misplaced declaration of an exception variable
        catch (InstantiationException instantiationexception)
        {
            throw new RuntimeException(instantiationexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new RuntimeException(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new RuntimeException(invocationtargetexception);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            throw new RuntimeException(nosuchmethodexception);
        }
_L2:
        box = (Box)class1.newInstance();
        return box;
_L5:
        i++;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public void b(String s, byte abyte0[], String s1)
    {
        if (abyte0 == null) goto _L2; else goto _L1
_L1:
        String s2;
        if (!"uuid".equals(s))
        {
            throw new RuntimeException("we have a userType but no uuid box type. Something's wrong");
        }
        s2 = b.getProperty((new StringBuilder("uuid[")).append(Hex.a(abyte0).toUpperCase()).append("]").toString());
        if (s2 == null)
        {
            s2 = b.getProperty((new StringBuilder(String.valueOf(s1))).append("-uuid[").append(Hex.a(abyte0).toUpperCase()).append("]").toString());
        }
        if (s2 == null)
        {
            s2 = b.getProperty("uuid");
        }
_L4:
        if (s2 == null)
        {
            s2 = b.getProperty("default");
        }
        if (s2 == null)
        {
            throw new RuntimeException((new StringBuilder("No box object found for ")).append(s).toString());
        }
        break; /* Loop/switch isn't completed */
_L2:
        s2 = b.getProperty(s);
        if (s2 == null)
        {
            String s3 = d.append(s1).append('-').append(s).toString();
            d.setLength(0);
            s2 = b.getProperty(s3);
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!s2.endsWith(")"))
        {
            f = g;
            e = s2;
            return;
        }
        Matcher matcher = c.matcher(s2);
        if (!matcher.matches())
        {
            throw new RuntimeException((new StringBuilder("Cannot work with that constructor: ")).append(s2).toString());
        }
        e = matcher.group(1);
        if (matcher.group(2).length() == 0)
        {
            f = g;
            return;
        }
        String as[];
        if (matcher.group(2).length() > 0)
        {
            as = matcher.group(2).split(",");
        } else
        {
            as = new String[0];
        }
        f = as;
        return;
    }

}
