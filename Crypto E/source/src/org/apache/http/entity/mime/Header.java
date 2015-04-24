// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity.mime;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package org.apache.http.entity.mime:
//            MinimalField

public class Header
    implements Iterable
{

    private final Map fieldMap = new HashMap();
    private final List fields = new LinkedList();

    public Header()
    {
    }

    public void addField(MinimalField minimalfield)
    {
        if (minimalfield == null)
        {
            return;
        }
        String s = minimalfield.getName().toLowerCase(Locale.ENGLISH);
        Object obj = (List)fieldMap.get(s);
        if (obj == null)
        {
            obj = new LinkedList();
            fieldMap.put(s, obj);
        }
        ((List) (obj)).add(minimalfield);
        fields.add(minimalfield);
    }

    public MinimalField getField(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1 = s.toLowerCase(Locale.ENGLISH);
        List list = (List)fieldMap.get(s1);
        if (list != null && !list.isEmpty())
        {
            return (MinimalField)list.get(0);
        } else
        {
            return null;
        }
    }

    public List getFields()
    {
        return new ArrayList(fields);
    }

    public List getFields(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1 = s.toLowerCase(Locale.ENGLISH);
        List list = (List)fieldMap.get(s1);
        if (list == null || list.isEmpty())
        {
            return Collections.emptyList();
        } else
        {
            return new ArrayList(list);
        }
    }

    public Iterator iterator()
    {
        return Collections.unmodifiableList(fields).iterator();
    }

    public int removeFields(String s)
    {
        if (s == null)
        {
            return 0;
        }
        String s1 = s.toLowerCase(Locale.ENGLISH);
        List list = (List)fieldMap.remove(s1);
        if (list == null || list.isEmpty())
        {
            return 0;
        } else
        {
            fields.removeAll(list);
            return list.size();
        }
    }

    public void setField(MinimalField minimalfield)
    {
        if (minimalfield == null)
        {
            return;
        }
        String s = minimalfield.getName().toLowerCase(Locale.ENGLISH);
        List list = (List)fieldMap.get(s);
        if (list == null || list.isEmpty())
        {
            addField(minimalfield);
            return;
        }
        list.clear();
        list.add(minimalfield);
        Iterator iterator1 = fields.iterator();
        int i = 0;
        int j = -1;
        for (; iterator1.hasNext(); i++)
        {
            if (!((MinimalField)iterator1.next()).getName().equalsIgnoreCase(minimalfield.getName()))
            {
                continue;
            }
            iterator1.remove();
            if (j == -1)
            {
                j = i;
            }
        }

        fields.add(j, minimalfield);
    }

    public String toString()
    {
        return fields.toString();
    }
}
