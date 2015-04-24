// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring.tracks;


public class H265TrackImpl
{
    class LookAhead
    {
    }

    public static class NalUnitHeader
    {

        public NalUnitHeader()
        {
        }
    }

    public static final class PARSE_STATE extends Enum
    {

        public static final PARSE_STATE a;
        public static final PARSE_STATE b;
        public static final PARSE_STATE c;
        private static final PARSE_STATE d[];

        public static PARSE_STATE valueOf(String s)
        {
            return (PARSE_STATE)Enum.valueOf(com/googlecode/mp4parser/authoring/tracks/H265TrackImpl$PARSE_STATE, s);
        }

        public static PARSE_STATE[] values()
        {
            PARSE_STATE aparse_state[] = d;
            int i = aparse_state.length;
            PARSE_STATE aparse_state1[] = new PARSE_STATE[i];
            System.arraycopy(aparse_state, 0, aparse_state1, 0, i);
            return aparse_state1;
        }

        static 
        {
            a = new PARSE_STATE("AUD_SEI_SLICE", 0);
            b = new PARSE_STATE("SEI_SLICE", 1);
            c = new PARSE_STATE("SLICE_OES_EOB", 2);
            PARSE_STATE aparse_state[] = new PARSE_STATE[3];
            aparse_state[0] = a;
            aparse_state[1] = b;
            aparse_state[2] = c;
            d = aparse_state;
        }

        private PARSE_STATE(String s, int i)
        {
            super(s, i);
        }
    }

}
