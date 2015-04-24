// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware;

import android.os.Looper;
import android.os.Message;
import com.snapchat.android.Timber;
import com.snapchat.android.util.WaitDoneHandler;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.squareup.otto.Bus;

public class CameraOperationHandler extends WaitDoneHandler
{
    public static interface CameraOperation
    {

        public abstract void a();
    }

    public static final class CameraOperationType extends Enum
    {

        public static final CameraOperationType a;
        public static final CameraOperationType b;
        public static final CameraOperationType c;
        public static final CameraOperationType d;
        public static final CameraOperationType e;
        public static final CameraOperationType f;
        public static final CameraOperationType g;
        public static final CameraOperationType h;
        public static final CameraOperationType i;
        public static final CameraOperationType j;
        public static final CameraOperationType k;
        public static final CameraOperationType l;
        public static final CameraOperationType m;
        public static final CameraOperationType n;
        private static final CameraOperationType o[];

        public static CameraOperationType valueOf(String s)
        {
            return (CameraOperationType)Enum.valueOf(com/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType, s);
        }

        public static CameraOperationType[] values()
        {
            return (CameraOperationType[])o.clone();
        }

        static 
        {
            a = new CameraOperationType("OPEN", 0);
            b = new CameraOperationType("RELEASE", 1);
            c = new CameraOperationType("SET_PARAMETERS", 2);
            d = new CameraOperationType("GET_PARAMETERS", 3);
            e = new CameraOperationType("UNLOCK", 4);
            f = new CameraOperationType("LOCK", 5);
            g = new CameraOperationType("RECONNECT", 6);
            h = new CameraOperationType("AUTOFOCUS", 7);
            i = new CameraOperationType("START_PREVIEW", 8);
            j = new CameraOperationType("STOP_PREVIEW", 9);
            k = new CameraOperationType("SET_CALLBACK_WITH_BUFFER", 10);
            l = new CameraOperationType("SET_TEXTURE", 11);
            m = new CameraOperationType("SET_ORIENTATION", 12);
            n = new CameraOperationType("ADD_CALLBACK_BUFFER", 13);
            CameraOperationType acameraoperationtype[] = new CameraOperationType[14];
            acameraoperationtype[0] = a;
            acameraoperationtype[1] = b;
            acameraoperationtype[2] = c;
            acameraoperationtype[3] = d;
            acameraoperationtype[4] = e;
            acameraoperationtype[5] = f;
            acameraoperationtype[6] = g;
            acameraoperationtype[7] = h;
            acameraoperationtype[8] = i;
            acameraoperationtype[9] = j;
            acameraoperationtype[10] = k;
            acameraoperationtype[11] = l;
            acameraoperationtype[12] = m;
            acameraoperationtype[13] = n;
            o = acameraoperationtype;
        }

        private CameraOperationType(String s, int i1)
        {
            super(s, i1);
        }
    }


    protected CameraOperationHandler(Looper looper)
    {
        super(looper);
    }

    public void handleMessage(Message message)
    {
        CameraOperation cameraoperation = (CameraOperation)message.obj;
        CameraOperationType cameraoperationtype = CameraOperationType.values()[message.what];
        if (cameraoperationtype != CameraOperationType.n)
        {
            Object aobj[] = new Object[1];
            aobj[0] = cameraoperationtype.name();
            Timber.c("CameraOperationHandler", "Camera Operation [%s] is executing", aobj);
        }
        try
        {
            cameraoperation.a();
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            String s = (new StringBuilder()).append("Camera Operation ").append(cameraoperationtype.name()).append(" failed to execute").toString();
            if (ReleaseManager.e())
            {
                BusProvider.a().a(new ShowDialogEvent(com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType.a, s));
            }
            Timber.e("CameraOperationHandler", (new StringBuilder()).append(s).append(": ").append(runtimeexception).toString(), new Object[0]);
            return;
        }
    }
}
