// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

// Referenced classes of package com.google.android.gms.common.internal:
//            ParcelableClientSettingsCreator

public final class ClientSettings
{
    public static final class ParcelableClientSettings
        implements SafeParcelable
    {

        public static final ParcelableClientSettingsCreator CREATOR = new ParcelableClientSettingsCreator();
        private final int DN;
        private final String Fm;
        private final List RC;
        private final int Rd;
        private final String Rf;

        public int describeContents()
        {
            return 0;
        }

        public String getAccountName()
        {
            return Fm;
        }

        public String getAccountNameOrDefault()
        {
            if (Fm != null)
            {
                return Fm;
            } else
            {
                return "<<default account>>";
            }
        }

        public int getGravityForPopups()
        {
            return Rd;
        }

        public String getRealClientPackageName()
        {
            return Rf;
        }

        public List getScopes()
        {
            return new ArrayList(RC);
        }

        public int getVersionCode()
        {
            return DN;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            ParcelableClientSettingsCreator.a(this, parcel, i);
        }


        ParcelableClientSettings(int i, String s, List list, int j, String s1)
        {
            RC = new ArrayList();
            DN = i;
            Fm = s;
            RC.addAll(list);
            Rd = j;
            Rf = s1;
        }

        public ParcelableClientSettings(String s, Collection collection, int i, String s1)
        {
            this(3, s, ((List) (new ArrayList(collection))), i, s1);
        }
    }


    private final View Re;
    private final ParcelableClientSettings TM;

    public ClientSettings(String s, Collection collection, int i, View view, String s1)
    {
        TM = new ParcelableClientSettings(s, collection, i, s1);
        Re = view;
    }

    public String getAccountName()
    {
        return TM.getAccountName();
    }

    public String getAccountNameOrDefault()
    {
        return TM.getAccountNameOrDefault();
    }

    public int getGravityForPopups()
    {
        return TM.getGravityForPopups();
    }

    public ParcelableClientSettings getParcelableClientSettings()
    {
        return TM;
    }

    public String getRealClientPackageName()
    {
        return TM.getRealClientPackageName();
    }

    public List getScopes()
    {
        return TM.getScopes();
    }

    public String[] getScopesArray()
    {
        return (String[])TM.getScopes().toArray(new String[0]);
    }

    public View getViewForPopups()
    {
        return Re;
    }
}
