// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;

import com.brightcove.player.util.StringUtil;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Length
    implements Serializable
{

    public static final Pattern PATTERN = Pattern.compile("^([0-9.-]+)(%|px|ems)$");
    private StyledElement.Unit unit;
    private Double value;

    public Length(double d, StyledElement.Unit unit1)
    {
        if (unit1 == null)
        {
            throw new IllegalArgumentException("must provide a Unit");
        } else
        {
            value = Double.valueOf(d);
            unit = unit1;
            return;
        }
    }

    public Length(String s)
    {
        if (StringUtil.isEmpty(s))
        {
            throw new IllegalArgumentException("must provide a non-empty expression String");
        }
        Matcher matcher = PATTERN.matcher(s);
        if (matcher.find() && matcher.groupCount() >= 2)
        {
            String s1 = matcher.group(1);
            String s2 = matcher.group(2);
            if (StringUtil.isEmpty(s1))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("invalid number format: ").append(s1).toString());
            }
            if (StringUtil.isEmpty(s2))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("invalid unit format: ").append(s2).toString());
            }
            value = Double.valueOf(Double.parseDouble(s1));
            unit = StyledElement.Unit.fromString(s2.toUpperCase());
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            Length length = (Length)obj;
            if (Double.compare(length.value.doubleValue(), value.doubleValue()) != 0)
            {
                return false;
            }
            if (unit != length.unit)
            {
                return false;
            }
        }
        return true;
    }

    public StyledElement.Unit getUnit()
    {
        return unit;
    }

    public double getValue()
    {
        return value.doubleValue();
    }

    public int hashCode()
    {
        long l;
        if (value.doubleValue() != 0.0D)
        {
            l = Double.doubleToLongBits(value.doubleValue());
        } else
        {
            l = 0L;
        }
        return 31 * (int)(l ^ l >>> 32) + unit.hashCode();
    }

}
