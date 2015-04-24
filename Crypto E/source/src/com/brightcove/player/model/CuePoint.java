// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.model;

import com.brightcove.player.util.ErrorUtil;
import java.util.Map;

// Referenced classes of package com.brightcove.player.model:
//            MetadataObject

public class CuePoint extends MetadataObject
    implements Comparable
{
    public static final class PositionType extends Enum
    {

        private static final PositionType $VALUES[];
        public static final PositionType AFTER;
        public static final PositionType BEFORE;
        public static final PositionType POINT_IN_TIME;

        public static PositionType valueOf(String s)
        {
            return (PositionType)Enum.valueOf(com/brightcove/player/model/CuePoint$PositionType, s);
        }

        public static PositionType[] values()
        {
            return (PositionType[])$VALUES.clone();
        }

        static 
        {
            BEFORE = new PositionType("BEFORE", 0);
            POINT_IN_TIME = new PositionType("POINT_IN_TIME", 1);
            AFTER = new PositionType("AFTER", 2);
            PositionType apositiontype[] = new PositionType[3];
            apositiontype[0] = BEFORE;
            apositiontype[1] = POINT_IN_TIME;
            apositiontype[2] = AFTER;
            $VALUES = apositiontype;
        }

        private PositionType(String s, int i)
        {
            super(s, i);
        }
    }


    private int position;
    private PositionType positionType;
    private String type;

    public CuePoint(int i, String s, Map map)
    {
        super(map);
        positionType = PositionType.POINT_IN_TIME;
        position = i;
        type = s;
    }

    public CuePoint(PositionType positiontype, String s, Map map)
    {
        super(map);
        if (positiontype == PositionType.POINT_IN_TIME)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("otherConstructor"));
        } else
        {
            positionType = positiontype;
            type = s;
            return;
        }
    }

    public int compareTo(CuePoint cuepoint)
    {
        if (positionType != PositionType.BEFORE || cuepoint.positionType == PositionType.BEFORE) goto _L2; else goto _L1
_L1:
        return -1;
_L2:
        if (positionType == PositionType.AFTER && cuepoint.positionType != PositionType.AFTER)
        {
            return 1;
        }
        if (positionType != PositionType.POINT_IN_TIME)
        {
            break; /* Loop/switch isn't completed */
        }
        if (cuepoint.positionType == PositionType.BEFORE)
        {
            return 1;
        }
        if (cuepoint.positionType == PositionType.AFTER || position < cuepoint.position)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (position > cuepoint.position)
        {
            return 1;
        }
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        return 0;
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((CuePoint)obj);
    }

    public int getPosition()
    {
        if (positionType != PositionType.POINT_IN_TIME)
        {
            String s = ErrorUtil.getMessage("invalidPointInTime");
            Object aobj[] = new Object[1];
            aobj[0] = positionType.toString();
            throw new IllegalStateException(String.format(s, aobj));
        } else
        {
            return position;
        }
    }

    public PositionType getPositionType()
    {
        return positionType;
    }

    public String getType()
    {
        return type;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("CuePoint {");
        stringbuilder.append("position:");
        stringbuilder.append(position);
        stringbuilder.append(" positionType:");
        Object obj;
        String s;
        if (positionType == null)
        {
            obj = "null";
        } else
        {
            obj = positionType;
        }
        stringbuilder.append(obj);
        stringbuilder.append(" type:");
        if (type == null)
        {
            s = "null";
        } else
        {
            s = type;
        }
        stringbuilder.append(s);
        stringbuilder.append("}");
        return stringbuilder.toString();
    }
}
