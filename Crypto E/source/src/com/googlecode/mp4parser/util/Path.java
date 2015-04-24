// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.util;

import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.AbstractContainerBox;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Path
{

    static Pattern a = Pattern.compile("(....|\\.\\.)(\\[(.*)\\])?");
    static final boolean b;

    private Path()
    {
    }

    public static Box a(Container container, String s)
    {
        List list = a(container, s, true);
        if (list.isEmpty())
        {
            return null;
        } else
        {
            return (Box)list.get(0);
        }
    }

    public static Box a(AbstractContainerBox abstractcontainerbox, String s)
    {
        List list = a(abstractcontainerbox, s, true);
        if (list.isEmpty())
        {
            return null;
        } else
        {
            return (Box)list.get(0);
        }
    }

    private static List a(Box box, String s, boolean flag)
    {
        return a(box, s, flag);
    }

    private static List a(Container container, String s, boolean flag)
    {
        return a(container, s, flag);
    }

    private static List a(AbstractContainerBox abstractcontainerbox, String s, boolean flag)
    {
        return a(abstractcontainerbox, s, flag);
    }

    private static List a(Object obj, String s, boolean flag)
    {
        int i;
        Object obj1;
        i = 0;
        if (!s.startsWith("/"))
        {
            break MISSING_BLOCK_LABEL_381;
        }
        s = s.substring(1);
        obj1 = obj;
        while (obj1 instanceof Box) 
        {
            obj1 = ((Box)obj1).e();
        }
_L2:
        if (s.length() == 0)
        {
            if (obj1 instanceof Box)
            {
                return Collections.singletonList((Box)obj1);
            } else
            {
                throw new RuntimeException("Result of path expression seems to be the root container. This is not allowed!");
            }
        }
label0:
        {
label1:
            {
label2:
                {
                    {
                        String s1;
                        Matcher matcher;
                        String s2;
                        if (s.contains("/"))
                        {
                            s1 = s.substring(1 + s.indexOf('/'));
                            s = s.substring(0, s.indexOf('/'));
                        } else
                        {
                            s1 = "";
                        }
                        matcher = a.matcher(s);
                        if (!matcher.matches())
                        {
                            break label1;
                        }
                        s2 = matcher.group(1);
                        if ("..".equals(s2))
                        {
                            if (obj1 instanceof Box)
                            {
                                return a(((Box)obj1).e(), s1, flag);
                            } else
                            {
                                return Collections.emptyList();
                            }
                        }
                        if (!(obj1 instanceof Container))
                        {
                            break label2;
                        }
                        int j;
                        LinkedList linkedlist;
                        Iterator iterator;
                        Box box;
                        int k;
                        if (matcher.group(2) != null)
                        {
                            j = Integer.parseInt(matcher.group(3));
                        } else
                        {
                            j = -1;
                        }
                        linkedlist = new LinkedList();
                        iterator = ((Container)obj1).a().iterator();
                    }
                    if (!iterator.hasNext())
                    {
                        return linkedlist;
                    }
                    box = (Box)iterator.next();
                    if (box.g().matches(s2))
                    {
                        if (j == -1 || j == i)
                        {
                            linkedlist.addAll(a(box, s1, flag));
                        }
                        k = i + 1;
                    } else
                    {
                        k = i;
                    }
                    if ((flag || j >= 0) && !linkedlist.isEmpty())
                    {
                        return linkedlist;
                    }
                    break label0;
                }
                return Collections.emptyList();
            }
            throw new RuntimeException((new StringBuilder(String.valueOf(s))).append(" is invalid path.").toString());
        }
        i = k;
        break MISSING_BLOCK_LABEL_237;
        obj1 = obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static List b(Container container, String s)
    {
        return a(container, s, false);
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/util/Path.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
