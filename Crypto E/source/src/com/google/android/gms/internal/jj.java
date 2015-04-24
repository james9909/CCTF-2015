// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.TextTrackStyle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            jb, jd, jm, ji, 
//            jl

public class jj extends jb
{
    class a
        implements Runnable
    {

        final jj Oc;

        public void run()
        {
            boolean flag;
            flag = false;
            jj.a(Oc, false);
            long l = SystemClock.elapsedRealtime();
            for (Iterator iterator = jj.a(Oc).iterator(); iterator.hasNext(); ((jm)iterator.next()).e(l, 2102)) { }
            Object obj = jm.Oh;
            obj;
            JVM INSTR monitorenter ;
_L2:
            boolean flag1;
            for (Iterator iterator1 = jj.a(Oc).iterator(); iterator1.hasNext();)
            {
                Exception exception;
                if (((jm)iterator1.next()).ia())
                {
                    flag1 = true;
                } else
                {
                    flag1 = flag;
                }
                break MISSING_BLOCK_LABEL_137;
            }

            obj;
            JVM INSTR monitorexit ;
            jj.b(Oc, flag);
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
            flag = flag1;
            if (true) goto _L2; else goto _L1
_L1:
        }

        private a()
        {
            Oc = jj.this;
            super();
        }

    }


    private static final String NAMESPACE = jd.aN("com.google.cast.media");
    private static final long NJ;
    private static final long NK;
    private static final long NL;
    private static final long NM;
    private long NN;
    private MediaStatus NO;
    private final jm NP;
    private final jm NQ;
    private final jm NR;
    private final jm NS;
    private final jm NT;
    private final jm NU;
    private final jm NV;
    private final jm NW;
    private final jm NX;
    private final jm NY;
    private final List NZ;
    private final Runnable Oa;
    private boolean Ob;
    private final Handler mHandler;

    public jj()
    {
        this(null);
    }

    public jj(String s)
    {
        super(NAMESPACE, "MediaControlChannel", s);
        mHandler = new Handler(Looper.getMainLooper());
        Oa = new a();
        NZ = new ArrayList();
        NP = new jm(NK);
        NZ.add(NP);
        NQ = new jm(NJ);
        NZ.add(NQ);
        NR = new jm(NJ);
        NZ.add(NR);
        NS = new jm(NJ);
        NZ.add(NS);
        NT = new jm(NL);
        NZ.add(NT);
        NU = new jm(NJ);
        NZ.add(NU);
        NV = new jm(NJ);
        NZ.add(NV);
        NW = new jm(NJ);
        NZ.add(NW);
        NX = new jm(NJ);
        NZ.add(NX);
        NY = new jm(NJ);
        NZ.add(NY);
        hY();
    }

    private void M(boolean flag)
    {
label0:
        {
            if (Ob != flag)
            {
                Ob = flag;
                if (!flag)
                {
                    break label0;
                }
                mHandler.postDelayed(Oa, NM);
            }
            return;
        }
        mHandler.removeCallbacks(Oa);
    }

    static List a(jj jj1)
    {
        return jj1.NZ;
    }

    private void a(long l, JSONObject jsonobject)
    {
        boolean flag = true;
        boolean flag1 = NP.o(l);
        boolean flag2;
        int i;
        int j;
        if (NT.ia() && !NT.o(l))
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        if ((!NU.ia() || NU.o(l)) && (!NV.ia() || NV.o(l)))
        {
            flag = false;
        }
        if (flag2)
        {
            i = 2;
        } else
        {
            i = 0;
        }
        if (flag)
        {
            i |= 1;
        }
        if (flag1 || NO == null)
        {
            NO = new MediaStatus(jsonobject);
            NN = SystemClock.elapsedRealtime();
            j = 7;
        } else
        {
            j = NO.a(jsonobject, i);
        }
        if ((j & 1) != 0)
        {
            NN = SystemClock.elapsedRealtime();
            onStatusUpdated();
        }
        if ((j & 2) != 0)
        {
            NN = SystemClock.elapsedRealtime();
            onStatusUpdated();
        }
        if ((j & 4) != 0)
        {
            onMetadataUpdated();
        }
        for (Iterator iterator = NZ.iterator(); iterator.hasNext(); ((jm)iterator.next()).d(l, 0)) { }
    }

    static boolean a(jj jj1, boolean flag)
    {
        jj1.Ob = flag;
        return flag;
    }

    static void b(jj jj1, boolean flag)
    {
        jj1.M(flag);
    }

    private void hY()
    {
        M(false);
        NN = 0L;
        NO = null;
        NP.clear();
        NT.clear();
        NU.clear();
    }

    public long a(jl jl)
    {
        JSONObject jsonobject = new JSONObject();
        long l = hE();
        NW.a(l, jl);
        M(true);
        try
        {
            jsonobject.put("requestId", l);
            jsonobject.put("type", "GET_STATUS");
            if (NO != null)
            {
                jsonobject.put("mediaSessionId", NO.hB());
            }
        }
        catch (JSONException jsonexception) { }
        a(jsonobject.toString(), l, null);
        return l;
    }

