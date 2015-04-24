// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.api.SetNumBestFriendsTask;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.ScExecutors;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import net.simonvt.numberpicker.NumberPicker;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            AdditionalServicesFragment

class a
    implements android.content.
{

    final a a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
    }

    b(b b)
    {
        a = b;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/settings/AdditionalServicesFragment$8

/* anonymous class */
    class AdditionalServicesFragment._cls8
        implements android.view.View.OnClickListener
    {

        final TextView a;
        final AdditionalServicesFragment b;

        public void onClick(View view)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(b.getActivity());
            View view1 = LayoutInflater.from(b.getActivity()).inflate(0x7f040069, null);
            builder.setInverseBackgroundForced(true);
            NumberPicker numberpicker = (NumberPicker)view1.findViewById(0x7f0a0246);
            String as[] = b.getResources().getStringArray(0x7f07000b);
            numberpicker.setMinValue(0);
            numberpicker.setMaxValue(-1 + as.length);
            numberpicker.setDisplayedValues(as);
            numberpicker.setValue(Arrays.binarySearch(as, String.valueOf(UserPrefs.O())));
            numberpicker.setFocusable(true);
            numberpicker.setFocusableInTouchMode(true);
            builder.setView(view1).setCancelable(true).setTitle(0x7f0c01d6).setPositiveButton(0x7f0c0142, new AdditionalServicesFragment._cls8._cls2(as, numberpicker)).setNegativeButton(0x7f0c003d, new AdditionalServicesFragment._cls8._cls1(this));
            builder.show();
        }

            
            {
                b = additionalservicesfragment;
                a = textview;
                super();
            }

        // Unreferenced inner class com/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2

/* anonymous class */
        class AdditionalServicesFragment._cls8._cls2
            implements android.content.DialogInterface.OnClickListener
        {

            final String a[];
            final NumberPicker b;
            final AdditionalServicesFragment._cls8 c;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                int j = UserPrefs.O();
                int k = Integer.parseInt(a[b.getValue()]);
                if (k != j)
                {
                    UserPrefs.f(k);
                    c.a.setText(Integer.toString(k));
                    (new AdditionalServicesFragment._cls8._cls2._cls1(this, j)).executeOnExecutor(ScExecutors.b, new String[0]);
                }
                HashMap hashmap = new HashMap(2);
                hashmap.put("prev_num_best_friends", Integer.toString(j));
                hashmap.put("num_best_friends", Integer.toString(k));
                (new EasyMetric("CHANGE_BEST_FRIENDS_COUNT")).a(hashmap).c();
                dialoginterface.dismiss();
            }

                    
                    {
                        c = AdditionalServicesFragment._cls8.this;
                        a = as;
                        b = numberpicker;
                        super();
                    }
        }


        // Unreferenced inner class com/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2$1

/* anonymous class */
        class AdditionalServicesFragment._cls8._cls2._cls1 extends SetNumBestFriendsTask
        {

            final int a;
            final AdditionalServicesFragment._cls8._cls2 b;

            public void a(String s, int i)
            {
                UserPrefs.f(a);
                ((TextView)b.c.b.d(0x7f0a0064)).setText(Integer.toString(UserPrefs.O()));
                AlertDialogUtils.a(0x7f0c01d7, b.c.b.getActivity());
            }

                    
                    {
                        b = _pcls2;
                        a = i;
                        super();
                    }
        }

    }

}
