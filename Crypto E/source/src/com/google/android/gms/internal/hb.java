// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            hf, ab, gx

public final class hb
{

    private final Context mContext;
    private int mState;
    private final float sk;
    private String xE;
    private float xF;
    private float xG;
    private float xH;

    public hb(Context context)
    {
        mState = 0;
        mContext = context;
        sk = context.getResources().getDisplayMetrics().density;
    }

    public hb(Context context, String s)
    {
        this(context);
        xE = s;
    }

    static Context a(hb hb1)
    {
        return hb1.mContext;
    }

    private void a(int i, float f, float f1)
    {
        if (i != 0) goto _L2; else goto _L1
_L1:
        mState = 0;
        xF = f;
        xG = f1;
        xH = f1;
_L4:
        return;
_L2:
        if (mState == -1) goto _L4; else goto _L3
_L3:
        if (i != 2)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (f1 <= xG) goto _L6; else goto _L5
_L5:
        xG = f1;
_L8:
        if (xG - xH > 30F * sk)
        {
            mState = -1;
            return;
        }
        break; /* Loop/switch isn't completed */
_L6:
        if (f1 < xH)
        {
            xH = f1;
        }
        if (true) goto _L8; else goto _L7
_L7:
        if (mState == 0 || mState == 2)
        {
            if (f - xF >= 50F * sk)
            {
                xF = f;
                mState = 1 + mState;
            }
        } else
        if ((mState == 1 || mState == 3) && f - xF <= -50F * sk)
        {
            xF = f;
            mState = 1 + mState;
        }
        if (mState != 1 && mState != 3)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (f <= xF) goto _L4; else goto _L9
_L9:
        xF = f;
        return;
        if (mState != 2 || f >= xF) goto _L4; else goto _L10
_L10:
        xF = f;
        return;
        if (i != 1 || mState != 4) goto _L4; else goto _L11
_L11:
        showDialog();
        return;
    }

    private void showDialog()
    {
        if (!(mContext instanceof Activity))
        {
            hf.V("Can not create dialog without Activity Context");
            return;
        }
        String s;
        if (!TextUtils.isEmpty(xE))
        {
            android.net.Uri uri = (new android.net.Uri.Builder()).encodedQuery(xE).build();
            StringBuilder stringbuilder = new StringBuilder();
            Map map = ab.aG().c(uri);
            String s1;
            for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); stringbuilder.append(s1).append(" = ").append((String)map.get(s1)).append("\n\n"))
            {
                s1 = (String)iterator.next();
            }

            s = stringbuilder.toString().trim();
            android.app.AlertDialog.Builder builder;
            if (TextUtils.isEmpty(s))
            {
                s = "No debug information";
            }
        } else
        {
            s = "No debug information";
        }
        builder = new android.app.AlertDialog.Builder(mContext);
        builder.setMessage(s);
        builder.setTitle("Ad Information");
        builder.setPositiveButton("Share", new android.content.DialogInterface.OnClickListener(s) {

            final String xI;
            final hb xJ;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                hb.a(xJ).startActivity(Intent.createChooser((new Intent("android.intent.action.SEND")).setType("text/plain").putExtra("android.intent.extra.TEXT", xI), "Share via"));
            }

            
            {
                xJ = hb.this;
                xI = s;
                super();
            }
        });
        builder.setNegativeButton("Close", new android.content.DialogInterface.OnClickListener() {

            final hb xJ;

            public void onClick(DialogInterface dialoginterface, int i)
            {
            }

            
            {
                xJ = hb.this;
                super();
            }
        });
        builder.create().show();
    }

    public void R(String s)
    {
        xE = s;
    }

    public void c(MotionEvent motionevent)
    {
        int i = motionevent.getHistorySize();
        for (int j = 0; j < i; j++)
        {
            a(motionevent.getActionMasked(), motionevent.getHistoricalX(0, j), motionevent.getHistoricalY(0, j));
        }

        a(motionevent.getActionMasked(), motionevent.getX(), motionevent.getY());
    }
}
