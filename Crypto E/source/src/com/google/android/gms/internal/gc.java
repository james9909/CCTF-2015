// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.s;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            hf, bz, gn, fx, 
//            fz, ai, ah, gz, 
//            ha, hc, gd, ge, 
//            u, ch, hk, ma

public class gc
    implements Callable
{
    public static interface a
    {

        public abstract bz.a a(gc gc1, JSONObject jsonobject);
    }

    class b
    {

        final gc vt;
        public ch vv;

        b()
        {
            vt = gc.this;
            super();
        }
    }


    private final Context mContext;
    private final Object mL = new Object();
    private final u qd;
    private final gn.a um;
    private int uq;
    private final hc vm;
    private final ai vn;
    private boolean vo;
    private List vp;

    public gc(Context context, u u1, ai ai1, hc hc1, gn.a a1)
    {
        mContext = context;
        qd = u1;
        vm = hc1;
        vn = ai1;
        um = a1;
        vo = false;
        uq = -2;
        vp = null;
    }

    private bz.a a(ah ah1, a a1, JSONObject jsonobject)
    {
        if (cY())
        {
            return null;
        }
        String as[] = b(jsonobject.getJSONObject("tracking_urls_and_actions"), "impression_tracking_urls");
        List list;
        bz.a a2;
        if (as == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(as);
        }
        vp = list;
        a2 = a1.a(this, jsonobject);
        if (a2 == null)
        {
            hf.U("Failed to retrieve ad assets.");
            return null;
        } else
        {
            a2.a(new bz(qd, ah1, jsonobject));
            return a2;
        }
    }

    private gn a(bz.a a1)
    {
        Object obj = mL;
        obj;
        JVM INSTR monitorenter ;
        int i = uq;
        if (a1 != null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        if (uq == -2)
        {
            i = 0;
        }
        obj;
        JVM INSTR monitorexit ;
        Exception exception;
        bz.a a2;
        if (i != -2)
        {
            a2 = null;
        } else
        {
            a2 = a1;
        }
        return new gn(um.wI.uK, null, um.wJ.qX, i, um.wJ.qY, vp, um.wJ.orientation, um.wJ.rb, um.wI.uN, false, null, null, null, null, null, 0L, um.lL, um.wJ.uY, um.wF, um.wG, um.wJ.ve, um.wC, a2);
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private String[] b(JSONObject jsonobject, String s)
    {
        JSONArray jsonarray = jsonobject.optJSONArray(s);
        if (jsonarray == null)
        {
            return null;
        }
        String as[] = new String[jsonarray.length()];
        for (int i = 0; i < jsonarray.length(); i++)
        {
            as[i] = jsonarray.getString(i);
        }

        return as;
    }

    private ah cX()
    {
        if (cY())
        {
            return null;
        } else
        {
            ah ah1 = (ah)vn.a(mContext, um.wI.lH, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html").get();
            ah1.a(qd, qd, qd, qd, false, qd);
            return ah1;
        }
    }

    private JSONObject e(ah ah1)
    {
        if (cY())
        {
            return null;
        } else
        {
            gz gz1 = new gz();
            b b1 = new b();
            ch ch = new ch(ah1, b1, gz1) {

                final ah vq;
                final b vr;
                final gz vs;
                final gc vt;

                public void a(hk hk, Map map)
                {
                    vq.b("/nativeAdPreProcess", vr.vv);
                    try
                    {
                        String s1 = (String)map.get("success");
                        if (!TextUtils.isEmpty(s1))
                        {
                            vs.b((new JSONObject(s1)).getJSONArray("ads").getJSONObject(0));
                            return;
                        }
                    }
                    catch (JSONException jsonexception)
                    {
                        hf.b("Malformed native JSON response.", jsonexception);
                    }
                    vt.u(0);
                    s.a(vt.cY(), "Unable to set the ad state error!");
                    vs.b(null);
                }

            
            {
                vt = gc.this;
                vq = ah1;
                vr = b1;
                vs = gz1;
                super();
            }
            };
            b1.vv = ch;
            ah1.a("/nativeAdPreProcess", ch);
            ah1.a("google.afma.nativeSingletons.preProcessJsonGmsg", new JSONObject(um.wJ.uX));
            return (JSONObject)gz1.get();
        }
    }

    public Future a(JSONObject jsonobject, String s, boolean flag)
    {
        JSONObject jsonobject1;
        String s1;
        if (flag)
        {
            jsonobject1 = jsonobject.getJSONObject(s);
        } else
        {
            jsonobject1 = jsonobject.optJSONObject(s);
        }
        if (jsonobject1 == null)
        {
            jsonobject1 = new JSONObject();
        }
        if (flag)
        {
            s1 = jsonobject1.getString("url");
        } else
        {
            s1 = jsonobject1.optString("url");
        }
        if (TextUtils.isEmpty(s1))
        {
            a(0, flag);
            return new ha(null);
        } else
        {
            return vm.a(s1, new hc.a(flag) {

                final gc vt;
                final boolean vu;

                public Drawable a(InputStream inputstream)
                {
                    byte abyte1[] = ma.d(inputstream);
                    byte abyte0[] = abyte1;
_L2:
                    if (abyte0 == null)
                    {
                        vt.a(2, vu);
                        return null;
                    }
                    break; /* Loop/switch isn't completed */
                    IOException ioexception;
                    ioexception;
                    abyte0 = null;
                    if (true) goto _L2; else goto _L1
_L1:
                    android.graphics.Bitmap bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
                    if (bitmap == null)
                    {
                        vt.a(2, vu);
                        return null;
                    } else
                    {
                        return new BitmapDrawable(Resources.getSystem(), bitmap);
                    }
                }

                public Object b(InputStream inputstream)
                {
                    return a(inputstream);
                }

                public Drawable cZ()
                {
                    vt.a(2, vu);
                    return null;
                }

                public Object da()
                {
                    return cZ();
                }

            
            {
                vt = gc.this;
                vu = flag;
                super();
            }
            });
        }
    }

    public void a(int i, boolean flag)
    {
        if (flag)
        {
            u(i);
        }
    }

    protected a c(JSONObject jsonobject)
    {
        if (cY())
        {
            return null;
        }
        String s = jsonobject.getString("template_id");
        if ("2".equals(s))
        {
            return new gd();
        }
        if ("1".equals(s))
        {
            return new ge();
        } else
        {
            u(0);
            return null;
        }
    }

    public gn cW()
    {
        gn gn1;
        ah ah1 = cX();
        JSONObject jsonobject = e(ah1);
        gn1 = a(a(ah1, c(jsonobject), jsonobject));
        return gn1;
        JSONException jsonexception;
        jsonexception;
        hf.d("Malformed native JSON response.", jsonexception);
_L2:
        if (!vo)
        {
            u(0);
        }
        return a(null);
        TimeoutException timeoutexception;
        timeoutexception;
        hf.d("Timeout when loading native ad.", timeoutexception);
        continue; /* Loop/switch isn't completed */
        InterruptedException interruptedexception;
        interruptedexception;
        continue; /* Loop/switch isn't completed */
        ExecutionException executionexception;
        executionexception;
        continue; /* Loop/switch isn't completed */
        CancellationException cancellationexception;
        cancellationexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean cY()
    {
        boolean flag;
        synchronized (mL)
        {
            flag = vo;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Object call()
    {
        return cW();
    }

    public void u(int i)
    {
        synchronized (mL)
        {
            vo = true;
            uq = i;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