    public long a(jl jl, double d, JSONObject jsonobject)
    {
        JSONObject jsonobject1;
        long l;
        if (Double.isInfinite(d) || Double.isNaN(d))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Volume cannot be ").append(d).toString());
        }
        jsonobject1 = new JSONObject();
        l = hE();
        NU.a(l, jl);
        M(true);
        jsonobject1.put("requestId", l);
        jsonobject1.put("type", "SET_VOLUME");
        jsonobject1.put("mediaSessionId", hB());
        JSONObject jsonobject2 = new JSONObject();
        jsonobject2.put("level", d);
        jsonobject1.put("volume", jsonobject2);
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l, null);
        return l;
    }

    public long a(jl jl, long l, int i, JSONObject jsonobject)
    {
        JSONObject jsonobject1;
        long l1;
        jsonobject1 = new JSONObject();
        l1 = hE();
        NT.a(l1, jl);
        M(true);
        jsonobject1.put("requestId", l1);
        jsonobject1.put("type", "SEEK");
        jsonobject1.put("mediaSessionId", hB());
        jsonobject1.put("currentTime", jd.n(l));
        if (i != 1) goto _L2; else goto _L1
_L1:
        jsonobject1.put("resumeState", "PLAYBACK_START");
_L4:
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l1, null);
        return l1;
_L2:
        if (i != 2) goto _L4; else goto _L3
