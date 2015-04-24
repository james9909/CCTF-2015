// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.NetworkResult;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareRequestTask

public class UpdateSquareSettingsTask extends SquareRequestTask
{
    class RequestPayload
    {

        final String passcode;
        final boolean passcodeConfirmation;
        final UpdateSquareSettingsTask this$0;

        RequestPayload()
        {
            this$0 = UpdateSquareSettingsTask.this;
            super();
            passcodeConfirmation = UpdateSquareSettingsTask.a(UpdateSquareSettingsTask.this);
            passcode = UpdateSquareSettingsTask.b(UpdateSquareSettingsTask.this);
        }
    }

    public static interface UpdateSuccessListener
    {

        public abstract void a();

        public abstract void a(int i);
    }


    public static final int SC_TOO_MANY_ATTEMPTS_STATUS_CODE = 429;
    private static final String TAG = "UpdateSquareSettingsTask";
    private String mPasscode;
    private boolean mPasscodeEnabled;
    private UpdateSuccessListener mUpdateSuccessListener;

    public UpdateSquareSettingsTask(boolean flag, UpdateSuccessListener updatesuccesslistener)
    {
        mPasscodeEnabled = flag;
        mUpdateSuccessListener = updatesuccesslistener;
    }

    public UpdateSquareSettingsTask(boolean flag, String s, UpdateSuccessListener updatesuccesslistener)
    {
        mPasscodeEnabled = flag;
        mPasscode = s;
        mUpdateSuccessListener = updatesuccesslistener;
    }

    static boolean a(UpdateSquareSettingsTask updatesquaresettingstask)
    {
        return updatesquaresettingstask.mPasscodeEnabled;
    }

    static String b(UpdateSquareSettingsTask updatesquaresettingstask)
    {
        return updatesquaresettingstask.mPasscode;
    }

    public void a(NetworkResult networkresult)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(networkresult.j());
        Timber.b("UpdateSquareSettingsTask", "CASH-LOG: UpdateSquareSettingsTask finished with status code %d", aobj);
        if (networkresult.j() == 200)
        {
            mUpdateSuccessListener.a();
            return;
        } else
        {
            mUpdateSuccessListener.a(networkresult.j());
            return;
        }
    }

    public Object b()
    {
        return new RequestPayload();
    }

    protected String e()
    {
        return "cash/settings/passcode";
    }
}
