// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package android.support.v7.widget:
//            LinearLayoutManager

static class c
    implements Parcelable
{

    public static final android.os.ger.SavedState.c CREATOR = new android.os.Parcelable.Creator() {

        public LinearLayoutManager.SavedState a(Parcel parcel)
        {
            return new LinearLayoutManager.SavedState(parcel);
        }

        public LinearLayoutManager.SavedState[] a(int i)
        {
            return new LinearLayoutManager.SavedState[i];
        }

        public Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public Object[] newArray(int i)
        {
            return a(i);
        }

    };
    int a;
    int b;
    boolean c;

    boolean a()
    {
        return a >= 0;
    }

    void b()
    {
        a = -1;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(a);
        parcel.writeInt(b);
        int j;
        if (c)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        parcel.writeInt(j);
    }


    public _cls1()
    {
    }

    _cls1(Parcel parcel)
    {
        boolean flag = true;
        super();
        a = parcel.readInt();
        b = parcel.readInt();
        if (parcel.readInt() != flag)
        {
            flag = false;
        }
        c = flag;
    }

    public c(c c1)
    {
        a = c1.a;
        b = c1.b;
        c = c1.c;
    }
}
