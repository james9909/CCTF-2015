// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Stack;

// Referenced classes of package org.apache.commons.io:
//            IOCase

public class FilenameUtils
{

    public static final char EXTENSION_SEPARATOR = 46;
    public static final String EXTENSION_SEPARATOR_STR = Character.toString('.');
    private static final char OTHER_SEPARATOR = 0;
    private static final char SYSTEM_SEPARATOR = 0;
    private static final char UNIX_SEPARATOR = 47;
    private static final char WINDOWS_SEPARATOR = 92;

    public FilenameUtils()
    {
    }

    public static String concat(String s, String s1)
    {
        int i = getPrefixLength(s1);
        if (i >= 0)
        {
            if (i > 0)
            {
                return normalize(s1);
            }
            if (s != null)
            {
                int j = s.length();
                if (j == 0)
                {
                    return normalize(s1);
                }
                if (isSeparator(s.charAt(j - 1)))
                {
                    return normalize((new StringBuilder()).append(s).append(s1).toString());
                } else
                {
                    return normalize((new StringBuilder()).append(s).append('/').append(s1).toString());
                }
            }
        }
        return null;
    }

    public static boolean directoryContains(String s, String s1)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Directory must not be null");
        }
        while (s1 == null || IOCase.SYSTEM.checkEquals(s, s1)) 
        {
            return false;
        }
        return IOCase.SYSTEM.checkStartsWith(s1, s);
    }

    private static String doGetFullPath(String s, boolean flag)
    {
        if (s == null)
        {
            s = null;
        } else
        {
            int i = getPrefixLength(s);
            if (i < 0)
            {
                return null;
            }
            if (i >= s.length())
            {
                if (flag)
                {
                    return getPrefix(s);
                }
            } else
            {
                int j = indexOfLastSeparator(s);
                if (j < 0)
                {
                    return s.substring(0, i);
                }
                int k;
                int l;
                if (flag)
                {
                    k = 1;
                } else
                {
                    k = 0;
                }
                l = k + j;
                if (l == 0)
                {
                    l++;
                }
                return s.substring(0, l);
            }
        }
        return s;
    }

    private static String doGetPath(String s, int i)
    {
        int j;
        if (s != null)
        {
            if ((j = getPrefixLength(s)) >= 0)
            {
                int k = indexOfLastSeparator(s);
                int l = k + i;
                if (j >= s.length() || k < 0 || j >= l)
                {
                    return "";
                } else
                {
                    return s.substring(j, l);
                }
            }
        }
        return null;
    }

    private static String doNormalize(String s, char c, boolean flag)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        s = null;
_L4:
        return s;
_L2:
        int i = s.length();
        if (i == 0) goto _L4; else goto _L3
_L3:
        int j = getPrefixLength(s);
        if (j < 0)
        {
            return null;
        }
        char ac[] = new char[i + 2];
        s.getChars(0, s.length(), ac, 0);
        char c1;
        int k;
        if (c == SYSTEM_SEPARATOR)
        {
            c1 = OTHER_SEPARATOR;
        } else
        {
            c1 = SYSTEM_SEPARATOR;
        }
        for (k = 0; k < ac.length; k++)
        {
            if (ac[k] == c1)
            {
                ac[k] = c;
            }
        }

        boolean flag1 = true;
        int l;
        int i1;
        int j1;
        int l1;
        if (ac[i - 1] != c)
        {
            l = i + 1;
            ac[i] = c;
            flag1 = false;
        } else
        {
            l = i;
        }
        i1 = j + 1;
        j1 = l;
        for (int k1 = i1; k1 < j1; k1++)
        {
            if (ac[k1] == c && ac[k1 - 1] == c)
            {
                System.arraycopy(ac, k1, ac, k1 - 1, j1 - k1);
                j1--;
                k1--;
            }
        }

        l1 = j + 1;
        while (l1 < j1) 
        {
            int i2;
            int j2;
            boolean flag2;
            int k2;
            int l2;
            int i3;
            int j3;
            int k3;
            boolean flag3;
            int i4;
            int j4;
            if (ac[l1] == c && ac[l1 - 1] == '.' && (l1 == j + 1 || ac[l1 - 2] == c))
            {
                if (l1 == j1 - 1)
                {
                    flag1 = true;
                }
                System.arraycopy(ac, l1 + 1, ac, l1 - 1, j1 - l1);
                j1 -= 2;
                int k4 = l1 - 1;
                flag3 = flag1;
                i4 = k4;
            } else
            {
                int l3 = l1;
                flag3 = flag1;
                i4 = l3;
            }
            j4 = i4 + 1;
            flag1 = flag3;
            l1 = j4;
        }
        i2 = j + 2;
        if (i2 >= j1) goto _L6; else goto _L5
