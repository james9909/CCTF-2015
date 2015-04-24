// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text;

import java.io.Reader;
import java.io.Serializable;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.SystemUtils;
import org.apache.commons.lang3.builder.Builder;

// Referenced classes of package org.apache.commons.lang3.text:
//            StrMatcher, StrTokenizer

public class StrBuilder
    implements Serializable, Appendable, CharSequence, Builder
{
    class StrBuilderReader extends Reader
    {

        private int mark;
        private int pos;
        final StrBuilder this$0;

        public void close()
        {
        }

        public void mark(int i)
        {
            mark = pos;
        }

        public boolean markSupported()
        {
            return true;
        }

        public int read()
        {
            if (!ready())
            {
                return -1;
            } else
            {
                StrBuilder strbuilder = StrBuilder.this;
                int i = pos;
                pos = i + 1;
                return strbuilder.charAt(i);
            }
        }

        public int read(char ac[], int i, int j)
        {
            if (i < 0 || j < 0 || i > ac.length || i + j > ac.length || i + j < 0)
            {
                throw new IndexOutOfBoundsException();
            }
            if (j == 0)
            {
                return 0;
            }
            if (pos >= size())
            {
                return -1;
            }
            if (j + pos > size())
            {
                j = size() - pos;
            }
            getChars(pos, j + pos, ac, i);
            pos = j + pos;
            return j;
        }

        public boolean ready()
        {
            return pos < size();
        }

        public void reset()
        {
            pos = mark;
        }

        public long skip(long l)
        {
            long l1;
            if (l + (long)pos > (long)size())
            {
                l1 = size() - pos;
            } else
            {
                l1 = l;
            }
            if (l1 < 0L)
            {
                return 0L;
            } else
            {
                pos = (int)(l1 + (long)pos);
                return l1;
            }
        }

        StrBuilderReader()
        {
            this$0 = StrBuilder.this;
            super();
        }
    }

    class StrBuilderTokenizer extends StrTokenizer
    {

        final StrBuilder this$0;

        public String getContent()
        {
            String s = super.getContent();
            if (s == null)
            {
                s = toString();
            }
            return s;
        }

        protected List tokenize(char ac[], int i, int j)
        {
            if (ac == null)
            {
                return super.tokenize(buffer, 0, size());
            } else
            {
                return super.tokenize(ac, i, j);
            }
        }

        StrBuilderTokenizer()
        {
            this$0 = StrBuilder.this;
            super();
        }
    }

    class StrBuilderWriter extends Writer
    {

        final StrBuilder this$0;

        public void close()
        {
        }

        public void flush()
        {
        }

        public void write(int i)
        {
            append((char)i);
        }

        public void write(String s)
        {
            append(s);
        }

        public void write(String s, int i, int j)
        {
            append(s, i, j);
        }

        public void write(char ac[])
        {
            append(ac);
        }

        public void write(char ac[], int i, int j)
        {
            append(ac, i, j);
        }

        StrBuilderWriter()
        {
            this$0 = StrBuilder.this;
            super();
        }
    }


    static final int CAPACITY = 32;
    private static final long serialVersionUID = 0x69dea51fe8fc7e4bL;
    protected char buffer[];
    private String newLine;
    private String nullText;
    protected int size;

    public StrBuilder()
    {
        this(32);
    }

    public StrBuilder(int i)
    {
        if (i <= 0)
        {
            i = 32;
        }
        buffer = new char[i];
    }

    public StrBuilder(String s)
    {
        if (s == null)
        {
            buffer = new char[32];
            return;
        } else
        {
            buffer = new char[32 + s.length()];
            append(s);
            return;
        }
    }

    private void deleteImpl(int i, int j, int k)
    {
        System.arraycopy(buffer, j, buffer, i, size - j);
        size = size - k;
    }

    private StrBuilder replaceImpl(StrMatcher strmatcher, String s, int i, int j, int k)
    {
        if (strmatcher != null && size != 0)
        {
            int l;
            char ac[];
            int i1;
            int j1;
            int k1;
            if (s == null)
            {
                l = 0;
            } else
            {
                l = s.length();
            }
            ac = buffer;
            i1 = i;
            j1 = k;
            k1 = j;
            while (i1 < k1 && j1 != 0) 
            {
                int l1 = strmatcher.isMatch(ac, i1, i, k1);
                int i2;
                int j2;
                if (l1 > 0)
                {
                    replaceImpl(i1, i1 + l1, l1, s, l);
                    j2 = l + (k1 - l1);
                    i1 = -1 + (i1 + l);
                    if (j1 > 0)
                    {
                        i2 = j1 - 1;
                    } else
                    {
                        i2 = j1;
                    }
                } else
                {
                    i2 = j1;
                    j2 = k1;
                }
                i1++;
                j1 = i2;
                k1 = j2;
            }
        }
        return this;
    }

    private void replaceImpl(int i, int j, int k, String s, int l)
    {
        int i1 = l + (size - k);
        if (l != k)
        {
            ensureCapacity(i1);
            System.arraycopy(buffer, j, buffer, i + l, size - j);
            size = i1;
        }
        if (l > 0)
        {
            s.getChars(0, l, buffer, i);
        }
    }

    public volatile Appendable append(char c)
    {
        return append(c);
    }

    public volatile Appendable append(CharSequence charsequence)
    {
        return append(charsequence);
    }

    public volatile Appendable append(CharSequence charsequence, int i, int j)
    {
        return append(charsequence, i, j);
    }

    public StrBuilder append(char c)
    {
        ensureCapacity(1 + length());
        char ac[] = buffer;
        int i = size;
        size = i + 1;
        ac[i] = c;
        return this;
    }

    public StrBuilder append(double d)
    {
        return append(String.valueOf(d));
    }

    public StrBuilder append(float f)
    {
        return append(String.valueOf(f));
    }

    public StrBuilder append(int i)
    {
        return append(String.valueOf(i));
    }

    public StrBuilder append(long l)
    {
        return append(String.valueOf(l));
    }

    public StrBuilder append(CharSequence charsequence)
    {
        if (charsequence == null)
        {
            return appendNull();
        } else
        {
            return append(charsequence.toString());
        }
    }

    public StrBuilder append(CharSequence charsequence, int i, int j)
    {
        if (charsequence == null)
        {
            return appendNull();
        } else
        {
            return append(charsequence.toString(), i, j);
        }
    }

    public StrBuilder append(Object obj)
    {
        if (obj == null)
        {
            return appendNull();
        } else
        {
            return append(obj.toString());
        }
    }

    public StrBuilder append(String s)
    {
        if (s == null)
        {
            this = appendNull();
        } else
        {
            int i = s.length();
            if (i > 0)
            {
                int j = length();
                ensureCapacity(j + i);
                s.getChars(0, i, buffer, j);
                size = i + size;
                return this;
            }
        }
        return this;
    }

    public StrBuilder append(String s, int i, int j)
    {
        if (s == null)
        {
            this = appendNull();
        } else
        {
            if (i < 0 || i > s.length())
            {
                throw new StringIndexOutOfBoundsException("startIndex must be valid");
            }
            if (j < 0 || i + j > s.length())
            {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (j > 0)
            {
                int k = length();
                ensureCapacity(k + j);
                s.getChars(i, i + j, buffer, k);
                size = j + size;
                return this;
            }
        }
        return this;
    }

    public transient StrBuilder append(String s, Object aobj[])
    {
        return append(String.format(s, aobj));
    }

    public StrBuilder append(StringBuffer stringbuffer)
    {
        if (stringbuffer == null)
        {
            this = appendNull();
        } else
        {
            int i = stringbuffer.length();
            if (i > 0)
            {
                int j = length();
                ensureCapacity(j + i);
                stringbuffer.getChars(0, i, buffer, j);
                size = i + size;
                return this;
            }
        }
        return this;
    }

    public StrBuilder append(StringBuffer stringbuffer, int i, int j)
    {
        if (stringbuffer == null)
        {
            this = appendNull();
        } else
        {
            if (i < 0 || i > stringbuffer.length())
            {
                throw new StringIndexOutOfBoundsException("startIndex must be valid");
            }
            if (j < 0 || i + j > stringbuffer.length())
            {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (j > 0)
            {
                int k = length();
                ensureCapacity(k + j);
                stringbuffer.getChars(i, i + j, buffer, k);
                size = j + size;
                return this;
            }
        }
        return this;
    }

    public StrBuilder append(StringBuilder stringbuilder)
    {
        if (stringbuilder == null)
        {
            this = appendNull();
        } else
        {
            int i = stringbuilder.length();
            if (i > 0)
            {
                int j = length();
                ensureCapacity(j + i);
                stringbuilder.getChars(0, i, buffer, j);
                size = i + size;
                return this;
            }
        }
        return this;
    }

    public StrBuilder append(StringBuilder stringbuilder, int i, int j)
    {
        if (stringbuilder == null)
        {
            this = appendNull();
        } else
        {
            if (i < 0 || i > stringbuilder.length())
            {
                throw new StringIndexOutOfBoundsException("startIndex must be valid");
            }
            if (j < 0 || i + j > stringbuilder.length())
            {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (j > 0)
            {
                int k = length();
                ensureCapacity(k + j);
                stringbuilder.getChars(i, i + j, buffer, k);
                size = j + size;
                return this;
            }
        }
        return this;
    }

    public StrBuilder append(StrBuilder strbuilder)
    {
        if (strbuilder == null)
        {
            this = appendNull();
        } else
        {
            int i = strbuilder.length();
            if (i > 0)
            {
                int j = length();
                ensureCapacity(j + i);
                System.arraycopy(strbuilder.buffer, 0, buffer, j, i);
                size = i + size;
                return this;
            }
        }
        return this;
    }

    public StrBuilder append(StrBuilder strbuilder, int i, int j)
    {
        if (strbuilder == null)
        {
            this = appendNull();
        } else
        {
            if (i < 0 || i > strbuilder.length())
            {
                throw new StringIndexOutOfBoundsException("startIndex must be valid");
            }
            if (j < 0 || i + j > strbuilder.length())
            {
                throw new StringIndexOutOfBoundsException("length must be valid");
            }
            if (j > 0)
            {
                int k = length();
                ensureCapacity(k + j);
                strbuilder.getChars(i, i + j, buffer, k);
                size = j + size;
                return this;
            }
        }
        return this;
    }

    public StrBuilder append(boolean flag)
    {
        if (flag)
        {
            ensureCapacity(4 + size);
            char ac5[] = buffer;
            int j1 = size;
            size = j1 + 1;
            ac5[j1] = 't';
            char ac6[] = buffer;
            int k1 = size;
            size = k1 + 1;
            ac6[k1] = 'r';
            char ac7[] = buffer;
            int l1 = size;
            size = l1 + 1;
            ac7[l1] = 'u';
            char ac8[] = buffer;
            int i2 = size;
            size = i2 + 1;
            ac8[i2] = 'e';
            return this;
        } else
        {
            ensureCapacity(5 + size);
            char ac[] = buffer;
            int i = size;
            size = i + 1;
            ac[i] = 'f';
            char ac1[] = buffer;
            int j = size;
            size = j + 1;
            ac1[j] = 'a';
            char ac2[] = buffer;
            int k = size;
            size = k + 1;
            ac2[k] = 'l';
            char ac3[] = buffer;
            int l = size;
            size = l + 1;
            ac3[l] = 's';
            char ac4[] = buffer;
            int i1 = size;
            size = i1 + 1;
            ac4[i1] = 'e';
            return this;
        }
    }

    public StrBuilder append(char ac[])
    {
        if (ac == null)
        {
            this = appendNull();
        } else
        {
            int i = ac.length;
            if (i > 0)
            {
                int j = length();
                ensureCapacity(j + i);
                System.arraycopy(ac, 0, buffer, j, i);
                size = i + size;
                return this;
            }
        }
        return this;
    }

    public StrBuilder append(char ac[], int i, int j)
    {
        if (ac == null)
        {
            this = appendNull();
        } else
        {
            if (i < 0 || i > ac.length)
            {
                throw new StringIndexOutOfBoundsException((new StringBuilder()).append("Invalid startIndex: ").append(j).toString());
            }
            if (j < 0 || i + j > ac.length)
            {
                throw new StringIndexOutOfBoundsException((new StringBuilder()).append("Invalid length: ").append(j).toString());
            }
            if (j > 0)
            {
                int k = length();
                ensureCapacity(k + j);
                System.arraycopy(ac, i, buffer, k, j);
                size = j + size;
                return this;
            }
        }
        return this;
    }

    public StrBuilder appendAll(Iterable iterable)
    {
        if (iterable != null)
        {
            for (Iterator iterator = iterable.iterator(); iterator.hasNext(); append(iterator.next())) { }
        }
        return this;
    }

    public StrBuilder appendAll(Iterator iterator)
    {
        if (iterator != null)
        {
            for (; iterator.hasNext(); append(iterator.next())) { }
        }
        return this;
    }

    public transient StrBuilder appendAll(Object aobj[])
    {
        if (aobj != null && aobj.length > 0)
        {
            int i = aobj.length;
            for (int j = 0; j < i; j++)
            {
                append(aobj[j]);
            }

        }
        return this;
    }

    public StrBuilder appendFixedWidthPadLeft(int i, int j, char c)
    {
        return appendFixedWidthPadLeft(String.valueOf(i), j, c);
    }

    public StrBuilder appendFixedWidthPadLeft(Object obj, int i, char c)
    {
        if (i > 0)
        {
            ensureCapacity(i + size);
            String s;
            int j;
            if (obj == null)
            {
                s = getNullText();
            } else
            {
                s = obj.toString();
            }
            if (s == null)
            {
                s = "";
            }
            j = s.length();
            if (j >= i)
            {
                s.getChars(j - i, j, buffer, size);
            } else
            {
                int k = i - j;
                for (int l = 0; l < k; l++)
                {
                    buffer[l + size] = c;
                }

                s.getChars(0, j, buffer, k + size);
            }
            size = i + size;
        }
        return this;
    }

    public StrBuilder appendFixedWidthPadRight(int i, int j, char c)
    {
        return appendFixedWidthPadRight(String.valueOf(i), j, c);
    }

    public StrBuilder appendFixedWidthPadRight(Object obj, int i, char c)
    {
        if (i > 0)
        {
            ensureCapacity(i + size);
            String s;
            int j;
            if (obj == null)
            {
                s = getNullText();
            } else
            {
                s = obj.toString();
            }
            if (s == null)
            {
                s = "";
            }
            j = s.length();
            if (j >= i)
            {
                s.getChars(0, i, buffer, size);
            } else
            {
                int k = i - j;
                s.getChars(0, j, buffer, size);
                int l = 0;
                while (l < k) 
                {
                    buffer[l + (j + size)] = c;
                    l++;
                }
            }
            size = i + size;
        }
        return this;
    }

    public StrBuilder appendNewLine()
    {
        if (newLine == null)
        {
            append(SystemUtils.LINE_SEPARATOR);
            return this;
        } else
        {
            return append(newLine);
        }
    }

    public StrBuilder appendNull()
    {
        if (nullText == null)
        {
            return this;
        } else
        {
            return append(nullText);
        }
    }

    public StrBuilder appendPadding(int i, char c)
    {
        if (i >= 0)
        {
            ensureCapacity(i + size);
            for (int j = 0; j < i; j++)
            {
                char ac[] = buffer;
                int k = size;
                size = k + 1;
                ac[k] = c;
            }

        }
        return this;
    }

    public StrBuilder appendSeparator(char c)
    {
        if (size() > 0)
        {
            append(c);
        }
        return this;
    }

    public StrBuilder appendSeparator(char c, char c1)
    {
        if (size() > 0)
        {
            append(c);
            return this;
        } else
        {
            append(c1);
            return this;
        }
    }

    public StrBuilder appendSeparator(char c, int i)
    {
        if (i > 0)
        {
            append(c);
        }
        return this;
    }

    public StrBuilder appendSeparator(String s)
    {
        return appendSeparator(s, ((String) (null)));
    }

    public StrBuilder appendSeparator(String s, int i)
    {
        if (s != null && i > 0)
        {
            append(s);
        }
        return this;
    }

    public StrBuilder appendSeparator(String s, String s1)
    {
        if (!isEmpty())
        {
            s1 = s;
        }
        if (s1 != null)
        {
            append(s1);
        }
        return this;
    }

    public StrBuilder appendWithSeparators(Iterable iterable, String s)
    {
        if (iterable != null)
        {
            String s1 = ObjectUtils.toString(s);
            Iterator iterator = iterable.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                append(iterator.next());
                if (iterator.hasNext())
                {
                    append(s1);
                }
            } while (true);
        }
        return this;
    }

    public StrBuilder appendWithSeparators(Iterator iterator, String s)
    {
        if (iterator != null)
        {
            String s1 = ObjectUtils.toString(s);
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                append(iterator.next());
                if (iterator.hasNext())
                {
                    append(s1);
                }
            } while (true);
        }
        return this;
    }

    public StrBuilder appendWithSeparators(Object aobj[], String s)
    {
        if (aobj != null && aobj.length > 0)
        {
            String s1 = ObjectUtils.toString(s);
            append(aobj[0]);
            for (int i = 1; i < aobj.length; i++)
            {
                append(s1);
                append(aobj[i]);
            }

        }
        return this;
    }

    public StrBuilder appendln(char c)
    {
        return append(c).appendNewLine();
    }

    public StrBuilder appendln(double d)
    {
        return append(d).appendNewLine();
    }

    public StrBuilder appendln(float f)
    {
        return append(f).appendNewLine();
    }

    public StrBuilder appendln(int i)
    {
        return append(i).appendNewLine();
    }

    public StrBuilder appendln(long l)
    {
        return append(l).appendNewLine();
    }

    public StrBuilder appendln(Object obj)
    {
        return append(obj).appendNewLine();
    }

    public StrBuilder appendln(String s)
    {
        return append(s).appendNewLine();
    }

    public StrBuilder appendln(String s, int i, int j)
    {
        return append(s, i, j).appendNewLine();
    }

    public transient StrBuilder appendln(String s, Object aobj[])
    {
        return append(s, aobj).appendNewLine();
    }

    public StrBuilder appendln(StringBuffer stringbuffer)
    {
        return append(stringbuffer).appendNewLine();
    }

    public StrBuilder appendln(StringBuffer stringbuffer, int i, int j)
    {
        return append(stringbuffer, i, j).appendNewLine();
    }

    public StrBuilder appendln(StringBuilder stringbuilder)
    {
        return append(stringbuilder).appendNewLine();
    }

    public StrBuilder appendln(StringBuilder stringbuilder, int i, int j)
    {
        return append(stringbuilder, i, j).appendNewLine();
    }

    public StrBuilder appendln(StrBuilder strbuilder)
    {
        return append(strbuilder).appendNewLine();
    }

    public StrBuilder appendln(StrBuilder strbuilder, int i, int j)
    {
        return append(strbuilder, i, j).appendNewLine();
    }

    public StrBuilder appendln(boolean flag)
    {
        return append(flag).appendNewLine();
    }

    public StrBuilder appendln(char ac[])
    {
        return append(ac).appendNewLine();
    }

    public StrBuilder appendln(char ac[], int i, int j)
    {
        return append(ac, i, j).appendNewLine();
    }

    public Reader asReader()
    {
        return new StrBuilderReader();
    }

    public StrTokenizer asTokenizer()
    {
        return new StrBuilderTokenizer();
    }

    public Writer asWriter()
    {
        return new StrBuilderWriter();
    }

    public volatile Object build()
    {
        return build();
    }

    public String build()
    {
        return toString();
    }

    public int capacity()
    {
        return buffer.length;
    }

    public char charAt(int i)
    {
        if (i < 0 || i >= length())
        {
            throw new StringIndexOutOfBoundsException(i);
        } else
        {
            return buffer[i];
        }
    }

    public StrBuilder clear()
    {
        size = 0;
        return this;
    }

    public boolean contains(char c)
    {
        char ac[] = buffer;
        int i = 0;
        do
        {
label0:
            {
                int j = size;
                boolean flag = false;
                if (i < j)
                {
                    if (ac[i] != c)
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i++;
        } while (true);
    }

    public boolean contains(String s)
    {
        int i = indexOf(s, 0);
        boolean flag = false;
        if (i >= 0)
        {
            flag = true;
        }
        return flag;
    }

    public boolean contains(StrMatcher strmatcher)
    {
        int i = indexOf(strmatcher, 0);
        boolean flag = false;
        if (i >= 0)
        {
            flag = true;
        }
        return flag;
    }

    public StrBuilder delete(int i, int j)
    {
        int k = validateRange(i, j);
        int l = k - i;
        if (l > 0)
        {
            deleteImpl(i, k, l);
        }
        return this;
    }

    public StrBuilder deleteAll(char c)
    {
        for (int i = 0; i < size; i++)
        {
            if (buffer[i] != c)
            {
                continue;
            }
            int j;
            for (j = i; ++j < size && buffer[j] == c;) { }
            int k = j - i;
            deleteImpl(i, j, k);
            i = j - k;
        }

        return this;
    }

    public StrBuilder deleteAll(String s)
    {
        int i;
        if (s == null)
        {
            i = 0;
        } else
        {
            i = s.length();
        }
        if (i > 0)
        {
            for (int j = indexOf(s, 0); j >= 0; j = indexOf(s, j))
            {
                deleteImpl(j, j + i, i);
            }

        }
        return this;
    }

    public StrBuilder deleteAll(StrMatcher strmatcher)
    {
        return replace(strmatcher, null, 0, size, -1);
    }

    public StrBuilder deleteCharAt(int i)
    {
        if (i < 0 || i >= size)
        {
            throw new StringIndexOutOfBoundsException(i);
        } else
        {
            deleteImpl(i, i + 1, 1);
            return this;
        }
    }

    public StrBuilder deleteFirst(char c)
    {
        int i = 0;
        do
        {
label0:
            {
                if (i < size)
                {
                    if (buffer[i] != c)
                    {
                        break label0;
                    }
                    deleteImpl(i, i + 1, 1);
                }
                return this;
            }
            i++;
        } while (true);
    }

    public StrBuilder deleteFirst(String s)
    {
        int i;
        if (s == null)
        {
            i = 0;
        } else
        {
            i = s.length();
        }
        if (i > 0)
        {
            int j = indexOf(s, 0);
            if (j >= 0)
            {
                deleteImpl(j, j + i, i);
            }
        }
        return this;
    }

    public StrBuilder deleteFirst(StrMatcher strmatcher)
    {
        return replace(strmatcher, null, 0, size, 1);
    }

    public boolean endsWith(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = s.length();
        if (i == 0)
        {
            return true;
        }
        if (i <= size)
        {
            int j = size - i;
            int k = 0;
label0:
            do
            {
label1:
                {
                    if (k >= i)
                    {
                        break label1;
                    }
                    if (buffer[j] != s.charAt(k))
                    {
                        break label0;
                    }
                    k++;
                    j++;
                }
            } while (true);
        }
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public StrBuilder ensureCapacity(int i)
    {
        if (i > buffer.length)
        {
            char ac[] = buffer;
            buffer = new char[i * 2];
            System.arraycopy(ac, 0, buffer, 0, size);
        }
        return this;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof StrBuilder)
        {
            return equals((StrBuilder)obj);
        } else
        {
            return false;
        }
    }

    public boolean equals(StrBuilder strbuilder)
    {
        if (this != strbuilder)
        {
            if (size != strbuilder.size)
            {
                return false;
            }
            char ac[] = buffer;
            char ac1[] = strbuilder.buffer;
            int i = -1 + size;
            while (i >= 0) 
            {
                if (ac[i] != ac1[i])
                {
                    return false;
                }
                i--;
            }
        }
        return true;
    }

    public boolean equalsIgnoreCase(StrBuilder strbuilder)
    {
        if (this != strbuilder)
        {
            if (size != strbuilder.size)
            {
                return false;
            }
            char ac[] = buffer;
            char ac1[] = strbuilder.buffer;
            int i = -1 + size;
            while (i >= 0) 
            {
                char c = ac[i];
                char c1 = ac1[i];
                if (c != c1 && Character.toUpperCase(c) != Character.toUpperCase(c1))
                {
                    return false;
                }
                i--;
            }
        }
        return true;
    }

    public void getChars(int i, int j, char ac[], int k)
    {
        if (i < 0)
        {
            throw new StringIndexOutOfBoundsException(i);
        }
        if (j < 0 || j > length())
        {
            throw new StringIndexOutOfBoundsException(j);
        }
        if (i > j)
        {
            throw new StringIndexOutOfBoundsException("end < start");
        } else
        {
            System.arraycopy(buffer, i, ac, k, j - i);
            return;
        }
    }

    public char[] getChars(char ac[])
    {
        int i = length();
        if (ac == null || ac.length < i)
        {
            ac = new char[i];
        }
        System.arraycopy(buffer, 0, ac, 0, i);
        return ac;
    }

    public String getNewLineText()
    {
        return newLine;
    }

    public String getNullText()
    {
        return nullText;
    }

    public int hashCode()
    {
        char ac[] = buffer;
        int i = 0;
        for (int j = -1 + size; j >= 0; j--)
        {
            i = i * 31 + ac[j];
        }

        return i;
    }

    public int indexOf(char c)
    {
        return indexOf(c, 0);
    }

    public int indexOf(char c, int i)
    {
        if (i < 0)
        {
            i = 0;
        }
        if (i < size) goto _L2; else goto _L1
_L1:
        i = -1;
_L4:
        return i;
_L2:
        char ac[] = buffer;
label0:
        do
        {
label1:
            {
                if (i >= size)
                {
                    break label1;
                }
                if (ac[i] == c)
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return -1;
    }

    public int indexOf(String s)
    {
        return indexOf(s, 0);
    }

    public int indexOf(String s, int i)
    {
        int j;
        if (i < 0)
        {
            j = 0;
        } else
        {
            j = i;
        }
        if (s != null && j < size) goto _L2; else goto _L1
_L1:
        j = -1;
_L4:
        return j;
_L2:
        int k;
        k = s.length();
        if (k == 1)
        {
            return indexOf(s.charAt(0), j);
        }
        if (k == 0) goto _L4; else goto _L3
_L3:
        char ac[];
        if (k > size)
        {
            return -1;
        }
        ac = buffer;
_L6:
        int i1;
        for (int l = 1 + (size - k); j >= l;)
        {
            break MISSING_BLOCK_LABEL_127;
        }

        i1 = 0;
_L7:
        if (i1 >= k) goto _L4; else goto _L5
_L5:
label0:
        {
            if (s.charAt(i1) == ac[j + i1])
            {
                break label0;
            }
            j++;
        }
          goto _L6
        i1++;
          goto _L7
        return -1;
          goto _L6
    }

    public int indexOf(StrMatcher strmatcher)
    {
        return indexOf(strmatcher, 0);
    }

    public int indexOf(StrMatcher strmatcher, int i)
    {
        int j;
        int k;
        if (i < 0)
        {
            j = 0;
        } else
        {
            j = i;
        }
        if (strmatcher != null && j < size) goto _L2; else goto _L1
_L1:
        k = -1;
_L4:
        return k;
_L2:
        int l = size;
        char ac[] = buffer;
        k = j;
label0:
        do
        {
label1:
            {
                if (k >= l)
                {
                    break label1;
                }
                if (strmatcher.isMatch(ac, k, j, l) > 0)
                {
                    break label0;
                }
                k++;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return -1;
    }

    public StrBuilder insert(int i, char c)
    {
        validateIndex(i);
        ensureCapacity(1 + size);
        System.arraycopy(buffer, i, buffer, i + 1, size - i);
        buffer[i] = c;
        size = 1 + size;
        return this;
    }

    public StrBuilder insert(int i, double d)
    {
        return insert(i, String.valueOf(d));
    }

    public StrBuilder insert(int i, float f)
    {
        return insert(i, String.valueOf(f));
    }

    public StrBuilder insert(int i, int j)
    {
        return insert(i, String.valueOf(j));
    }

    public StrBuilder insert(int i, long l)
    {
        return insert(i, String.valueOf(l));
    }

    public StrBuilder insert(int i, Object obj)
    {
        if (obj == null)
        {
            return insert(i, nullText);
        } else
        {
            return insert(i, obj.toString());
        }
    }

    public StrBuilder insert(int i, String s)
    {
        validateIndex(i);
        if (s == null)
        {
            s = nullText;
        }
        if (s != null)
        {
            int j = s.length();
            if (j > 0)
            {
                int k = j + size;
                ensureCapacity(k);
                System.arraycopy(buffer, i, buffer, i + j, size - i);
                size = k;
                s.getChars(0, j, buffer, i);
            }
        }
        return this;
    }

    public StrBuilder insert(int i, boolean flag)
    {
        validateIndex(i);
        if (flag)
        {
            ensureCapacity(4 + size);
            System.arraycopy(buffer, i, buffer, i + 4, size - i);
            char ac4[] = buffer;
            int j1 = i + 1;
            ac4[i] = 't';
            char ac5[] = buffer;
            int k1 = j1 + 1;
            ac5[j1] = 'r';
            char ac6[] = buffer;
            int l1 = k1 + 1;
            ac6[k1] = 'u';
            buffer[l1] = 'e';
            size = 4 + size;
            return this;
        } else
        {
            ensureCapacity(5 + size);
            System.arraycopy(buffer, i, buffer, i + 5, size - i);
            char ac[] = buffer;
            int j = i + 1;
            ac[i] = 'f';
            char ac1[] = buffer;
            int k = j + 1;
            ac1[j] = 'a';
            char ac2[] = buffer;
            int l = k + 1;
            ac2[k] = 'l';
            char ac3[] = buffer;
            int i1 = l + 1;
            ac3[l] = 's';
            buffer[i1] = 'e';
            size = 5 + size;
            return this;
        }
    }

    public StrBuilder insert(int i, char ac[])
    {
        validateIndex(i);
        if (ac == null)
        {
            this = insert(i, nullText);
        } else
        {
            int j = ac.length;
            if (j > 0)
            {
                ensureCapacity(j + size);
                System.arraycopy(buffer, i, buffer, i + j, size - i);
                System.arraycopy(ac, 0, buffer, i, j);
                size = j + size;
                return this;
            }
        }
        return this;
    }

    public StrBuilder insert(int i, char ac[], int j, int k)
    {
        validateIndex(i);
        if (ac == null)
        {
            this = insert(i, nullText);
        } else
        {
            if (j < 0 || j > ac.length)
            {
                throw new StringIndexOutOfBoundsException((new StringBuilder()).append("Invalid offset: ").append(j).toString());
            }
            if (k < 0 || j + k > ac.length)
            {
                throw new StringIndexOutOfBoundsException((new StringBuilder()).append("Invalid length: ").append(k).toString());
            }
            if (k > 0)
            {
                ensureCapacity(k + size);
                System.arraycopy(buffer, i, buffer, i + k, size - i);
                System.arraycopy(ac, j, buffer, i, k);
                size = k + size;
                return this;
            }
        }
        return this;
    }

    public boolean isEmpty()
    {
        return size == 0;
    }

    public int lastIndexOf(char c)
    {
        return lastIndexOf(c, -1 + size);
    }

    public int lastIndexOf(char c, int i)
    {
        int j;
        if (i >= size)
        {
            j = -1 + size;
        } else
        {
            j = i;
        }
        if (j >= 0) goto _L2; else goto _L1
_L1:
        return -1;
_L4:
        j--;
_L2:
        if (j < 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (buffer[j] == c)
        {
            return j;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
    }

    public int lastIndexOf(String s)
    {
        return lastIndexOf(s, -1 + size);
    }

    public int lastIndexOf(String s, int i)
    {
        int j;
        if (i >= size)
        {
            j = -1 + size;
        } else
        {
            j = i;
        }
        if (s != null && j >= 0) goto _L2; else goto _L1
_L1:
        j = -1;
_L4:
        return j;
_L2:
        int k;
        k = s.length();
        if (k <= 0 || k > size)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (k == 1)
        {
            return lastIndexOf(s.charAt(0), j);
        }
        j = 1 + (j - k);
_L5:
        int l;
        if (j < 0)
        {
            break; /* Loop/switch isn't completed */
        }
        l = 0;
_L6:
        if (l >= k) goto _L4; else goto _L3
_L3:
label0:
        {
            if (s.charAt(l) == buffer[j + l])
            {
                break label0;
            }
            j--;
        }
          goto _L5
        l++;
          goto _L6
        if (k == 0) goto _L4; else goto _L7
_L7:
        return -1;
    }

    public int lastIndexOf(StrMatcher strmatcher)
    {
        return lastIndexOf(strmatcher, size);
    }

    public int lastIndexOf(StrMatcher strmatcher, int i)
    {
        int j;
        if (i >= size)
        {
            j = -1 + size;
        } else
        {
            j = i;
        }
        if (strmatcher != null && j >= 0) goto _L2; else goto _L1
_L1:
        j = -1;
_L4:
        return j;
_L2:
        char ac[] = buffer;
        int k = j + 1;
label0:
        do
        {
label1:
            {
                if (j < 0)
                {
                    break label1;
                }
                if (strmatcher.isMatch(ac, j, 0, k) > 0)
                {
                    break label0;
                }
                j--;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return -1;
    }

    public String leftString(int i)
    {
        if (i <= 0)
        {
            return "";
        }
        if (i >= size)
        {
            return new String(buffer, 0, size);
        } else
        {
            return new String(buffer, 0, i);
        }
    }

    public int length()
    {
        return size;
    }

    public String midString(int i, int j)
    {
        if (i < 0)
        {
            i = 0;
        }
        if (j <= 0 || i >= size)
        {
            return "";
        }
        if (size <= i + j)
        {
            return new String(buffer, i, size - i);
        } else
        {
            return new String(buffer, i, j);
        }
    }

    public StrBuilder minimizeCapacity()
    {
        if (buffer.length > length())
        {
            char ac[] = buffer;
            buffer = new char[length()];
            System.arraycopy(ac, 0, buffer, 0, size);
        }
        return this;
    }

    public StrBuilder replace(int i, int j, String s)
    {
        int k = validateRange(i, j);
        int l;
        if (s == null)
        {
            l = 0;
        } else
        {
            l = s.length();
        }
        replaceImpl(i, k, k - i, s, l);
        return this;
    }

    public StrBuilder replace(StrMatcher strmatcher, String s, int i, int j, int k)
    {
        return replaceImpl(strmatcher, s, i, validateRange(i, j), k);
    }

    public StrBuilder replaceAll(char c, char c1)
    {
        if (c != c1)
        {
            for (int i = 0; i < size; i++)
            {
                if (buffer[i] == c)
                {
                    buffer[i] = c1;
                }
            }

        }
        return this;
    }

    public StrBuilder replaceAll(String s, String s1)
    {
        int i;
        if (s == null)
        {
            i = 0;
        } else
        {
            i = s.length();
        }
        if (i > 0)
        {
            int j;
            int k;
            if (s1 == null)
            {
                j = 0;
            } else
            {
                j = s1.length();
            }
            for (k = indexOf(s, 0); k >= 0; k = indexOf(s, k + j))
            {
                replaceImpl(k, k + i, i, s1, j);
            }

        }
        return this;
    }

    public StrBuilder replaceAll(StrMatcher strmatcher, String s)
    {
        return replace(strmatcher, s, 0, size, -1);
    }

    public StrBuilder replaceFirst(char c, char c1)
    {
        if (c == c1) goto _L2; else goto _L1
_L1:
        int i = 0;
_L7:
        if (i >= size) goto _L2; else goto _L3
_L3:
        if (buffer[i] != c) goto _L5; else goto _L4
_L4:
        buffer[i] = c1;
_L2:
        return this;
_L5:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public StrBuilder replaceFirst(String s, String s1)
    {
        int i;
        if (s == null)
        {
            i = 0;
        } else
        {
            i = s.length();
        }
        if (i > 0)
        {
            int j = indexOf(s, 0);
            if (j >= 0)
            {
                int k = 0;
                if (s1 != null)
                {
                    k = s1.length();
                }
                replaceImpl(j, j + i, i, s1, k);
            }
        }
        return this;
    }

    public StrBuilder replaceFirst(StrMatcher strmatcher, String s)
    {
        return replace(strmatcher, s, 0, size, 1);
    }

    public StrBuilder reverse()
    {
        if (size != 0)
        {
            int i = size / 2;
            char ac[] = buffer;
            int j = 0;
            int k = -1 + size;
            while (j < i) 
            {
                char c = ac[j];
                ac[j] = ac[k];
                ac[k] = c;
                j++;
                k--;
            }
        }
        return this;
    }

    public String rightString(int i)
    {
        if (i <= 0)
        {
            return "";
        }
        if (i >= size)
        {
            return new String(buffer, 0, size);
        } else
        {
            return new String(buffer, size - i, i);
        }
    }

    public StrBuilder setCharAt(int i, char c)
    {
        if (i < 0 || i >= length())
        {
            throw new StringIndexOutOfBoundsException(i);
        } else
        {
            buffer[i] = c;
            return this;
        }
    }

    public StrBuilder setLength(int i)
    {
        if (i < 0)
        {
            throw new StringIndexOutOfBoundsException(i);
        }
        if (i >= size) goto _L2; else goto _L1
_L1:
        size = i;
_L4:
        return this;
_L2:
        if (i > size)
        {
            ensureCapacity(i);
            int j = size;
            size = i;
            while (j < i) 
            {
                buffer[j] = '\0';
                j++;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public StrBuilder setNewLineText(String s)
    {
        newLine = s;
        return this;
    }

    public StrBuilder setNullText(String s)
    {
        if (s != null && s.isEmpty())
        {
            s = null;
        }
        nullText = s;
        return this;
    }

    public int size()
    {
        return size;
    }

    public boolean startsWith(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = s.length();
        if (i == 0)
        {
            return true;
        }
        if (i <= size)
        {
            int j = 0;
label0:
            do
            {
label1:
                {
                    if (j >= i)
                    {
                        break label1;
                    }
                    if (buffer[j] != s.charAt(j))
                    {
                        break label0;
                    }
                    j++;
                }
            } while (true);
        }
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public CharSequence subSequence(int i, int j)
    {
        if (i < 0)
        {
            throw new StringIndexOutOfBoundsException(i);
        }
        if (j > size)
        {
            throw new StringIndexOutOfBoundsException(j);
        }
        if (i > j)
        {
            throw new StringIndexOutOfBoundsException(j - i);
        } else
        {
            return substring(i, j);
        }
    }

    public String substring(int i)
    {
        return substring(i, size);
    }

    public String substring(int i, int j)
    {
        int k = validateRange(i, j);
        return new String(buffer, i, k - i);
    }

    public char[] toCharArray()
    {
        if (size == 0)
        {
            return ArrayUtils.EMPTY_CHAR_ARRAY;
        } else
        {
            char ac[] = new char[size];
            System.arraycopy(buffer, 0, ac, 0, size);
            return ac;
        }
    }

    public char[] toCharArray(int i, int j)
    {
        int k = validateRange(i, j) - i;
        if (k == 0)
        {
            return ArrayUtils.EMPTY_CHAR_ARRAY;
        } else
        {
            char ac[] = new char[k];
            System.arraycopy(buffer, i, ac, 0, k);
            return ac;
        }
    }

    public String toString()
    {
        return new String(buffer, 0, size);
    }

    public StringBuffer toStringBuffer()
    {
        return (new StringBuffer(size)).append(buffer, 0, size);
    }

    public StringBuilder toStringBuilder()
    {
        return (new StringBuilder(size)).append(buffer, 0, size);
    }

    public StrBuilder trim()
    {
        if (size != 0)
        {
            int i = size;
            char ac[] = buffer;
            int j;
            for (j = 0; j < i && ac[j] <= ' '; j++) { }
            for (; j < i && ac[i - 1] <= ' '; i--) { }
            if (i < size)
            {
                delete(i, size);
            }
            if (j > 0)
            {
                delete(0, j);
                return this;
            }
        }
        return this;
    }

    protected void validateIndex(int i)
    {
        if (i < 0 || i > size)
        {
            throw new StringIndexOutOfBoundsException(i);
        } else
        {
            return;
        }
    }

    protected int validateRange(int i, int j)
    {
        if (i < 0)
        {
            throw new StringIndexOutOfBoundsException(i);
        }
        if (j > size)
        {
            j = size;
        }
        if (i > j)
        {
            throw new StringIndexOutOfBoundsException("end < start");
        } else
        {
            return j;
        }
    }
}
