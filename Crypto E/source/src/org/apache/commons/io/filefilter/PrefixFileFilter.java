// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import org.apache.commons.io.IOCase;

// Referenced classes of package org.apache.commons.io.filefilter:
//            AbstractFileFilter

public class PrefixFileFilter extends AbstractFileFilter
    implements Serializable
{

    private final IOCase caseSensitivity;
    private final String prefixes[];

    public PrefixFileFilter(String s)
    {
        this(s, IOCase.SENSITIVE);
    }

    public PrefixFileFilter(String s, IOCase iocase)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("The prefix must not be null");
        }
        prefixes = (new String[] {
            s
        });
        if (iocase == null)
        {
            iocase = IOCase.SENSITIVE;
        }
        caseSensitivity = iocase;
    }

    public PrefixFileFilter(List list)
    {
        this(list, IOCase.SENSITIVE);
    }

    public PrefixFileFilter(List list, IOCase iocase)
    {
        if (list == null)
        {
            throw new IllegalArgumentException("The list of prefixes must not be null");
        }
        prefixes = (String[])list.toArray(new String[list.size()]);
        if (iocase == null)
        {
            iocase = IOCase.SENSITIVE;
        }
        caseSensitivity = iocase;
    }

    public PrefixFileFilter(String as[])
    {
        this(as, IOCase.SENSITIVE);
    }

    public PrefixFileFilter(String as[], IOCase iocase)
    {
        if (as == null)
        {
            throw new IllegalArgumentException("The array of prefixes must not be null");
        }
        prefixes = new String[as.length];
        System.arraycopy(as, 0, prefixes, 0, as.length);
        if (iocase == null)
        {
            iocase = IOCase.SENSITIVE;
        }
        caseSensitivity = iocase;
    }

    public boolean accept(File file)
    {
        String s = file.getName();
        String as[] = prefixes;
        int i = as.length;
        int j = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (j < i)
                {
                    String s1 = as[j];
                    if (!caseSensitivity.checkStartsWith(s, s1))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j++;
        } while (true);
    }

    public boolean accept(File file, String s)
    {
        String as[] = prefixes;
        int i = as.length;
        int j = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (j < i)
                {
                    String s1 = as[j];
                    if (!caseSensitivity.checkStartsWith(s, s1))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j++;
        } while (true);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(super.toString());
        stringbuilder.append("(");
        if (prefixes != null)
        {
            for (int i = 0; i < prefixes.length; i++)
            {
                if (i > 0)
                {
                    stringbuilder.append(",");
                }
                stringbuilder.append(prefixes[i]);
            }

        }
        stringbuilder.append(")");
        return stringbuilder.toString();
    }
}