_L5:
        if (ac[i2] != c || ac[i2 - 1] != '.' || ac[i2 - 2] != '.' || i2 != j + 2 && ac[i2 - 3] != c)
        {
            break MISSING_BLOCK_LABEL_609;
        }
        if (i2 == j + 2)
        {
            return null;
        }
        if (i2 == j1 - 1)
        {
            flag1 = true;
        }
        i3 = i2 - 4;
_L11:
        if (i3 < j) goto _L8; else goto _L7
_L7:
        if (ac[i3] != c) goto _L10; else goto _L9
_L9:
        System.arraycopy(ac, i2 + 1, ac, i3 + 1, j1 - i2);
        j1 -= i2 - i3;
        k3 = i3 + 1;
        flag2 = flag1;
        k2 = k3;
_L12:
        l2 = k2 + 1;
        flag1 = flag2;
        i2 = l2;
        break MISSING_BLOCK_LABEL_325;
_L10:
        i3--;
          goto _L11
_L8:
        System.arraycopy(ac, i2 + 1, ac, j, j1 - i2);
        j1 -= (i2 + 1) - j;
        j3 = j + 1;
        flag2 = flag1;
        k2 = j3;
          goto _L12
_L6:
        if (j1 <= 0)
        {
            return "";
        }
        if (j1 <= j)
        {
            return new String(ac, 0, j1);
        }
        if (flag1 && flag)
        {
            return new String(ac, 0, j1);
        } else
        {
            return new String(ac, 0, j1 - 1);
        }
        j2 = i2;
        flag2 = flag1;
        k2 = j2;
          goto _L12
    }

    public static boolean equals(String s, String s1)
    {
        return equals(s, s1, false, IOCase.SENSITIVE);
    }

    public static boolean equals(String s, String s1, boolean flag, IOCase iocase)
    {
        if (s == null || s1 == null)
        {
            return s == null && s1 == null;
        }
        if (flag)
        {
            s = normalize(s);
            s1 = normalize(s1);
            if (s == null || s1 == null)
            {
                throw new NullPointerException("Error normalizing one or both of the file names");
            }
        }
        if (iocase == null)
        {
            iocase = IOCase.SENSITIVE;
        }
        return iocase.checkEquals(s, s1);
    }

    public static boolean equalsNormalized(String s, String s1)
    {
        return equals(s, s1, true, IOCase.SENSITIVE);
    }

    public static boolean equalsNormalizedOnSystem(String s, String s1)
    {
        return equals(s, s1, true, IOCase.SYSTEM);
    }

    public static boolean equalsOnSystem(String s, String s1)
    {
        return equals(s, s1, false, IOCase.SYSTEM);
    }

    public static String getBaseName(String s)
    {
        return removeExtension(getName(s));
    }

    public static String getExtension(String s)
    {
        if (s == null)
        {
            return null;
        }
        int i = indexOfExtension(s);
        if (i == -1)
        {
            return "";
        } else
        {
            return s.substring(i + 1);
        }
    }

    public static String getFullPath(String s)
    {
        return doGetFullPath(s, true);
    }

    public static String getFullPathNoEndSeparator(String s)
    {
        return doGetFullPath(s, false);
    }

    public static String getName(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return s.substring(1 + indexOfLastSeparator(s));
        }
    }

    public static String getPath(String s)
    {
        return doGetPath(s, 1);
    }

    public static String getPathNoEndSeparator(String s)
    {
        return doGetPath(s, 0);
    }

    public static String getPrefix(String s)
    {
        int i;
        if (s != null)
        {
            if ((i = getPrefixLength(s)) >= 0)
            {
                if (i > s.length())
                {
                    return (new StringBuilder()).append(s).append('/').toString();
                } else
                {
                    return s.substring(0, i);
                }
            }
        }
        return null;
    }

    public static int getPrefixLength(String s)
    {
        byte byte0 = 1;
        if (s != null) goto _L2; else goto _L1
_L1:
        byte0 = -1;
_L4:
        return byte0;
_L2:
        int i;
        char c;
        i = s.length();
        if (i == 0)
        {
            return 0;
        }
        c = s.charAt(0);
        if (c == ':')
        {
            return -1;
        }
        if (i != byte0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (c == '~')
        {
            return 2;
        }
        if (!isSeparator(c))
        {
            return 0;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (c == '~')
        {
            int l = s.indexOf('/', byte0);
            int i1 = s.indexOf('\\', byte0);
            if (l == -1 && i1 == -1)
            {
                return i + 1;
            }
            if (l == -1)
            {
                l = i1;
            }
            if (i1 == -1)
            {
                i1 = l;
            }
            return 1 + Math.min(l, i1);
        }
        char c1 = s.charAt(byte0);
        if (c1 == ':')
        {
            char c2 = Character.toUpperCase(c);
            if (c2 >= 'A' && c2 <= 'Z')
            {
                return i != 2 && isSeparator(s.charAt(2)) ? 3 : 2;
            } else
            {
                return -1;
            }
        }
        if (isSeparator(c) && isSeparator(c1))
        {
            int j = s.indexOf('/', 2);
            int k = s.indexOf('\\', 2);
            if (j == -1 && k == -1 || j == 2 || k == 2)
            {
                return -1;
            }
            if (j == -1)
            {
                j = k;
            }
            if (k == -1)
            {
                k = j;
            }
            return 1 + Math.min(j, k);
        }
        if (!isSeparator(c))
        {
            return 0;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public static int indexOfExtension(String s)
    {
        int i;
        if (s != null)
        {
            if (indexOfLastSeparator(s) <= (i = s.lastIndexOf('.')))
            {
                return i;
            }
        }
        return -1;
    }

    public static int indexOfLastSeparator(String s)
    {
        if (s == null)
        {
            return -1;
        } else
        {
            return Math.max(s.lastIndexOf('/'), s.lastIndexOf('\\'));
        }
    }

    public static boolean isExtension(String s, String s1)
    {
        if (s != null)
        {
            if (s1 == null || s1.length() == 0)
            {
                if (indexOfExtension(s) == -1)
                {
                    return true;
                }
            } else
            {
                return getExtension(s).equals(s1);
            }
        }
        return false;
    }

    public static boolean isExtension(String s, Collection collection)
    {
        if (s != null)
        {
            if (collection == null || collection.isEmpty())
            {
                boolean flag;
                if (indexOfExtension(s) == -1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                return flag;
            }
            String s1 = getExtension(s);
            Iterator iterator = collection.iterator();
            while (iterator.hasNext()) 
            {
                if (s1.equals((String)iterator.next()))
                {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isExtension(String s, String as[])
    {
        boolean flag = true;
        if (s != null)
        {
            if (as == null || as.length == 0)
            {
                if (indexOfExtension(s) != -1)
                {
                    flag = false;
                }
                return flag;
            }
            String s1 = getExtension(s);
            int i = as.length;
            int j = 0;
            while (j < i) 
            {
                if (s1.equals(as[j]))
                {
                    return flag;
                }
                j++;
            }
        }
        return false;
    }

    private static boolean isSeparator(char c)
    {
        return c == '/' || c == '\\';
    }

    static boolean isSystemWindows()
    {
        return SYSTEM_SEPARATOR == '\\';
    }

    public static String normalize(String s)
    {
        return doNormalize(s, SYSTEM_SEPARATOR, true);
    }

    public static String normalize(String s, boolean flag)
    {
        char c;
        if (flag)
        {
            c = '/';
        } else
        {
            c = '\\';
        }
        return doNormalize(s, c, true);
    }

    public static String normalizeNoEndSeparator(String s)
    {
        return doNormalize(s, SYSTEM_SEPARATOR, false);
    }

    public static String normalizeNoEndSeparator(String s, boolean flag)
    {
        char c;
        if (flag)
        {
            c = '/';
        } else
        {
            c = '\\';
        }
        return doNormalize(s, c, false);
    }

    public static String removeExtension(String s)
    {
        if (s == null)
        {
            s = null;
        } else
        {
            int i = indexOfExtension(s);
            if (i != -1)
            {
                return s.substring(0, i);
            }
        }
        return s;
    }

    public static String separatorsToSystem(String s)
    {
        if (s == null)
        {
            return null;
        }
        if (isSystemWindows())
        {
            return separatorsToWindows(s);
        } else
        {
            return separatorsToUnix(s);
        }
    }

    public static String separatorsToUnix(String s)
    {
        if (s == null || s.indexOf('\\') == -1)
        {
            return s;
        } else
        {
            return s.replace('\\', '/');
        }
    }

    public static String separatorsToWindows(String s)
    {
        if (s == null || s.indexOf('/') == -1)
        {
            return s;
        } else
        {
            return s.replace('/', '\\');
        }
    }

    static String[] splitOnTokens(String s)
    {
        if (s.indexOf('?') == -1 && s.indexOf('*') == -1)
        {
            return (new String[] {
                s
            });
        }
        char ac[] = s.toCharArray();
        ArrayList arraylist = new ArrayList();
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        while (i < ac.length) 
        {
            if (ac[i] == '?' || ac[i] == '*')
            {
                if (stringbuilder.length() != 0)
                {
                    arraylist.add(stringbuilder.toString());
                    stringbuilder.setLength(0);
                }
                if (ac[i] == '?')
                {
                    arraylist.add("?");
                } else
                if (arraylist.isEmpty() || i > 0 && !((String)arraylist.get(-1 + arraylist.size())).equals("*"))
                {
                    arraylist.add("*");
                }
            } else
            {
                stringbuilder.append(ac[i]);
            }
            i++;
        }
        if (stringbuilder.length() != 0)
        {
            arraylist.add(stringbuilder.toString());
        }
        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }

    public static boolean wildcardMatch(String s, String s1)
    {
        return wildcardMatch(s, s1, IOCase.SENSITIVE);
    }

    public static boolean wildcardMatch(String s, String s1, IOCase iocase)
    {
        if (s != null || s1 != null) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        String as[];
        Stack stack;
        int i;
        int j;
        boolean flag;
        if (s == null || s1 == null)
        {
            return false;
        }
        if (iocase == null)
        {
            iocase = IOCase.SENSITIVE;
        }
        as = splitOnTokens(s1);
        stack = new Stack();
        i = 0;
        j = 0;
        flag = false;
_L9:
        if (stack.size() > 0)
        {
            int ai[] = (int[])stack.pop();
            int l = ai[0];
            int i1 = ai[1];
            flag = true;
            i = l;
            j = i1;
        }
_L10:
        if (i >= as.length) goto _L4; else goto _L3
_L3:
        if (!as[i].equals("?")) goto _L6; else goto _L5
_L5:
        if (++j <= s.length()) goto _L7; else goto _L4
_L4:
        if (i == as.length && j == s.length()) goto _L1; else goto _L8
_L8:
        if (stack.size() <= 0)
        {
            return false;
        }
          goto _L9
_L7:
        flag = false;
_L11:
        i++;
          goto _L10
_L6:
label0:
        {
            if (!as[i].equals("*"))
            {
                break label0;
            }
            int k;
            if (i == -1 + as.length)
            {
                j = s.length();
                flag = true;
            } else
            {
                flag = true;
            }
        }
          goto _L11
        if (!flag) goto _L13; else goto _L12
_L12:
        j = iocase.checkIndexOf(s, j, as[i]);
        if (j == -1) goto _L4; else goto _L14
_L14:
        k = iocase.checkIndexOf(s, j + 1, as[i]);
        if (k >= 0)
        {
            stack.push(new int[] {
                i, k
            });
        }
_L15:
        j += as[i].length();
        flag = false;
          goto _L11
_L13:
        if (iocase.checkRegionMatches(s, j, as[i])) goto _L15; else goto _L4
    }

    public static boolean wildcardMatchOnSystem(String s, String s1)
    {
        return wildcardMatch(s, s1, IOCase.SYSTEM);
    }

    static 
    {
        SYSTEM_SEPARATOR = File.separatorChar;
        if (isSystemWindows())
        {
            OTHER_SEPARATOR = '/';
        } else
        {
            OTHER_SEPARATOR = '\\';
        }
    }
}
