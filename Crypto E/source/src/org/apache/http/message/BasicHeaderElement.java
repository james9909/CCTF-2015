// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.message;

import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;

public class BasicHeaderElement
    implements Cloneable, HeaderElement
{

    private final String name;
    private final NameValuePair parameters[];
    private final String value;

    public BasicHeaderElement(String s, String s1)
    {
        this(s, s1, null);
    }

    public BasicHeaderElement(String s, String s1, NameValuePair anamevaluepair[])
    {
        name = (String)Args.notNull(s, "Name");
        value = s1;
        if (anamevaluepair != null)
        {
            parameters = anamevaluepair;
            return;
        } else
        {
            parameters = new NameValuePair[0];
            return;
        }
    }

    public Object clone()
    {
        return super.clone();
    }

    public boolean equals(Object obj)
    {
        BasicHeaderElement basicheaderelement;
        if (this != obj)
        {
            if (obj instanceof HeaderElement)
            {
                if (!name.equals((basicheaderelement = (BasicHeaderElement)obj).name) || !LangUtils.equals(value, basicheaderelement.value) || !LangUtils.equals(parameters, basicheaderelement.parameters))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public String getName()
    {
        return name;
    }

    public NameValuePair getParameter(int i)
    {
        return parameters[i];
    }

    public NameValuePair getParameterByName(String s)
    {
        Args.notNull(s, "Name");
        NameValuePair anamevaluepair[] = parameters;
        int i = anamevaluepair.length;
        for (int j = 0; j < i; j++)
        {
            NameValuePair namevaluepair = anamevaluepair[j];
            if (namevaluepair.getName().equalsIgnoreCase(s))
            {
                return namevaluepair;
            }
        }

        return null;
    }

    public int getParameterCount()
    {
        return parameters.length;
    }

    public NameValuePair[] getParameters()
    {
        return (NameValuePair[])parameters.clone();
    }

    public String getValue()
    {
        return value;
    }

    public int hashCode()
    {
        int i = LangUtils.hashCode(LangUtils.hashCode(17, name), value);
        NameValuePair anamevaluepair[] = parameters;
        int j = anamevaluepair.length;
        for (int k = 0; k < j; k++)
        {
            i = LangUtils.hashCode(i, anamevaluepair[k]);
        }

        return i;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(name);
        if (value != null)
        {
            stringbuilder.append("=");
            stringbuilder.append(value);
        }
        NameValuePair anamevaluepair[] = parameters;
        int i = anamevaluepair.length;
        for (int j = 0; j < i; j++)
        {
            NameValuePair namevaluepair = anamevaluepair[j];
            stringbuilder.append("; ");
            stringbuilder.append(namevaluepair);
        }

        return stringbuilder.toString();
    }
}
