// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            pw

public class px
    implements android.os.Parcelable.Creator
{

    public px()
    {
    }

    static void a(pw pw1, Parcel parcel, int i)
    {
        int j = b.am(parcel);
        Set set = pw1.avz;
        if (set.contains(Integer.valueOf(1)))
        {
            b.c(parcel, 1, pw1.DN);
        }
        if (set.contains(Integer.valueOf(2)))
        {
            b.a(parcel, 2, pw1.avA, i, true);
        }
        if (set.contains(Integer.valueOf(3)))
        {
            b.b(parcel, 3, pw1.avB, true);
        }
        if (set.contains(Integer.valueOf(4)))
        {
            b.a(parcel, 4, pw1.avC, i, true);
        }
        if (set.contains(Integer.valueOf(5)))
        {
            b.a(parcel, 5, pw1.avD, true);
        }
        if (set.contains(Integer.valueOf(6)))
        {
            b.a(parcel, 6, pw1.avE, true);
        }
        if (set.contains(Integer.valueOf(7)))
        {
            b.a(parcel, 7, pw1.avF, true);
        }
        if (set.contains(Integer.valueOf(8)))
        {
            b.c(parcel, 8, pw1.avG, true);
        }
        if (set.contains(Integer.valueOf(9)))
        {
            b.c(parcel, 9, pw1.avH);
        }
        if (set.contains(Integer.valueOf(10)))
        {
            b.c(parcel, 10, pw1.avI, true);
        }
        if (set.contains(Integer.valueOf(11)))
        {
            b.a(parcel, 11, pw1.avJ, i, true);
        }
        if (set.contains(Integer.valueOf(12)))
        {
            b.c(parcel, 12, pw1.avK, true);
        }
        if (set.contains(Integer.valueOf(13)))
        {
            b.a(parcel, 13, pw1.avL, true);
        }
        if (set.contains(Integer.valueOf(14)))
        {
            b.a(parcel, 14, pw1.avM, true);
        }
        if (set.contains(Integer.valueOf(15)))
        {
            b.a(parcel, 15, pw1.avN, i, true);
        }
        if (set.contains(Integer.valueOf(17)))
        {
            b.a(parcel, 17, pw1.avP, true);
        }
        if (set.contains(Integer.valueOf(16)))
        {
            b.a(parcel, 16, pw1.avO, true);
        }
        if (set.contains(Integer.valueOf(19)))
        {
            b.c(parcel, 19, pw1.avQ, true);
        }
        if (set.contains(Integer.valueOf(18)))
        {
            b.a(parcel, 18, pw1.oF, true);
        }
        if (set.contains(Integer.valueOf(21)))
        {
            b.a(parcel, 21, pw1.avS, true);
        }
        if (set.contains(Integer.valueOf(20)))
        {
            b.a(parcel, 20, pw1.avR, true);
        }
        if (set.contains(Integer.valueOf(23)))
        {
            b.a(parcel, 23, pw1.acd, true);
        }
        if (set.contains(Integer.valueOf(22)))
        {
            b.a(parcel, 22, pw1.avT, true);
        }
        if (set.contains(Integer.valueOf(25)))
        {
            b.a(parcel, 25, pw1.avV, true);
        }
        if (set.contains(Integer.valueOf(24)))
        {
            b.a(parcel, 24, pw1.avU, true);
        }
        if (set.contains(Integer.valueOf(27)))
        {
            b.a(parcel, 27, pw1.avX, true);
        }
        if (set.contains(Integer.valueOf(26)))
        {
            b.a(parcel, 26, pw1.avW, true);
        }
        if (set.contains(Integer.valueOf(29)))
        {
            b.a(parcel, 29, pw1.avZ, i, true);
        }
        if (set.contains(Integer.valueOf(28)))
        {
            b.a(parcel, 28, pw1.avY, true);
        }
        if (set.contains(Integer.valueOf(31)))
        {
            b.a(parcel, 31, pw1.awb, true);
        }
        if (set.contains(Integer.valueOf(30)))
        {
            b.a(parcel, 30, pw1.awa, true);
        }
        if (set.contains(Integer.valueOf(34)))
        {
            b.a(parcel, 34, pw1.awd, i, true);
        }
        if (set.contains(Integer.valueOf(32)))
        {
            b.a(parcel, 32, pw1.DH, true);
        }
        if (set.contains(Integer.valueOf(33)))
        {
            b.a(parcel, 33, pw1.awc, true);
        }
        if (set.contains(Integer.valueOf(38)))
        {
            b.a(parcel, 38, pw1.anw);
        }
        if (set.contains(Integer.valueOf(39)))
        {
            b.a(parcel, 39, pw1.mName, true);
        }
        if (set.contains(Integer.valueOf(36)))
        {
            b.a(parcel, 36, pw1.anv);
        }
        if (set.contains(Integer.valueOf(37)))
        {
            b.a(parcel, 37, pw1.awe, i, true);
        }
        if (set.contains(Integer.valueOf(42)))
        {
            b.a(parcel, 42, pw1.awh, true);
        }
        if (set.contains(Integer.valueOf(43)))
        {
            b.a(parcel, 43, pw1.awi, true);
        }
        if (set.contains(Integer.valueOf(40)))
        {
            b.a(parcel, 40, pw1.awf, i, true);
        }
        if (set.contains(Integer.valueOf(41)))
        {
            b.c(parcel, 41, pw1.awg, true);
        }
        if (set.contains(Integer.valueOf(46)))
        {
            b.a(parcel, 46, pw1.awl, i, true);
        }
        if (set.contains(Integer.valueOf(47)))
        {
            b.a(parcel, 47, pw1.awm, true);
        }
        if (set.contains(Integer.valueOf(44)))
        {
            b.a(parcel, 44, pw1.awj, true);
        }
        if (set.contains(Integer.valueOf(45)))
        {
            b.a(parcel, 45, pw1.awk, true);
        }
        if (set.contains(Integer.valueOf(51)))
        {
            b.a(parcel, 51, pw1.awq, true);
        }
        if (set.contains(Integer.valueOf(50)))
        {
            b.a(parcel, 50, pw1.awp, i, true);
        }
        if (set.contains(Integer.valueOf(49)))
        {
            b.a(parcel, 49, pw1.awo, true);
        }
        if (set.contains(Integer.valueOf(48)))
        {
            b.a(parcel, 48, pw1.awn, true);
        }
        if (set.contains(Integer.valueOf(55)))
        {
            b.a(parcel, 55, pw1.aws, true);
        }
        if (set.contains(Integer.valueOf(54)))
        {
            b.a(parcel, 54, pw1.wh, true);
        }
        if (set.contains(Integer.valueOf(53)))
        {
            b.a(parcel, 53, pw1.we, true);
        }
        if (set.contains(Integer.valueOf(52)))
        {
            b.a(parcel, 52, pw1.awr, true);
        }
        if (set.contains(Integer.valueOf(56)))
        {
            b.a(parcel, 56, pw1.awt, true);
        }
        b.I(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return eb(parcel);
    }

    public pw eb(Parcel parcel)
    {
        int i = com.google.android.gms.common.internal.safeparcel.a.al(parcel);
        HashSet hashset = new HashSet();
        int j = 0;
        pw pw1 = null;
        java.util.ArrayList arraylist = null;
        pw pw2 = null;
        String s = null;
        String s1 = null;
        String s2 = null;
        java.util.ArrayList arraylist1 = null;
        int k = 0;
        java.util.ArrayList arraylist2 = null;
        pw pw3 = null;
        java.util.ArrayList arraylist3 = null;
        String s3 = null;
        String s4 = null;
        pw pw4 = null;
        String s5 = null;
        String s6 = null;
        String s7 = null;
        java.util.ArrayList arraylist4 = null;
        String s8 = null;
        String s9 = null;
        String s10 = null;
        String s11 = null;
        String s12 = null;
        String s13 = null;
        String s14 = null;
        String s15 = null;
        String s16 = null;
        pw pw5 = null;
        String s17 = null;
        String s18 = null;
        String s19 = null;
        String s20 = null;
        pw pw6 = null;
        double d = 0.0D;
        pw pw7 = null;
        double d1 = 0.0D;
        String s21 = null;
        pw pw8 = null;
        java.util.ArrayList arraylist5 = null;
        String s22 = null;
        String s23 = null;
        String s24 = null;
        String s25 = null;
        pw pw9 = null;
        String s26 = null;
        String s27 = null;
        String s28 = null;
        pw pw10 = null;
        String s29 = null;
        String s30 = null;
        String s31 = null;
        String s32 = null;
        String s33 = null;
        String s34 = null;
        do
        {
            if (parcel.dataPosition() < i)
            {
                int l = com.google.android.gms.common.internal.safeparcel.a.ak(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.a.bO(l))
                {
                case 35: // '#'
                default:
                    com.google.android.gms.common.internal.safeparcel.a.b(parcel, l);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    hashset.add(Integer.valueOf(1));
                    break;

                case 2: // '\002'
                    pw pw20 = (pw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(2));
                    pw1 = pw20;
                    break;

                case 3: // '\003'
                    arraylist = com.google.android.gms.common.internal.safeparcel.a.D(parcel, l);
                    hashset.add(Integer.valueOf(3));
                    break;

                case 4: // '\004'
                    pw pw19 = (pw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(4));
                    pw2 = pw19;
                    break;

                case 5: // '\005'
                    s = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(5));
                    break;

                case 6: // '\006'
                    s1 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(6));
                    break;

                case 7: // '\007'
                    s2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(7));
                    break;

                case 8: // '\b'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(8));
                    break;

                case 9: // '\t'
                    k = com.google.android.gms.common.internal.safeparcel.a.g(parcel, l);
                    hashset.add(Integer.valueOf(9));
                    break;

                case 10: // '\n'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(10));
                    break;

                case 11: // '\013'
                    pw pw18 = (pw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(11));
                    pw3 = pw18;
                    break;

                case 12: // '\f'
                    arraylist3 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(12));
                    break;

                case 13: // '\r'
                    s3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(13));
                    break;

                case 14: // '\016'
                    s4 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(14));
                    break;

                case 15: // '\017'
                    pw pw17 = (pw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(15));
                    pw4 = pw17;
                    break;

                case 17: // '\021'
                    s6 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(17));
                    break;

                case 16: // '\020'
                    s5 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(16));
                    break;

                case 19: // '\023'
                    arraylist4 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(19));
                    break;

                case 18: // '\022'
                    s7 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(18));
                    break;

                case 21: // '\025'
                    s9 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(21));
                    break;

                case 20: // '\024'
                    s8 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(20));
                    break;

                case 23: // '\027'
                    s11 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(23));
                    break;

                case 22: // '\026'
                    s10 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(22));
                    break;

                case 25: // '\031'
                    s13 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(25));
                    break;

                case 24: // '\030'
                    s12 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(24));
                    break;

                case 27: // '\033'
                    s15 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(27));
                    break;

                case 26: // '\032'
                    s14 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(26));
                    break;

                case 29: // '\035'
                    pw pw16 = (pw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(29));
                    pw5 = pw16;
                    break;

                case 28: // '\034'
                    s16 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(28));
                    break;

                case 31: // '\037'
                    s18 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(31));
                    break;

                case 30: // '\036'
                    s17 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(30));
                    break;

                case 34: // '"'
                    pw pw15 = (pw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(34));
                    pw6 = pw15;
                    break;

                case 32: // ' '
                    s19 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(32));
                    break;

                case 33: // '!'
                    s20 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(33));
                    break;

                case 38: // '&'
                    d1 = com.google.android.gms.common.internal.safeparcel.a.m(parcel, l);
                    hashset.add(Integer.valueOf(38));
                    break;

                case 39: // '\''
                    s21 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(39));
                    break;

                case 36: // '$'
                    d = com.google.android.gms.common.internal.safeparcel.a.m(parcel, l);
                    hashset.add(Integer.valueOf(36));
                    break;

                case 37: // '%'
                    pw pw14 = (pw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(37));
                    pw7 = pw14;
                    break;

                case 42: // '*'
                    s22 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(42));
                    break;

                case 43: // '+'
                    s23 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(43));
                    break;

                case 40: // '('
                    pw pw13 = (pw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(40));
                    pw8 = pw13;
                    break;

                case 41: // ')'
                    arraylist5 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(41));
                    break;

                case 46: // '.'
                    pw pw12 = (pw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(46));
                    pw9 = pw12;
                    break;

                case 47: // '/'
                    s26 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(47));
                    break;

                case 44: // ','
                    s24 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(44));
                    break;

                case 45: // '-'
                    s25 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(45));
                    break;

                case 51: // '3'
                    s29 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(51));
                    break;

                case 50: // '2'
                    pw pw11 = (pw)com.google.android.gms.common.internal.safeparcel.a.a(parcel, l, pw.CREATOR);
                    hashset.add(Integer.valueOf(50));
                    pw10 = pw11;
                    break;

                case 49: // '1'
                    s28 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(49));
                    break;

                case 48: // '0'
                    s27 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(48));
                    break;

                case 55: // '7'
                    s33 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(55));
                    break;

                case 54: // '6'
                    s32 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(54));
                    break;

                case 53: // '5'
                    s31 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(53));
                    break;

                case 52: // '4'
                    s30 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(52));
                    break;

                case 56: // '8'
                    s34 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, l);
                    hashset.add(Integer.valueOf(56));
                    break;
                }
            } else
            {
                if (parcel.dataPosition() != i)
                {
                    throw new com.google.android.gms.common.internal.safeparcel.a.a((new StringBuilder()).append("Overread allowed size end=").append(i).toString(), parcel);
                }
                return new pw(hashset, j, pw1, arraylist, pw2, s, s1, s2, arraylist1, k, arraylist2, pw3, arraylist3, s3, s4, pw4, s5, s6, s7, arraylist4, s8, s9, s10, s11, s12, s13, s14, s15, s16, pw5, s17, s18, s19, s20, pw6, d, pw7, d1, s21, pw8, arraylist5, s22, s23, s24, s25, pw9, s26, s27, s28, pw10, s29, s30, s31, s32, s33, s34);
            }
        } while (true);
    }

    public pw[] gB(int i)
    {
        return new pw[i];
    }

    public Object[] newArray(int i)
    {
        return gB(i);
    }
}
