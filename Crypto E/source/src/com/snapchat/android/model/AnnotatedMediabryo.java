// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.graphics.Bitmap;
import com.snapchat.android.ui.caption.CaptionAnalyticData;
import com.snapchat.android.util.ScTextUtils;
import com.snapchat.android.util.bitmap.BitmapPool;
import java.util.ArrayList;
import java.util.Date;

// Referenced classes of package com.snapchat.android.model:
//            Mediabryo

public abstract class AnnotatedMediabryo extends Mediabryo
{

    private CaptionAnalyticData mCaptionAnalyticData;
    private String mCaptionStyleDescription;
    private String mCaptionText;
    private Bitmap mCompositeImageBitmap;
    private boolean mDeleteCacheAfterSent;
    private String mGeofilterId;
    private int mGeofilterImpressions;
    private boolean mHasDrawing;
    protected boolean mShouldExecuteSendSnapTaskAfterUpload;
    private String mSwipeFilterDescription;
    private int mSwipeFilterNumDoubleSwipes;
    private int mSwipeFilterNumSingleSwipes;

    protected AnnotatedMediabryo(String s1)
    {
        super(s1);
        mDeleteCacheAfterSent = false;
        mShouldExecuteSendSnapTaskAfterUpload = false;
    }

    public AnnotatedMediabryo(String s1, Date date)
    {
        super(s1, date);
        mDeleteCacheAfterSent = false;
        mShouldExecuteSendSnapTaskAfterUpload = false;
    }

    public String A()
    {
        return mCaptionText;
    }

    public Bitmap B()
    {
        return mCompositeImageBitmap;
    }

    public void C()
    {
        if (mCompositeImageBitmap == null)
        {
            return;
        } else
        {
            BitmapPool.a().a(mCompositeImageBitmap);
            mCompositeImageBitmap = null;
            return;
        }
    }

    public void a(double d1)
    {
    }

    public void a(int i1)
    {
        mSwipeFilterNumSingleSwipes = i1;
    }

    public void a(Bitmap bitmap)
    {
        mCompositeImageBitmap = bitmap;
    }

    public void a(CaptionAnalyticData captionanalyticdata)
    {
        mCaptionAnalyticData = captionanalyticdata;
    }

    public void a(ArrayList arraylist)
    {
    }

    public void a(boolean flag)
    {
        mShouldExecuteSendSnapTaskAfterUpload = flag;
    }

    public void b(int i1)
    {
        mSwipeFilterNumDoubleSwipes = i1;
    }

    public void b(boolean flag)
    {
        mDeleteCacheAfterSent = flag;
    }

    public void c(int i1)
    {
        mGeofilterImpressions = i1;
    }

    public void c(boolean flag)
    {
    }

    public boolean c()
    {
        return false;
    }

    public Object clone()
    {
        return e();
    }

    public void d(boolean flag)
    {
        mHasDrawing = flag;
    }

    public abstract AnnotatedMediabryo e();

    public void e(String s1)
    {
        if (s1 != null && ScTextUtils.a(true, s1, "Geofilter"))
        {
            mSwipeFilterDescription = "Geofilter";
            return;
        } else
        {
            mSwipeFilterDescription = s1;
            return;
        }
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof AnnotatedMediabryo))
        {
            return false;
        } else
        {
            return super.equals(obj);
        }
    }

    public void f(String s1)
    {
        mGeofilterId = s1;
    }

    public String g()
    {
        return "";
    }

    public void g(String s1)
    {
        mCaptionStyleDescription = s1;
    }

    public String h()
    {
        return "";
    }

    public void h(String s1)
    {
        mCaptionText = s1;
    }

    public boolean i()
    {
        return mShouldExecuteSendSnapTaskAfterUpload;
    }

    public boolean j()
    {
        return false;
    }

    public boolean k()
    {
        return mDeleteCacheAfterSent;
    }

    public ArrayList l()
    {
        return new ArrayList();
    }

    public double m()
    {
        return 0.0D;
    }

    public boolean n()
    {
        return false;
    }

    public long o()
    {
        return 0L;
    }

    public boolean p()
    {
        return false;
    }

    public long q()
    {
        return 0L;
    }

    public String r()
    {
        return "";
    }

    public boolean s()
    {
        return mHasDrawing;
    }

    public String t()
    {
        return mSwipeFilterDescription;
    }

    public int u()
    {
        return mSwipeFilterNumSingleSwipes;
    }

    public int v()
    {
        return mSwipeFilterNumDoubleSwipes;
    }

    public int w()
    {
        return mGeofilterImpressions;
    }

    public String x()
    {
        return mGeofilterId;
    }

    public String y()
    {
        return mCaptionStyleDescription;
    }

    public CaptionAnalyticData z()
    {
        return mCaptionAnalyticData;
    }
}