_L3:
        jsonobject1.put("resumeState", "PLAYBACK_PAUSE");
          goto _L4
    }

    public long a(jl jl, MediaInfo mediainfo, boolean flag, long l, long al[], JSONObject jsonobject)
    {
        JSONObject jsonobject1;
        long l1;
        jsonobject1 = new JSONObject();
        l1 = hE();
        NP.a(l1, jl);
        M(true);
        jsonobject1.put("requestId", l1);
        jsonobject1.put("type", "LOAD");
        jsonobject1.put("media", mediainfo.toJson());
        jsonobject1.put("autoplay", flag);
        jsonobject1.put("currentTime", jd.n(l));
        if (al == null)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        JSONArray jsonarray;
        if (al.length <= 0)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        jsonarray = new JSONArray();
        int i = 0;
_L2:
        if (i >= al.length)
        {
            break; /* Loop/switch isn't completed */
        }
        jsonarray.put(i, al[i]);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        jsonobject1.put("activeTrackIds", jsonarray);
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l1, null);
        return l1;
    }

    public long a(jl jl, TextTrackStyle texttrackstyle)
    {
        JSONObject jsonobject;
        long l;
        jsonobject = new JSONObject();
        l = hE();
        NY.a(l, jl);
        M(true);
        jsonobject.put("requestId", l);
        jsonobject.put("type", "EDIT_TRACKS_INFO");
        if (texttrackstyle == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        jsonobject.put("textTrackStyle", texttrackstyle.toJson());
        jsonobject.put("mediaSessionId", hB());
_L2:
        a(jsonobject.toString(), l, null);
        return l;
        JSONException jsonexception;
        jsonexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public long a(jl jl, JSONObject jsonobject)
    {
        JSONObject jsonobject1;
        long l;
        jsonobject1 = new JSONObject();
        l = hE();
        NQ.a(l, jl);
        M(true);
        jsonobject1.put("requestId", l);
        jsonobject1.put("type", "PAUSE");
        jsonobject1.put("mediaSessionId", hB());
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l, null);
        return l;
    }

    public long a(jl jl, boolean flag, JSONObject jsonobject)
    {
        JSONObject jsonobject1;
        long l;
        jsonobject1 = new JSONObject();
        l = hE();
        NV.a(l, jl);
        M(true);
        jsonobject1.put("requestId", l);
        jsonobject1.put("type", "SET_VOLUME");
        jsonobject1.put("mediaSessionId", hB());
        JSONObject jsonobject2 = new JSONObject();
        jsonobject2.put("muted", flag);
        jsonobject1.put("volume", jsonobject2);
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l, null);
        return l;
    }

    public long a(jl jl, long al[])
    {
        JSONObject jsonobject;
        long l;
        jsonobject = new JSONObject();
        l = hE();
        NX.a(l, jl);
        M(true);
        JSONArray jsonarray;
        jsonobject.put("requestId", l);
        jsonobject.put("type", "EDIT_TRACKS_INFO");
        jsonobject.put("mediaSessionId", hB());
        jsonarray = new JSONArray();
        int i = 0;
_L2:
        if (i >= al.length)
        {
            break; /* Loop/switch isn't completed */
        }
        jsonarray.put(i, al[i]);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        try
        {
            jsonobject.put("activeTrackIds", jsonarray);
        }
        catch (JSONException jsonexception) { }
        a(jsonobject.toString(), l, null);
        return l;
    }

    public final void aK(String s)
    {
        MW.b("message received: %s", new Object[] {
            s
        });
        JSONObject jsonobject;
        String s1;
        long l;
        jsonobject = new JSONObject(s);
        s1 = jsonobject.getString("type");
        l = jsonobject.optLong("requestId", -1L);
        if (!s1.equals("MEDIA_STATUS"))
        {
            break MISSING_BLOCK_LABEL_149;
        }
        JSONArray jsonarray = jsonobject.getJSONArray("status");
        if (jsonarray.length() > 0)
        {
            a(l, jsonarray.getJSONObject(0));
            return;
        }
        try
        {
            NO = null;
            onStatusUpdated();
            onMetadataUpdated();
            NW.d(l, 0);
            return;
        }
        catch (JSONException jsonexception)
        {
            ji ji1 = MW;
            Object aobj[] = new Object[2];
            aobj[0] = jsonexception.getMessage();
            aobj[1] = s;
            ji1.d("Message is malformed (%s); ignoring: %s", aobj);
            return;
        }
        if (s1.equals("INVALID_PLAYER_STATE"))
        {
            MW.d("received unexpected error: Invalid Player State.", new Object[0]);
            JSONObject jsonobject4 = jsonobject.optJSONObject("customData");
            for (Iterator iterator1 = NZ.iterator(); iterator1.hasNext(); ((jm)iterator1.next()).b(l, 2100, jsonobject4)) { }
            break MISSING_BLOCK_LABEL_379;
        }
        if (s1.equals("LOAD_FAILED"))
        {
            JSONObject jsonobject3 = jsonobject.optJSONObject("customData");
            NP.b(l, 2100, jsonobject3);
            return;
        }
        if (s1.equals("LOAD_CANCELLED"))
        {
            JSONObject jsonobject2 = jsonobject.optJSONObject("customData");
            NP.b(l, 2101, jsonobject2);
            return;
        }
        if (s1.equals("INVALID_REQUEST"))
        {
            MW.d("received unexpected error: Invalid Request.", new Object[0]);
            JSONObject jsonobject1 = jsonobject.optJSONObject("customData");
            for (Iterator iterator = NZ.iterator(); iterator.hasNext(); ((jm)iterator.next()).b(l, 2100, jsonobject1)) { }
        }
    }

    public long b(jl jl, JSONObject jsonobject)
    {
        JSONObject jsonobject1;
        long l;
        jsonobject1 = new JSONObject();
        l = hE();
        NS.a(l, jl);
        M(true);
        jsonobject1.put("requestId", l);
        jsonobject1.put("type", "STOP");
        jsonobject1.put("mediaSessionId", hB());
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l, null);
        return l;
    }

    public void b(long l, int i)
    {
        for (Iterator iterator = NZ.iterator(); iterator.hasNext(); ((jm)iterator.next()).d(l, i)) { }
    }

    public long c(jl jl, JSONObject jsonobject)
    {
        JSONObject jsonobject1;
        long l;
        jsonobject1 = new JSONObject();
        l = hE();
        NR.a(l, jl);
        M(true);
        jsonobject1.put("requestId", l);
        jsonobject1.put("type", "PLAY");
        jsonobject1.put("mediaSessionId", hB());
        if (jsonobject != null)
        {
            try
            {
                jsonobject1.put("customData", jsonobject);
            }
            catch (JSONException jsonexception) { }
        }
        a(jsonobject1.toString(), l, null);
        return l;
    }

    public long getApproximateStreamPosition()
    {
        MediaInfo mediainfo;
        for (mediainfo = getMediaInfo(); mediainfo == null || NN == 0L;)
        {
            return 0L;
        }

        double d = NO.getPlaybackRate();
        long l = NO.getStreamPosition();
        int i = NO.getPlayerState();
        if (d == 0.0D || i != 2)
        {
            return l;
        }
        long l1 = SystemClock.elapsedRealtime() - NN;
        long l2;
        long l3;
        long l4;
        if (l1 < 0L)
        {
            l2 = 0L;
        } else
        {
            l2 = l1;
        }
        if (l2 == 0L)
        {
            return l;
        }
        l3 = mediainfo.getStreamDuration();
        l4 = l + (long)(d * (double)l2);
        if (l3 <= 0L || l4 <= l3)
        {
            if (l4 < 0L)
            {
                l3 = 0L;
            } else
            {
                l3 = l4;
            }
        }
        return l3;
    }

    public MediaInfo getMediaInfo()
    {
        if (NO == null)
        {
            return null;
        } else
        {
            return NO.getMediaInfo();
        }
    }

    public MediaStatus getMediaStatus()
    {
        return NO;
    }

    public long getStreamDuration()
    {
        MediaInfo mediainfo = getMediaInfo();
        if (mediainfo != null)
        {
            return mediainfo.getStreamDuration();
        } else
        {
            return 0L;
        }
    }

    public long hB()
    {
        if (NO == null)
        {
            throw new IllegalStateException("No current media session");
        } else
        {
            return NO.hB();
        }
    }

    public void hF()
    {
        hY();
    }

    protected void onMetadataUpdated()
    {
    }

    protected void onStatusUpdated()
    {
    }

    static 
    {
        NJ = TimeUnit.HOURS.toMillis(24L);
        NK = TimeUnit.HOURS.toMillis(24L);
        NL = TimeUnit.HOURS.toMillis(24L);
        NM = TimeUnit.SECONDS.toMillis(1L);
    }
}
