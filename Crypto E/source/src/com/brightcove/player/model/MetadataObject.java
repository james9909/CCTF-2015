// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;

import android.util.Log;
import com.brightcove.player.util.ErrorUtil;
import java.io.Serializable;
import java.util.Map;

public abstract class MetadataObject
    implements Serializable
{

    public static final String TAG = com/brightcove/player/model/MetadataObject.getSimpleName();
    protected Map properties;

    public MetadataObject(Map map)
    {
        if (map == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("propertiesRequired"));
        } else
        {
            properties = map;
            return;
        }
    }

    public Integer getIntegerProperty(String s)
    {
        Integer integer1;
        if (!properties.containsKey(s))
        {
            break MISSING_BLOCK_LABEL_120;
        }
        Object obj;
        Integer integer;
        try
        {
            obj = properties.get(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            Log.e(TAG, (new StringBuilder()).append("Error converting value of <").append(properties.get(s)).append("> for key '").append(s).append("'").toString());
            return null;
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        if (obj instanceof Integer)
        {
            integer1 = (Integer)obj;
            break MISSING_BLOCK_LABEL_156;
        }
        integer = Integer.valueOf(Integer.parseInt(obj.toString()));
        integer1 = integer;
        break MISSING_BLOCK_LABEL_156;
        Log.w(TAG, (new StringBuilder()).append("Could not find property with name '").append(s).append("'").toString());
        return null;
        integer1 = null;
        return integer1;
    }

    public Map getProperties()
    {
        return properties;
    }

    public String getStringProperty(String s)
    {
        if (properties.containsKey(s))
        {
            Object obj = properties.get(s);
            if (obj instanceof String)
            {
                return (String)obj;
            } else
            {
                return null;
            }
        } else
        {
            return null;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("MetadataObject");
        stringbuilder.append("{properties: ").append(properties.size());
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
