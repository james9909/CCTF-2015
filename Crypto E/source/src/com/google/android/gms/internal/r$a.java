// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsRequestCreator;
import com.google.android.gms.auth.AccountChangeEventsResponse;
import com.google.android.gms.auth.AccountChangeEventsResponseCreator;

// Referenced classes of package com.google.android.gms.internal:
//            r

public static abstract class a.le extends Binder
    implements r
{
    static class a
        implements r
    {

        private IBinder le;

        public Bundle a(String s, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
            parcel.writeString(s);
            if (bundle == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L3:
            Bundle bundle1;
            le.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0)
            {
                break MISSING_BLOCK_LABEL_112;
            }
            bundle1 = (Bundle)Bundle.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return bundle1;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            bundle1 = null;
              goto _L4
        }

        public Bundle a(String s, String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
            parcel.writeString(s);
            parcel.writeString(s1);
            if (bundle == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L3:
            Bundle bundle1;
            le.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0)
            {
                break MISSING_BLOCK_LABEL_127;
            }
            bundle1 = (Bundle)Bundle.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return bundle1;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            bundle1 = null;
              goto _L4
        }

        public AccountChangeEventsResponse a(AccountChangeEventsRequest accountchangeeventsrequest)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
            if (accountchangeeventsrequest == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            accountchangeeventsrequest.writeToParcel(parcel, 0);
_L3:
            AccountChangeEventsResponse accountchangeeventsresponse1;
            le.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0)
            {
                break MISSING_BLOCK_LABEL_99;
            }
            accountchangeeventsresponse1 = AccountChangeEventsResponse.CREATOR.createFromParcel(parcel1);
            AccountChangeEventsResponse accountchangeeventsresponse = accountchangeeventsresponse1;
_L4:
            parcel1.recycle();
            parcel.recycle();
            return accountchangeeventsresponse;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            accountchangeeventsresponse = null;
              goto _L4
        }

        public IBinder asBinder()
        {
            return le;
        }

        a(IBinder ibinder)
        {
            le = ibinder;
        }
    }


    public static r a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
        if (iinterface != null && (iinterface instanceof r))
        {
            return (r)iinterface;
        } else
        {
            return new a(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        int k;
        AccountChangeEventsRequest accountchangeeventsrequest;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.auth.IAuthManagerService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
            String s1 = parcel.readString();
            String s2 = parcel.readString();
            int i1 = parcel.readInt();
            Bundle bundle2 = null;
            if (i1 != 0)
            {
                bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            Bundle bundle3 = a(s1, s2, bundle2);
            parcel1.writeNoException();
            if (bundle3 != null)
            {
                parcel1.writeInt(1);
                bundle3.writeToParcel(parcel1, 1);
            } else
            {
                parcel1.writeInt(0);
            }
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
            String s = parcel.readString();
            int l = parcel.readInt();
            Bundle bundle = null;
            if (l != 0)
            {
                bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            }
            Bundle bundle1 = a(s, bundle);
            parcel1.writeNoException();
            if (bundle1 != null)
            {
                parcel1.writeInt(1);
                bundle1.writeToParcel(parcel1, 1);
            } else
            {
                parcel1.writeInt(0);
            }
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.auth.IAuthManagerService");
            k = parcel.readInt();
            accountchangeeventsrequest = null;
            break;
        }
        if (k != 0)
        {
            accountchangeeventsrequest = AccountChangeEventsRequest.CREATOR.createFromParcel(parcel);
        }
        AccountChangeEventsResponse accountchangeeventsresponse = a(accountchangeeventsrequest);
        parcel1.writeNoException();
        if (accountchangeeventsresponse != null)
        {
            parcel1.writeInt(1);
            accountchangeeventsresponse.writeToParcel(parcel1, 1);
        } else
        {
            parcel1.writeInt(0);
        }
        return true;
    }
}
