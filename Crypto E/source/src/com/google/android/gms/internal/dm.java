// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.text.TextUtils;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            hk, bl, hf, gp

public class dm
{

    private final Context mContext;
    private final hk mj;
    private final Map rD;
    private String rE;
    private long rF;
    private long rG;
    private String rH;
    private String rI;

    public dm(hk hk1, Map map)
    {
        mj = hk1;
        rD = map;
        mContext = hk1.dL();
        bV();
    }

    private String C(String s)
    {
        if (TextUtils.isEmpty((CharSequence)rD.get(s)))
        {
            return "";
        } else
        {
            return (String)rD.get(s);
        }
    }

    private long D(String s)
    {
        String s1 = (String)rD.get(s);
        if (s1 == null)
        {
            return -1L;
        }
        long l;
        try
        {
            l = Long.parseLong(s1);
        }
        catch (NumberFormatException numberformatexception)
        {
            return -1L;
        }
        return l;
    }

    static Context a(dm dm1)
    {
        return dm1.mContext;
    }

    static hk b(dm dm1)
    {
        return dm1.mj;
    }

    private void bV()
    {
        rE = C("description");
        rH = C("summary");
        rF = D("start_ticks");
        rG = D("end_ticks");
        rI = C("location");
    }

    Intent createIntent()
    {
        Intent intent = (new Intent("android.intent.action.EDIT")).setData(android.provider.CalendarContract.Events.CONTENT_URI);
        intent.putExtra("title", rH);
        intent.putExtra("eventLocation", rI);
        intent.putExtra("description", rE);
        if (rF > -1L)
        {
            intent.putExtra("beginTime", rF);
        }
        if (rG > -1L)
        {
            intent.putExtra("endTime", rG);
        }
        intent.setFlags(0x10000000);
        return intent;
    }

    public void execute()
    {
        if (!(new bl(mContext)).bB())
        {
            hf.X("This feature is not available on this version of the device.");
            return;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(mContext);
            builder.setTitle(gp.c(com.google.android.gms.R.string.create_calendar_title, "Create calendar event"));
            builder.setMessage(gp.c(com.google.android.gms.R.string.create_calendar_message, "Allow Ad to create a calendar event?"));
            builder.setPositiveButton(gp.c(com.google.android.gms.R.string.accept, "Accept"), new android.content.DialogInterface.OnClickListener() {

                final dm rJ;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    Intent intent = rJ.createIntent();
                    dm.a(rJ).startActivity(intent);
                }

            
            {
                rJ = dm.this;
                super();
            }
            });
            builder.setNegativeButton(gp.c(com.google.android.gms.R.string.decline, "Decline"), new android.content.DialogInterface.OnClickListener() {

                final dm rJ;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dm.b(rJ).b("onCalendarEventCanceled", new JSONObject());
                }

            
            {
                rJ = dm.this;
                super();
            }
            });
            builder.create().show();
            return;
        }
    }
}
