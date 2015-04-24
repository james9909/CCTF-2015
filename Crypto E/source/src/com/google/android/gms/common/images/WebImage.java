// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.common.images:
//            b

public final class WebImage
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new b();
    private final int DN;
    private final Uri Tk;
    private final int li;
    private final int lj;

    WebImage(int i, Uri uri, int j, int k)
    {
        DN = i;
        Tk = uri;
        li = j;
        lj = k;
    }

    public WebImage(Uri uri)
    {
        this(uri, 0, 0);
    }

    public WebImage(Uri uri, int i, int j)
    {
        this(1, uri, i, j);
        if (uri == null)
        {
            throw new IllegalArgumentException("url cannot be null");
        }
        if (i < 0 || j < 0)
        {
            throw new IllegalArgumentException("width and height must not be negative");
        } else
        {
            return;
        }
    }

    public WebImage(JSONObject jsonobject)
    {
        this(f(jsonobject), jsonobject.optInt("width", 0), jsonobject.optInt("height", 0));
    }

    private static Uri f(JSONObject jsonobject)
    {
        boolean flag = jsonobject.has("url");
        Uri uri = null;
        if (flag)
        {
            Uri uri1;
            try
            {
                uri1 = Uri.parse(jsonobject.getString("url"));
            }
            catch (JSONException jsonexception)
            {
                return null;
            }
            uri = uri1;
        }
        return uri;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || !(obj instanceof WebImage))
            {
                return false;
            }
            WebImage webimage = (WebImage)obj;
            if (!r.equal(Tk, webimage.Tk) || li != webimage.li || lj != webimage.lj)
            {
                return false;
            }
        }
        return true;
    }

    public int getHeight()
    {
        return lj;
    }

    public Uri getUrl()
    {
        return Tk;
    }

    int getVersionCode()
    {
        return DN;
    }

    public int getWidth()
    {
        return li;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Tk;
        aobj[1] = Integer.valueOf(li);
        aobj[2] = Integer.valueOf(lj);
        return r.hashCode(aobj);
    }

    public JSONObject toJson()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("url", Tk.toString());
            jsonobject.put("width", li);
            jsonobject.put("height", lj);
        }
        catch (JSONException jsonexception)
        {
            return jsonobject;
        }
        return jsonobject;
    }

    public String toString()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(li);
        aobj[1] = Integer.valueOf(lj);
        aobj[2] = Tk.toString();
        return String.format("Image %dx%d %s", aobj);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        b.a(this, parcel, i);
    }

}
