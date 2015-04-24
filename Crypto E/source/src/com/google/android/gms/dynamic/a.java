// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package com.google.android.gms.dynamic:
//            LifecycleDelegate, f

public abstract class com.google.android.gms.dynamic.a
{
    static interface a
    {

        public abstract void b(LifecycleDelegate lifecycledelegate);

        public abstract int getState();
    }


    private LifecycleDelegate aaK;
    private Bundle aaL;
    private LinkedList aaM;
    private final f aaN = new f() {

        final com.google.android.gms.dynamic.a aaO;

        public void a(LifecycleDelegate lifecycledelegate)
        {
            com.google.android.gms.dynamic.a.a(aaO, lifecycledelegate);
            for (Iterator iterator = com.google.android.gms.dynamic.a.a(aaO).iterator(); iterator.hasNext(); ((a)iterator.next()).b(com.google.android.gms.dynamic.a.b(aaO))) { }
            com.google.android.gms.dynamic.a.a(aaO).clear();
            com.google.android.gms.dynamic.a.a(aaO, null);
        }

            
            {
                aaO = com.google.android.gms.dynamic.a.this;
                super();
            }
    };

    public com.google.android.gms.dynamic.a()
    {
    }

    static Bundle a(com.google.android.gms.dynamic.a a1, Bundle bundle)
    {
        a1.aaL = bundle;
        return bundle;
    }

    static LifecycleDelegate a(com.google.android.gms.dynamic.a a1, LifecycleDelegate lifecycledelegate)
    {
        a1.aaK = lifecycledelegate;
        return lifecycledelegate;
    }

    static LinkedList a(com.google.android.gms.dynamic.a a1)
    {
        return a1.aaM;
    }

    private void a(Bundle bundle, a a1)
    {
        if (aaK != null)
        {
            a1.b(aaK);
            return;
        }
        if (aaM == null)
        {
            aaM = new LinkedList();
        }
        aaM.add(a1);
        if (bundle != null)
        {
            if (aaL == null)
            {
                aaL = (Bundle)bundle.clone();
            } else
            {
                aaL.putAll(bundle);
            }
        }
        a(aaN);
    }

    static LifecycleDelegate b(com.google.android.gms.dynamic.a a1)
    {
        return a1.aaK;
    }

    public static void b(FrameLayout framelayout)
    {
        Context context = framelayout.getContext();
        int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        String s = GooglePlayServicesUtil.d(context, i);
        String s1 = GooglePlayServicesUtil.e(context, i);
        LinearLayout linearlayout = new LinearLayout(framelayout.getContext());
        linearlayout.setOrientation(1);
        linearlayout.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-2, -2));
        framelayout.addView(linearlayout);
        TextView textview = new TextView(framelayout.getContext());
        textview.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-2, -2));
        textview.setText(s);
        linearlayout.addView(textview);
        if (s1 != null)
        {
            Button button = new Button(context);
            button.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-2, -2));
            button.setText(s1);
            linearlayout.addView(button);
            button.setOnClickListener(new android.view.View.OnClickListener(context, i) {

                final int aaU;
                final Context no;

                public void onClick(View view)
                {
                    no.startActivity(GooglePlayServicesUtil.br(aaU));
                }

            
            {
                no = context;
                aaU = i;
                super();
            }
            });
        }
    }

    private void dN(int i)
    {
        for (; !aaM.isEmpty() && ((a)aaM.getLast()).getState() >= i; aaM.removeLast()) { }
    }

    protected void a(FrameLayout framelayout)
    {
        b(framelayout);
    }

    protected abstract void a(f f);

    public LifecycleDelegate ln()
    {
        return aaK;
    }

    public void onCreate(Bundle bundle)
    {
        a(bundle, new a(bundle) {

            final Bundle Hm;
            final com.google.android.gms.dynamic.a aaO;

            public void b(LifecycleDelegate lifecycledelegate)
            {
                com.google.android.gms.dynamic.a.b(aaO).onCreate(Hm);
            }

            public int getState()
            {
                return 1;
            }

            
            {
                aaO = com.google.android.gms.dynamic.a.this;
                Hm = bundle;
                super();
            }
        });
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        FrameLayout framelayout = new FrameLayout(layoutinflater.getContext());
        a(bundle, new a(framelayout, layoutinflater, viewgroup, bundle) {

            final Bundle Hm;
            final com.google.android.gms.dynamic.a aaO;
            final FrameLayout aaR;
            final LayoutInflater aaS;
            final ViewGroup aaT;

            public void b(LifecycleDelegate lifecycledelegate)
            {
                aaR.removeAllViews();
                aaR.addView(com.google.android.gms.dynamic.a.b(aaO).onCreateView(aaS, aaT, Hm));
            }

            public int getState()
            {
                return 2;
            }

            
            {
                aaO = com.google.android.gms.dynamic.a.this;
                aaR = framelayout;
                aaS = layoutinflater;
                aaT = viewgroup;
                Hm = bundle;
                super();
            }
        });
        if (aaK == null)
        {
            a(framelayout);
        }
        return framelayout;
    }

    public void onDestroy()
    {
        if (aaK != null)
        {
            aaK.onDestroy();
            return;
        } else
        {
            dN(1);
            return;
        }
    }

    public void onDestroyView()
    {
        if (aaK != null)
        {
            aaK.onDestroyView();
            return;
        } else
        {
            dN(2);
            return;
        }
    }

    public void onInflate(Activity activity, Bundle bundle, Bundle bundle1)
    {
        a(bundle1, new a(activity, bundle, bundle1) {

            final Bundle Hm;
            final com.google.android.gms.dynamic.a aaO;
            final Activity aaP;
            final Bundle aaQ;

            public void b(LifecycleDelegate lifecycledelegate)
            {
                com.google.android.gms.dynamic.a.b(aaO).onInflate(aaP, aaQ, Hm);
            }

            public int getState()
            {
                return 0;
            }

            
            {
                aaO = com.google.android.gms.dynamic.a.this;
                aaP = activity;
                aaQ = bundle;
                Hm = bundle1;
                super();
            }
        });
    }

    public void onLowMemory()
    {
        if (aaK != null)
        {
            aaK.onLowMemory();
        }
    }

    public void onPause()
    {
        if (aaK != null)
        {
            aaK.onPause();
            return;
        } else
        {
            dN(5);
            return;
        }
    }

    public void onResume()
    {
        a(((Bundle) (null)), new a() {

            final com.google.android.gms.dynamic.a aaO;

            public void b(LifecycleDelegate lifecycledelegate)
            {
                com.google.android.gms.dynamic.a.b(aaO).onResume();
            }

            public int getState()
            {
                return 5;
            }

            
            {
                aaO = com.google.android.gms.dynamic.a.this;
                super();
            }
        });
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        if (aaK != null)
        {
            aaK.onSaveInstanceState(bundle);
        } else
        if (aaL != null)
        {
            bundle.putAll(aaL);
            return;
        }
    }

    public void onStart()
    {
        a(((Bundle) (null)), new a() {

            final com.google.android.gms.dynamic.a aaO;

            public void b(LifecycleDelegate lifecycledelegate)
            {
                com.google.android.gms.dynamic.a.b(aaO).onStart();
            }

            public int getState()
            {
                return 4;
            }

            
            {
                aaO = com.google.android.gms.dynamic.a.this;
                super();
            }
        });
    }

    public void onStop()
    {
        if (aaK != null)
        {
            aaK.onStop();
            return;
        } else
        {
            dN(4);
            return;
        }
    }
}
