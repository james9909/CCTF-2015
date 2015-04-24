// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.plus.model.moments.ItemScope;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            ll, px

public final class pw extends ll
    implements ItemScope
{

    public static final px CREATOR = new px();
    private static final HashMap avy;
    String DH;
    final int DN;
    String acd;
    double anv;
    double anw;
    pw avA;
    List avB;
    pw avC;
    String avD;
    String avE;
    String avF;
    List avG;
    int avH;
    List avI;
    pw avJ;
    List avK;
    String avL;
    String avM;
    pw avN;
    String avO;
    String avP;
    List avQ;
    String avR;
    String avS;
    String avT;
    String avU;
    String avV;
    String avW;
    String avX;
    String avY;
    pw avZ;
    final Set avz;
    String awa;
    String awb;
    String awc;
    pw awd;
    pw awe;
    pw awf;
    List awg;
    String awh;
    String awi;
    String awj;
    String awk;
    pw awl;
    String awm;
    String awn;
    String awo;
    pw awp;
    String awq;
    String awr;
    String aws;
    String awt;
    String mName;
    String oF;
    String we;
    String wh;

    public pw()
    {
        DN = 1;
        avz = new HashSet();
    }

    pw(Set set, int i, pw pw1, List list, pw pw2, String s, String s1, 
            String s2, List list1, int j, List list2, pw pw3, List list3, String s3, 
            String s4, pw pw4, String s5, String s6, String s7, List list4, String s8, 
            String s9, String s10, String s11, String s12, String s13, String s14, String s15, 
            String s16, pw pw5, String s17, String s18, String s19, String s20, pw pw6, 
            double d, pw pw7, double d1, String s21, pw pw8, 
            List list5, String s22, String s23, String s24, String s25, pw pw9, String s26, 
            String s27, String s28, pw pw10, String s29, String s30, String s31, String s32, 
            String s33, String s34)
    {
        avz = set;
        DN = i;
        avA = pw1;
        avB = list;
        avC = pw2;
        avD = s;
        avE = s1;
        avF = s2;
        avG = list1;
        avH = j;
        avI = list2;
        avJ = pw3;
        avK = list3;
        avL = s3;
        avM = s4;
        avN = pw4;
        avO = s5;
        avP = s6;
        oF = s7;
        avQ = list4;
        avR = s8;
        avS = s9;
        avT = s10;
        acd = s11;
        avU = s12;
        avV = s13;
        avW = s14;
        avX = s15;
        avY = s16;
        avZ = pw5;
        awa = s17;
        awb = s18;
        DH = s19;
        awc = s20;
        awd = pw6;
        anv = d;
        awe = pw7;
        anw = d1;
        mName = s21;
        awf = pw8;
        awg = list5;
        awh = s22;
        awi = s23;
        awj = s24;
        awk = s25;
        awl = pw9;
        awm = s26;
        awn = s27;
        awo = s28;
        awp = pw10;
        awq = s29;
        awr = s30;
        we = s31;
        wh = s32;
        aws = s33;
        awt = s34;
    }

    public pw(Set set, pw pw1, List list, pw pw2, String s, String s1, String s2, 
            List list1, int i, List list2, pw pw3, List list3, String s3, String s4, 
            pw pw4, String s5, String s6, String s7, List list4, String s8, String s9, 
            String s10, String s11, String s12, String s13, String s14, String s15, String s16, 
            pw pw5, String s17, String s18, String s19, String s20, pw pw6, double d, pw pw7, double d1, String s21, pw pw8, List list5, 
            String s22, String s23, String s24, String s25, pw pw9, String s26, String s27, 
            String s28, pw pw10, String s29, String s30, String s31, String s32, String s33, 
            String s34)
    {
        avz = set;
        DN = 1;
        avA = pw1;
        avB = list;
        avC = pw2;
        avD = s;
        avE = s1;
        avF = s2;
        avG = list1;
        avH = i;
        avI = list2;
        avJ = pw3;
        avK = list3;
        avL = s3;
        avM = s4;
        avN = pw4;
        avO = s5;
        avP = s6;
        oF = s7;
        avQ = list4;
        avR = s8;
        avS = s9;
        avT = s10;
        acd = s11;
        avU = s12;
        avV = s13;
        avW = s14;
        avX = s15;
        avY = s16;
        avZ = pw5;
        awa = s17;
        awb = s18;
        DH = s19;
        awc = s20;
        awd = pw6;
        anv = d;
        awe = pw7;
        anw = d1;
        mName = s21;
        awf = pw8;
        awg = list5;
        awh = s22;
        awi = s23;
        awj = s24;
        awk = s25;
        awl = pw9;
        awm = s26;
        awn = s27;
        awo = s28;
        awp = pw10;
        awq = s29;
        awr = s30;
        we = s31;
        wh = s32;
        aws = s33;
        awt = s34;
    }

    protected boolean a(lk.a a1)
    {
        return avz.contains(Integer.valueOf(a1.kb()));
    }

    protected Object b(lk.a a1)
    {
        switch (a1.kb())
        {
        case 35: // '#'
        default:
            throw new IllegalStateException((new StringBuilder()).append("Unknown safe parcelable id=").append(a1.kb()).toString());

        case 2: // '\002'
            return avA;

        case 3: // '\003'
            return avB;

        case 4: // '\004'
            return avC;

        case 5: // '\005'
            return avD;

        case 6: // '\006'
            return avE;

        case 7: // '\007'
            return avF;

        case 8: // '\b'
            return avG;

        case 9: // '\t'
            return Integer.valueOf(avH);

        case 10: // '\n'
            return avI;

        case 11: // '\013'
            return avJ;

        case 12: // '\f'
            return avK;

        case 13: // '\r'
            return avL;

        case 14: // '\016'
            return avM;

        case 15: // '\017'
            return avN;

        case 16: // '\020'
            return avO;

        case 17: // '\021'
            return avP;

        case 18: // '\022'
            return oF;

        case 19: // '\023'
            return avQ;

        case 20: // '\024'
            return avR;

        case 21: // '\025'
            return avS;

        case 22: // '\026'
            return avT;

        case 23: // '\027'
            return acd;

        case 24: // '\030'
            return avU;

        case 25: // '\031'
            return avV;

        case 26: // '\032'
            return avW;

        case 27: // '\033'
            return avX;

        case 28: // '\034'
            return avY;

        case 29: // '\035'
            return avZ;

        case 30: // '\036'
            return awa;

        case 31: // '\037'
            return awb;

        case 32: // ' '
            return DH;

        case 33: // '!'
            return awc;

        case 34: // '"'
            return awd;

        case 36: // '$'
            return Double.valueOf(anv);

        case 37: // '%'
            return awe;

        case 38: // '&'
            return Double.valueOf(anw);

        case 39: // '\''
            return mName;

        case 40: // '('
            return awf;

        case 41: // ')'
            return awg;

        case 42: // '*'
            return awh;

        case 43: // '+'
            return awi;

        case 44: // ','
            return awj;

        case 45: // '-'
            return awk;

        case 46: // '.'
            return awl;

        case 47: // '/'
            return awm;

        case 48: // '0'
            return awn;

        case 49: // '1'
            return awo;

        case 50: // '2'
            return awp;

        case 51: // '3'
            return awq;

        case 52: // '4'
            return awr;

        case 53: // '5'
            return we;

        case 54: // '6'
            return wh;

        case 55: // '7'
            return aws;

        case 56: // '8'
            return awt;
        }
    }

    public int describeContents()
    {
        px _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
label0:
        {
            if (!(obj instanceof pw))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            pw pw1 = (pw)obj;
            lk.a a1;
label1:
            do
            {
                for (Iterator iterator = avy.values().iterator(); iterator.hasNext();)
                {
                    a1 = (lk.a)iterator.next();
                    if (!a(a1))
                    {
                        continue label1;
                    }
                    if (pw1.a(a1))
                    {
                        if (!b(a1).equals(pw1.b(a1)))
                        {
                            return false;
                        }
                    } else
                    {
                        return false;
                    }
                }

                break label0;
            } while (!pw1.a(a1));
            return false;
        }
        return true;
    }

    public Object freeze()
    {
        return qQ();
    }

    public ItemScope getAbout()
    {
        return avA;
    }

    public List getAdditionalName()
    {
        return avB;
    }

    public ItemScope getAddress()
    {
        return avC;
    }

    public String getAddressCountry()
    {
        return avD;
    }

    public String getAddressLocality()
    {
        return avE;
    }

    public String getAddressRegion()
    {
        return avF;
    }

    public List getAssociated_media()
    {
        return (ArrayList)avG;
    }

    public int getAttendeeCount()
    {
        return avH;
    }

    public List getAttendees()
    {
        return (ArrayList)avI;
    }

    public ItemScope getAudio()
    {
        return avJ;
    }

    public List getAuthor()
    {
        return (ArrayList)avK;
    }

    public String getBestRating()
    {
        return avL;
    }

    public String getBirthDate()
    {
        return avM;
    }

    public ItemScope getByArtist()
    {
        return avN;
    }

    public String getCaption()
    {
        return avO;
    }

    public String getContentSize()
    {
        return avP;
    }

    public String getContentUrl()
    {
        return oF;
    }

    public List getContributor()
    {
        return (ArrayList)avQ;
    }

    public String getDateCreated()
    {
        return avR;
    }

    public String getDateModified()
    {
        return avS;
    }

    public String getDatePublished()
    {
        return avT;
    }

    public String getDescription()
    {
        return acd;
    }

    public String getDuration()
    {
        return avU;
    }

    public String getEmbedUrl()
    {
        return avV;
    }

    public String getEndDate()
    {
        return avW;
    }

    public String getFamilyName()
    {
        return avX;
    }

    public String getGender()
    {
        return avY;
    }

    public ItemScope getGeo()
    {
        return avZ;
    }

    public String getGivenName()
    {
        return awa;
    }

    public String getHeight()
    {
        return awb;
    }

    public String getId()
    {
        return DH;
    }

    public String getImage()
    {
        return awc;
    }

    public ItemScope getInAlbum()
    {
        return awd;
    }

    public double getLatitude()
    {
        return anv;
    }

    public ItemScope getLocation()
    {
        return awe;
    }

    public double getLongitude()
    {
        return anw;
    }

    public String getName()
    {
        return mName;
    }

    public ItemScope getPartOfTVSeries()
    {
        return awf;
    }

    public List getPerformers()
    {
        return (ArrayList)awg;
    }

    public String getPlayerType()
    {
        return awh;
    }

    public String getPostOfficeBoxNumber()
    {
        return awi;
    }

    public String getPostalCode()
    {
        return awj;
    }

    public String getRatingValue()
    {
        return awk;
    }

    public ItemScope getReviewRating()
    {
        return awl;
    }

    public String getStartDate()
    {
        return awm;
    }

    public String getStreetAddress()
    {
        return awn;
    }

    public String getText()
    {
        return awo;
    }

    public ItemScope getThumbnail()
    {
        return awp;
    }

    public String getThumbnailUrl()
    {
        return awq;
    }

    public String getTickerSymbol()
    {
        return awr;
    }

    public String getType()
    {
        return we;
    }

    public String getUrl()
    {
        return wh;
    }

    public String getWidth()
    {
        return aws;
    }

    public String getWorstRating()
    {
        return awt;
    }

    public boolean hasAbout()
    {
        return avz.contains(Integer.valueOf(2));
    }

    public boolean hasAdditionalName()
    {
        return avz.contains(Integer.valueOf(3));
    }

    public boolean hasAddress()
    {
        return avz.contains(Integer.valueOf(4));
    }

    public boolean hasAddressCountry()
    {
        return avz.contains(Integer.valueOf(5));
    }

    public boolean hasAddressLocality()
    {
        return avz.contains(Integer.valueOf(6));
    }

    public boolean hasAddressRegion()
    {
        return avz.contains(Integer.valueOf(7));
    }

    public boolean hasAssociated_media()
    {
        return avz.contains(Integer.valueOf(8));
    }

    public boolean hasAttendeeCount()
    {
        return avz.contains(Integer.valueOf(9));
    }

    public boolean hasAttendees()
    {
        return avz.contains(Integer.valueOf(10));
    }

    public boolean hasAudio()
    {
        return avz.contains(Integer.valueOf(11));
    }

    public boolean hasAuthor()
    {
        return avz.contains(Integer.valueOf(12));
    }

    public boolean hasBestRating()
    {
        return avz.contains(Integer.valueOf(13));
    }

    public boolean hasBirthDate()
    {
        return avz.contains(Integer.valueOf(14));
    }

    public boolean hasByArtist()
    {
        return avz.contains(Integer.valueOf(15));
    }

    public boolean hasCaption()
    {
        return avz.contains(Integer.valueOf(16));
    }

    public boolean hasContentSize()
    {
        return avz.contains(Integer.valueOf(17));
    }

    public boolean hasContentUrl()
    {
        return avz.contains(Integer.valueOf(18));
    }

    public boolean hasContributor()
    {
        return avz.contains(Integer.valueOf(19));
    }

    public boolean hasDateCreated()
    {
        return avz.contains(Integer.valueOf(20));
    }

    public boolean hasDateModified()
    {
        return avz.contains(Integer.valueOf(21));
    }

    public boolean hasDatePublished()
    {
        return avz.contains(Integer.valueOf(22));
    }

    public boolean hasDescription()
    {
        return avz.contains(Integer.valueOf(23));
    }

    public boolean hasDuration()
    {
        return avz.contains(Integer.valueOf(24));
    }

    public boolean hasEmbedUrl()
    {
        return avz.contains(Integer.valueOf(25));
    }

    public boolean hasEndDate()
    {
        return avz.contains(Integer.valueOf(26));
    }

    public boolean hasFamilyName()
    {
        return avz.contains(Integer.valueOf(27));
    }

    public boolean hasGender()
    {
        return avz.contains(Integer.valueOf(28));
    }

    public boolean hasGeo()
    {
        return avz.contains(Integer.valueOf(29));
    }

    public boolean hasGivenName()
    {
        return avz.contains(Integer.valueOf(30));
    }

    public boolean hasHeight()
    {
        return avz.contains(Integer.valueOf(31));
    }

    public boolean hasId()
    {
        return avz.contains(Integer.valueOf(32));
    }

    public boolean hasImage()
    {
        return avz.contains(Integer.valueOf(33));
    }

    public boolean hasInAlbum()
    {
        return avz.contains(Integer.valueOf(34));
    }

    public boolean hasLatitude()
    {
        return avz.contains(Integer.valueOf(36));
    }

    public boolean hasLocation()
    {
        return avz.contains(Integer.valueOf(37));
    }

    public boolean hasLongitude()
    {
        return avz.contains(Integer.valueOf(38));
    }

    public boolean hasName()
    {
        return avz.contains(Integer.valueOf(39));
    }

    public boolean hasPartOfTVSeries()
    {
        return avz.contains(Integer.valueOf(40));
    }

    public boolean hasPerformers()
    {
        return avz.contains(Integer.valueOf(41));
    }

    public boolean hasPlayerType()
    {
        return avz.contains(Integer.valueOf(42));
    }

    public boolean hasPostOfficeBoxNumber()
    {
        return avz.contains(Integer.valueOf(43));
    }

    public boolean hasPostalCode()
    {
        return avz.contains(Integer.valueOf(44));
    }

    public boolean hasRatingValue()
    {
        return avz.contains(Integer.valueOf(45));
    }

    public boolean hasReviewRating()
    {
        return avz.contains(Integer.valueOf(46));
    }

    public boolean hasStartDate()
    {
        return avz.contains(Integer.valueOf(47));
    }

    public boolean hasStreetAddress()
    {
        return avz.contains(Integer.valueOf(48));
    }

    public boolean hasText()
    {
        return avz.contains(Integer.valueOf(49));
    }

    public boolean hasThumbnail()
    {
        return avz.contains(Integer.valueOf(50));
    }

    public boolean hasThumbnailUrl()
    {
        return avz.contains(Integer.valueOf(51));
    }

    public boolean hasTickerSymbol()
    {
        return avz.contains(Integer.valueOf(52));
    }

    public boolean hasType()
    {
        return avz.contains(Integer.valueOf(53));
    }

    public boolean hasUrl()
    {
        return avz.contains(Integer.valueOf(54));
    }

    public boolean hasWidth()
    {
        return avz.contains(Integer.valueOf(55));
    }

    public boolean hasWorstRating()
    {
        return avz.contains(Integer.valueOf(56));
    }

    public int hashCode()
    {
        Iterator iterator = avy.values().iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            lk.a a1 = (lk.a)iterator.next();
            int j;
            if (a(a1))
            {
                j = i + a1.kb() + b(a1).hashCode();
            } else
            {
                j = i;
            }
            i = j;
        }
        return i;
    }

    public boolean isDataValid()
    {
        return true;
    }

    public HashMap jU()
    {
        return avy;
    }

    public pw qQ()
    {
        return this;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        px _tmp = CREATOR;
        px.a(this, parcel, i);
    }

    static 
    {
        avy = new HashMap();
        avy.put("about", lk.a.a("about", 2, com/google/android/gms/internal/pw));
        avy.put("additionalName", lk.a.n("additionalName", 3));
        avy.put("address", lk.a.a("address", 4, com/google/android/gms/internal/pw));
        avy.put("addressCountry", lk.a.m("addressCountry", 5));
        avy.put("addressLocality", lk.a.m("addressLocality", 6));
        avy.put("addressRegion", lk.a.m("addressRegion", 7));
        avy.put("associated_media", lk.a.b("associated_media", 8, com/google/android/gms/internal/pw));
        avy.put("attendeeCount", lk.a.j("attendeeCount", 9));
        avy.put("attendees", lk.a.b("attendees", 10, com/google/android/gms/internal/pw));
        avy.put("audio", lk.a.a("audio", 11, com/google/android/gms/internal/pw));
        avy.put("author", lk.a.b("author", 12, com/google/android/gms/internal/pw));
        avy.put("bestRating", lk.a.m("bestRating", 13));
        avy.put("birthDate", lk.a.m("birthDate", 14));
        avy.put("byArtist", lk.a.a("byArtist", 15, com/google/android/gms/internal/pw));
        avy.put("caption", lk.a.m("caption", 16));
        avy.put("contentSize", lk.a.m("contentSize", 17));
        avy.put("contentUrl", lk.a.m("contentUrl", 18));
        avy.put("contributor", lk.a.b("contributor", 19, com/google/android/gms/internal/pw));
        avy.put("dateCreated", lk.a.m("dateCreated", 20));
        avy.put("dateModified", lk.a.m("dateModified", 21));
        avy.put("datePublished", lk.a.m("datePublished", 22));
        avy.put("description", lk.a.m("description", 23));
        avy.put("duration", lk.a.m("duration", 24));
        avy.put("embedUrl", lk.a.m("embedUrl", 25));
        avy.put("endDate", lk.a.m("endDate", 26));
        avy.put("familyName", lk.a.m("familyName", 27));
        avy.put("gender", lk.a.m("gender", 28));
        avy.put("geo", lk.a.a("geo", 29, com/google/android/gms/internal/pw));
        avy.put("givenName", lk.a.m("givenName", 30));
        avy.put("height", lk.a.m("height", 31));
        avy.put("id", lk.a.m("id", 32));
        avy.put("image", lk.a.m("image", 33));
        avy.put("inAlbum", lk.a.a("inAlbum", 34, com/google/android/gms/internal/pw));
        avy.put("latitude", lk.a.k("latitude", 36));
        avy.put("location", lk.a.a("location", 37, com/google/android/gms/internal/pw));
        avy.put("longitude", lk.a.k("longitude", 38));
        avy.put("name", lk.a.m("name", 39));
        avy.put("partOfTVSeries", lk.a.a("partOfTVSeries", 40, com/google/android/gms/internal/pw));
        avy.put("performers", lk.a.b("performers", 41, com/google/android/gms/internal/pw));
        avy.put("playerType", lk.a.m("playerType", 42));
        avy.put("postOfficeBoxNumber", lk.a.m("postOfficeBoxNumber", 43));
        avy.put("postalCode", lk.a.m("postalCode", 44));
        avy.put("ratingValue", lk.a.m("ratingValue", 45));
        avy.put("reviewRating", lk.a.a("reviewRating", 46, com/google/android/gms/internal/pw));
        avy.put("startDate", lk.a.m("startDate", 47));
        avy.put("streetAddress", lk.a.m("streetAddress", 48));
        avy.put("text", lk.a.m("text", 49));
        avy.put("thumbnail", lk.a.a("thumbnail", 50, com/google/android/gms/internal/pw));
        avy.put("thumbnailUrl", lk.a.m("thumbnailUrl", 51));
        avy.put("tickerSymbol", lk.a.m("tickerSymbol", 52));
        avy.put("type", lk.a.m("type", 53));
        avy.put("url", lk.a.m("url", 54));
        avy.put("width", lk.a.m("width", 55));
        avy.put("worstRating", lk.a.m("worstRating", 56));
    }
}
