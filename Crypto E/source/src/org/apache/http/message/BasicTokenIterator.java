// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.message;

import java.util.NoSuchElementException;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.ParseException;
import org.apache.http.TokenIterator;
import org.apache.http.util.Args;

public class BasicTokenIterator
    implements TokenIterator
{

    public static final String HTTP_SEPARATORS = " ,;=()<>@:\\\"/[]?{}\t";
    protected String currentHeader;
    protected String currentToken;
    protected final HeaderIterator headerIt;
    protected int searchPos;

    public BasicTokenIterator(HeaderIterator headeriterator)
    {
        headerIt = (HeaderIterator)Args.notNull(headeriterator, "Header iterator");
        searchPos = findNext(-1);
    }

    protected String createToken(String s, int i, int j)
    {
        return s.substring(i, j);
    }

    protected int findNext(int i)
    {
        int j;
        int k;
        if (i < 0)
        {
            if (!headerIt.hasNext())
            {
                return -1;
            }
            currentHeader = headerIt.nextHeader().getValue();
            j = 0;
        } else
        {
            j = findTokenSeparator(i);
        }
        k = findTokenStart(j);
        if (k < 0)
        {
            currentToken = null;
            return -1;
        } else
        {
            int l = findTokenEnd(k);
            currentToken = createToken(currentHeader, k, l);
            return l;
        }
    }

    protected int findTokenEnd(int i)
    {
        Args.notNegative(i, "Search position");
        int j = currentHeader.length();
        int k;
        for (k = i + 1; k < j && isTokenChar(currentHeader.charAt(k)); k++) { }
        return k;
    }

    protected int findTokenSeparator(int i)
    {
        int j = Args.notNegative(i, "Search position");
        boolean flag = false;
        for (int k = currentHeader.length(); !flag && j < k;)
        {
            char c = currentHeader.charAt(j);
            if (isTokenSeparator(c))
            {
                flag = true;
            } else
            if (isWhitespace(c))
            {
                j++;
            } else
            if (isTokenChar(c))
            {
                throw new ParseException((new StringBuilder()).append("Tokens without separator (pos ").append(j).append("): ").append(currentHeader).toString());
            } else
            {
                throw new ParseException((new StringBuilder()).append("Invalid character after token (pos ").append(j).append("): ").append(currentHeader).toString());
            }
        }

        return j;
    }

    protected int findTokenStart(int i)
    {
        int j = Args.notNegative(i, "Search position");
        boolean flag = false;
        while (!flag && currentHeader != null) 
        {
            int k = currentHeader.length();
            boolean flag1 = flag;
            int l = j;
            boolean flag2;
            for (flag2 = flag1; !flag2 && l < k;)
            {
                char c = currentHeader.charAt(l);
                if (isTokenSeparator(c) || isWhitespace(c))
                {
                    l++;
                } else
                if (isTokenChar(currentHeader.charAt(l)))
                {
                    flag2 = true;
                } else
                {
                    throw new ParseException((new StringBuilder()).append("Invalid character before token (pos ").append(l).append("): ").append(currentHeader).toString());
                }
            }

            boolean flag3;
            if (!flag2)
            {
                if (headerIt.hasNext())
                {
                    currentHeader = headerIt.nextHeader().getValue();
                    l = 0;
                } else
                {
                    currentHeader = null;
                }
            }
            flag3 = flag2;
            j = l;
            flag = flag3;
        }
        if (flag)
        {
            return j;
        } else
        {
            return -1;
        }
    }

    public boolean hasNext()
    {
        return currentToken != null;
    }

    protected boolean isHttpSeparator(char c)
    {
        return " ,;=()<>@:\\\"/[]?{}\t".indexOf(c) >= 0;
    }

    protected boolean isTokenChar(char c)
    {
        if (!Character.isLetterOrDigit(c))
        {
            if (Character.isISOControl(c))
            {
                return false;
            }
            if (isHttpSeparator(c))
            {
                return false;
            }
        }
        return true;
    }

    protected boolean isTokenSeparator(char c)
    {
        return c == ',';
    }

    protected boolean isWhitespace(char c)
    {
        return c == '\t' || Character.isSpaceChar(c);
    }

    public final Object next()
    {
        return nextToken();
    }

    public String nextToken()
    {
        if (currentToken == null)
        {
            throw new NoSuchElementException("Iteration already finished.");
        } else
        {
            String s = currentToken;
            searchPos = findNext(searchPos);
            return s;
        }
    }

    public final void remove()
    {
        throw new UnsupportedOperationException("Removing tokens is not supported.");
    }
}
