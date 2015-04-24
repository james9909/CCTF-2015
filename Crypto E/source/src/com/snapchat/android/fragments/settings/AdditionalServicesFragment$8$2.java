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

class b
    implements android.content.
{

    final String a[];
    final NumberPicker b;
    final _cls1.executeOnExecutor c;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        int j = UserPrefs.O();
        int k = Integer.parseInt(a[b.getValue()]);
        if (k != j)
        {
            UserPrefs.f(k);
            c.c.setText(Integer.toString(k));
            (new SetNumBestFriendsTask(j) {

                final int a;
                final AdditionalServicesFragment._cls8._cls2 b;

                public void a(String s, int l)
                {
                    UserPrefs.f(a);
                    ((TextView)b.c.b.d(0x7f0a0064)).setText(Integer.toString(UserPrefs.O()));
                    AlertDialogUtils.a(0x7f0c01d7, b.c.b.getActivity());
                }

            
            {
                b = AdditionalServicesFragment._cls8._cls2.this;
                a = i;
                super();
            }
            }).executeOnExecutor(ScExecutors.b, new String[0]);
        }
        HashMap hashmap = new HashMap(2);
        hashmap.put("prev_num_best_friends", Integer.toString(j));
        hashmap.put("num_best_friends", Integer.toString(k));
        (new EasyMetric("CHANGE_BEST_FRIENDS_COUNT")).a(hashmap).c();
        dialoginterface.dismiss();
    }

    a(a a1, String as[], NumberPicker numberpicker)
    {
        c = a1;
        a = as;
        b = numberpicker;
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
            builder.setView(view1).setCancelable(true).setTitle(0x7f0c01d6).setPositiveButton(0x7f0c0142, new AdditionalServicesFragment._cls8._cls2(this, as, numberpicker)).setNegativeButton(0x7f0c003d, new AdditionalServicesFragment._cls8._cls1());
            builder.show();
        }

            
            {
                b = additionalservicesfragment;
                a = textview;
                super();
            }

        // Unreferenced inner class com/snapchat/android/fragments/settings/AdditionalServicesFragment$8$1

/* anonymous class */
        class AdditionalServicesFragment._cls8._cls1
            implements android.content.DialogInterface.OnClickListener
        {

            final AdditionalServicesFragment._cls8 a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
            }

                    
                    {
                        a = AdditionalServicesFragment._cls8.this;
                        super();
                    }
        }

    }

}
