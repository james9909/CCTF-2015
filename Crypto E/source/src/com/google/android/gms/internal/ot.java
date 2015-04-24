// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            ou

public final class ot
    implements SafeParcelable
{

    public static final ou CREATOR = new ou();
    public static final ot aoQ = cj("accounting");
    public static final ot aoR = cj("airport");
    public static final ot aoS = cj("amusement_park");
    public static final ot aoT = cj("aquarium");
    public static final ot aoU = cj("art_gallery");
    public static final ot aoV = cj("atm");
    public static final ot aoW = cj("bakery");
    public static final ot aoX = cj("bank");
    public static final ot aoY = cj("bar");
    public static final ot aoZ = cj("beauty_salon");
    public static final ot apA = cj("florist");
    public static final ot apB = cj("food");
    public static final ot apC = cj("funeral_home");
    public static final ot apD = cj("furniture_store");
    public static final ot apE = cj("gas_station");
    public static final ot apF = cj("general_contractor");
    public static final ot apG = cj("grocery_or_supermarket");
    public static final ot apH = cj("gym");
    public static final ot apI = cj("hair_care");
    public static final ot apJ = cj("hardware_store");
    public static final ot apK = cj("health");
    public static final ot apL = cj("hindu_temple");
    public static final ot apM = cj("home_goods_store");
    public static final ot apN = cj("hospital");
    public static final ot apO = cj("insurance_agency");
    public static final ot apP = cj("jewelry_store");
    public static final ot apQ = cj("laundry");
    public static final ot apR = cj("lawyer");
    public static final ot apS = cj("library");
    public static final ot apT = cj("liquor_store");
    public static final ot apU = cj("local_government_office");
    public static final ot apV = cj("locksmith");
    public static final ot apW = cj("lodging");
    public static final ot apX = cj("meal_delivery");
    public static final ot apY = cj("meal_takeaway");
    public static final ot apZ = cj("mosque");
    public static final ot apa = cj("bicycle_store");
    public static final ot apb = cj("book_store");
    public static final ot apc = cj("bowling_alley");
    public static final ot apd = cj("bus_station");
    public static final ot ape = cj("cafe");
    public static final ot apf = cj("campground");
    public static final ot apg = cj("car_dealer");
    public static final ot aph = cj("car_rental");
    public static final ot api = cj("car_repair");
    public static final ot apj = cj("car_wash");
    public static final ot apk = cj("casino");
    public static final ot apl = cj("cemetery");
    public static final ot apm = cj("church");
    public static final ot apn = cj("city_hall");
    public static final ot apo = cj("clothing_store");
    public static final ot app = cj("convenience_store");
    public static final ot apq = cj("courthouse");
    public static final ot apr = cj("dentist");
    public static final ot aps = cj("department_store");
    public static final ot apt = cj("doctor");
    public static final ot apu = cj("electrician");
    public static final ot apv = cj("electronics_store");
    public static final ot apw = cj("embassy");
    public static final ot apx = cj("establishment");
    public static final ot apy = cj("finance");
    public static final ot apz = cj("fire_station");
    public static final ot aqA = cj("subway_station");
    public static final ot aqB = cj("synagogue");
    public static final ot aqC = cj("taxi_stand");
    public static final ot aqD = cj("train_station");
    public static final ot aqE = cj("travel_agency");
    public static final ot aqF = cj("university");
    public static final ot aqG = cj("veterinary_care");
    public static final ot aqH = cj("zoo");
    public static final ot aqI = cj("administrative_area_level_1");
    public static final ot aqJ = cj("administrative_area_level_2");
    public static final ot aqK = cj("administrative_area_level_3");
    public static final ot aqL = cj("colloquial_area");
    public static final ot aqM = cj("country");
    public static final ot aqN = cj("floor");
    public static final ot aqO = cj("geocode");
    public static final ot aqP = cj("intersection");
    public static final ot aqQ = cj("locality");
    public static final ot aqR = cj("natural_feature");
    public static final ot aqS = cj("neighborhood");
    public static final ot aqT = cj("political");
    public static final ot aqU = cj("point_of_interest");
    public static final ot aqV = cj("post_box");
    public static final ot aqW = cj("postal_code");
    public static final ot aqX = cj("postal_code_prefix");
    public static final ot aqY = cj("postal_town");
    public static final ot aqZ = cj("premise");
    public static final ot aqa = cj("movie_rental");
    public static final ot aqb = cj("movie_theater");
    public static final ot aqc = cj("moving_company");
    public static final ot aqd = cj("museum");
    public static final ot aqe = cj("night_club");
    public static final ot aqf = cj("painter");
    public static final ot aqg = cj("park");
    public static final ot aqh = cj("parking");
    public static final ot aqi = cj("pet_store");
    public static final ot aqj = cj("pharmacy");
    public static final ot aqk = cj("physiotherapist");
    public static final ot aql = cj("place_of_worship");
    public static final ot aqm = cj("plumber");
    public static final ot aqn = cj("police");
    public static final ot aqo = cj("post_office");
    public static final ot aqp = cj("real_estate_agency");
    public static final ot aqq = cj("restaurant");
    public static final ot aqr = cj("roofing_contractor");
    public static final ot aqs = cj("rv_park");
    public static final ot aqt = cj("school");
    public static final ot aqu = cj("shoe_store");
    public static final ot aqv = cj("shopping_mall");
    public static final ot aqw = cj("spa");
    public static final ot aqx = cj("stadium");
    public static final ot aqy = cj("storage");
    public static final ot aqz = cj("store");
    public static final ot ara = cj("room");
    public static final ot arb = cj("route");
    public static final ot arc = cj("street_address");
    public static final ot ard = cj("sublocality");
    public static final ot are = cj("sublocality_level_1");
    public static final ot arf = cj("sublocality_level_2");
    public static final ot arg = cj("sublocality_level_3");
    public static final ot arh = cj("sublocality_level_4");
    public static final ot ari = cj("sublocality_level_5");
    public static final ot arj = cj("subpremise");
    public static final ot ark = cj("transit_station");
    public static final ot arl = cj("other");
    final int DN;
    final String we;

    ot(int i, String s1)
    {
        s.bi(s1);
        DN = i;
        we = s1;
    }

    public static ot cj(String s1)
    {
        return new ot(0, s1);
    }

    public int describeContents()
    {
        ou _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        return (obj instanceof ot) && we.equals(((ot)obj).we);
    }

    public int hashCode()
    {
        return we.hashCode();
    }

    public String toString()
    {
        return we;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ou _tmp = CREATOR;
        ou.a(this, parcel, i);
    }

}
