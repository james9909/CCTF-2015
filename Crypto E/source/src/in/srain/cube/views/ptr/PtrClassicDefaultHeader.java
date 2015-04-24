// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package in.srain.cube.views.ptr:
//            PtrUIHandler, PtrFrameLayout

public class PtrClassicDefaultHeader extends FrameLayout
    implements PtrUIHandler
{
    class LastUpdateTimeUpdater
        implements Runnable
    {

        final PtrClassicDefaultHeader a;
        private boolean b;

        private void a()
        {
            if (TextUtils.isEmpty(PtrClassicDefaultHeader.a(a)))
            {
                return;
            } else
            {
                b = true;
                run();
                return;
            }
        }

        static void a(LastUpdateTimeUpdater lastupdatetimeupdater)
        {
            lastupdatetimeupdater.a();
        }

        private void b()
        {
            b = false;
            a.removeCallbacks(this);
        }

        static void b(LastUpdateTimeUpdater lastupdatetimeupdater)
        {
            lastupdatetimeupdater.b();
        }

        public void run()
        {
            PtrClassicDefaultHeader.b(a);
            if (b)
            {
                a.postDelayed(this, 1000L);
            }
        }

        private LastUpdateTimeUpdater()
        {
            a = PtrClassicDefaultHeader.this;
            super();
            b = false;
        }

    }


    private static SimpleDateFormat a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private int b;
    private RotateAnimation c;
    private RotateAnimation d;
    private TextView e;
    private View f;
    private View g;
    private long h;
    private TextView i;
    private String j;
    private boolean k;
    private LastUpdateTimeUpdater l;

    public PtrClassicDefaultHeader(Context context)
    {
        super(context);
        b = 150;
        h = -1L;
        l = new LastUpdateTimeUpdater();
        a(((AttributeSet) (null)));
    }

    public PtrClassicDefaultHeader(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = 150;
        h = -1L;
        l = new LastUpdateTimeUpdater();
        a(attributeset);
    }

    public PtrClassicDefaultHeader(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        b = 150;
        h = -1L;
        l = new LastUpdateTimeUpdater();
        a(attributeset);
    }

    static String a(PtrClassicDefaultHeader ptrclassicdefaultheader)
    {
        return ptrclassicdefaultheader.j;
    }

    private void a()
    {
        c = new RotateAnimation(0.0F, -180F, 1, 0.5F, 1, 0.5F);
        c.setInterpolator(new LinearInterpolator());
        c.setDuration(b);
        c.setFillAfter(true);
        d = new RotateAnimation(-180F, 0.0F, 1, 0.5F, 1, 0.5F);
        d.setInterpolator(new LinearInterpolator());
        d.setDuration(b);
        d.setFillAfter(true);
    }

    private void b()
    {
        c();
        g.setVisibility(4);
    }

    static void b(PtrClassicDefaultHeader ptrclassicdefaultheader)
    {
        ptrclassicdefaultheader.d();
    }

    private void c()
    {
        f.clearAnimation();
        f.setVisibility(4);
    }

    private void d()
    {
        if (TextUtils.isEmpty(j) || !k)
        {
            i.setVisibility(8);
            return;
        }
        String s = getLastUpdateTime();
        if (TextUtils.isEmpty(s))
        {
            i.setVisibility(8);
            return;
        } else
        {
            i.setVisibility(0);
            i.setText(s);
            return;
        }
    }

    private void e(PtrFrameLayout ptrframelayout)
    {
        if (!ptrframelayout.f())
        {
            e.setVisibility(0);
            e.setText(R.string.cube_ptr_release_to_refresh);
        }
    }

    private void f(PtrFrameLayout ptrframelayout)
    {
        e.setVisibility(0);
        if (ptrframelayout.f())
        {
            e.setText(getResources().getString(R.string.cube_ptr_pull_down_to_refresh));
            return;
        } else
        {
            e.setText(getResources().getString(R.string.cube_ptr_pull_down));
            return;
        }
    }

    private String getLastUpdateTime()
    {
        if (h == -1L && !TextUtils.isEmpty(j))
        {
            h = getContext().getSharedPreferences("cube_ptr_classic_last_update", 0).getLong(j, -1L);
        }
        if (h != -1L)
        {
            long l1 = (new Date()).getTime() - h;
            int i1 = (int)(l1 / 1000L);
            if (l1 >= 0L && i1 > 0)
            {
                StringBuilder stringbuilder = new StringBuilder();
                stringbuilder.append(getContext().getString(R.string.cube_ptr_last_update));
                if (i1 < 60)
                {
                    stringbuilder.append((new StringBuilder()).append(i1).append(getContext().getString(R.string.cube_ptr_seconds_ago)).toString());
                } else
                {
                    int j1 = i1 / 60;
                    if (j1 > 60)
                    {
                        int k1 = j1 / 60;
                        if (k1 > 24)
                        {
                            Date date = new Date(h);
                            stringbuilder.append(a.format(date));
                        } else
                        {
                            stringbuilder.append((new StringBuilder()).append(k1).append(getContext().getString(R.string.cube_ptr_hours_ago)).toString());
                        }
                    } else
                    {
                        stringbuilder.append((new StringBuilder()).append(j1).append(getContext().getString(R.string.cube_ptr_minutes_ago)).toString());
                    }
                }
                return stringbuilder.toString();
            }
        }
        return null;
    }

    protected void a(AttributeSet attributeset)
    {
        TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, R.styleable.PtrClassicHeader, 0, 0);
        if (typedarray != null)
        {
            b = typedarray.getInt(0, b);
        }
        a();
        View view = LayoutInflater.from(getContext()).inflate(R.layout.cube_ptr_classic_default_header, this);
        f = view.findViewById(R.id.ptr_classic_header_rotate_view);
        e = (TextView)view.findViewById(R.id.ptr_classic_header_rotate_view_header_title);
        i = (TextView)view.findViewById(R.id.ptr_classic_header_rotate_view_header_last_update);
        g = view.findViewById(R.id.ptr_classic_header_rotate_view_progressbar);
        b();
    }

    public void a(PtrFrameLayout ptrframelayout)
    {
        b();
        k = true;
        d();
    }

    public void a(PtrFrameLayout ptrframelayout, boolean flag, byte byte0, int i1, int j1, float f1, float f2)
    {
        int k1 = ptrframelayout.getOffsetToRefresh();
        if (j1 < k1 && i1 >= k1)
        {
            if (flag && byte0 == 2)
            {
                f(ptrframelayout);
                if (f != null)
                {
                    f.clearAnimation();
                    f.startAnimation(d);
                }
            }
        } else
        if (j1 > k1 && i1 <= k1 && flag && byte0 == 2)
        {
            e(ptrframelayout);
            if (f != null)
            {
                f.clearAnimation();
                f.startAnimation(c);
                return;
            }
        }
    }

    public void b(PtrFrameLayout ptrframelayout)
    {
        k = true;
        d();
        LastUpdateTimeUpdater.a(l);
        g.setVisibility(4);
        f.setVisibility(0);
        e.setVisibility(0);
        if (ptrframelayout.f())
        {
            e.setText(getResources().getString(R.string.cube_ptr_pull_down_to_refresh));
            return;
        } else
        {
            e.setText(getResources().getString(R.string.cube_ptr_pull_down));
            return;
        }
    }

    public void c(PtrFrameLayout ptrframelayout)
    {
        k = false;
        c();
        g.setVisibility(0);
        e.setVisibility(0);
        e.setText(R.string.cube_ptr_refreshing);
        d();
        LastUpdateTimeUpdater.b(l);
    }

    public void d(PtrFrameLayout ptrframelayout)
    {
        c();
        g.setVisibility(4);
        e.setVisibility(0);
        e.setText(getResources().getString(R.string.cube_ptr_refresh_complete));
        SharedPreferences sharedpreferences = getContext().getSharedPreferences("cube_ptr_classic_last_update", 0);
        if (!TextUtils.isEmpty(j))
        {
            h = (new Date()).getTime();
            sharedpreferences.edit().putLong(j, h).commit();
        }
    }

    public void setLastUpdateTimeKey(String s)
    {
        if (TextUtils.isEmpty(s))
        {
            return;
        } else
        {
            j = s;
            return;
        }
    }

    public void setLastUpdateTimeRelateObject(Object obj)
    {
        setLastUpdateTimeKey(obj.getClass().getName());
    }

    public void setRotateAniTime(int i1)
    {
        if (i1 == b || i1 == 0)
        {
            return;
        } else
        {
            b = i1;
            a();
            return;
        }
    }

}
