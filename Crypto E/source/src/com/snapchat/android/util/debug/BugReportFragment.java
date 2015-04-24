// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.Timber;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.threading.ThreadUtils;
import java.io.File;

// Referenced classes of package com.snapchat.android.util.debug:
//            ScApplicationInfo, BugReportRemoteLogListFragment, ManiphestAdapter

public class BugReportFragment extends SnapchatFragment
    implements BugReportRemoteLogListFragment.OnFriendSelectedListener
{

    private static final CharSequence a[] = {
        "Camera", "Cash", "Chat", "Discover", "Discover Content", "Feed", "Friends", "Here", "Snap preview", "Snap receiving/opening", 
        "Stories", "Brand Story", "Our Story", "Login", "Registration", "Settings", "Profile", "Other/Unknown"
    };
    private Button b;
    private ImageView c;
    private boolean d;
    private boolean e;
    private EditText f;
    private EditText g;
    private String h;
    private Button i;
    private String j;
    private String k[];
    private Activity l;
    private boolean m;
    private Button n;
    private boolean o;
    private TextView p;
    private String q;
    private android.app.AlertDialog.Builder r;

    public BugReportFragment()
    {
        d = false;
        e = true;
        m = false;
        o = false;
    }

    private String a(Context context)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(ScApplicationInfo.a(context));
        return stringbuilder.toString();
    }

    static String a(BugReportFragment bugreportfragment, Context context)
    {
        return bugreportfragment.a(context);
    }

    static String a(BugReportFragment bugreportfragment, String s)
    {
        bugreportfragment.h = s;
        return s;
    }

    private void a(int i1)
    {
        h();
        i();
        k();
        l();
        b(i1);
        n();
        o();
        p();
    }

    static boolean a(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.o;
    }

    static boolean a(BugReportFragment bugreportfragment, boolean flag)
    {
        bugreportfragment.o = flag;
        return flag;
    }

    static TextView b(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.p;
    }

    private String b(Context context)
    {
        return (new StringBuilder()).append(ScApplicationInfo.e(context)).append("\n").append(ScApplicationInfo.b(context)).toString();
    }

    static String b(BugReportFragment bugreportfragment, String s)
    {
        bugreportfragment.q = s;
        return s;
    }

    private void b(int i1)
    {
        b = (Button)d(0x7f0a007c);
        b.setOnClickListener(new android.view.View.OnClickListener(i1) {

            final int a;
            final BugReportFragment b;

            public void onClick(View view)
            {
                if (BugReportFragment.j(b) == null)
                {
                    try
                    {
                        ViewUtils.a(BugReportFragment.c(b), view);
                        b.getActivity().getSupportFragmentManager().beginTransaction().add(a, new BugReportRemoteLogListFragment()).addToBackStack("BugReportRemoteLogListFragment").commit();
                        return;
                    }
                    catch (IllegalStateException illegalstateexception)
                    {
                        Timber.a("BugReportFragment", illegalstateexception);
                    }
                    return;
                } else
                {
                    BugReportFragment.a(b, null);
                    BugReportFragment.k(b).setText("Remote Log");
                    return;
                }
            }

            
            {
                b = BugReportFragment.this;
                a = i1;
                super();
            }
        });
    }

    static boolean b(BugReportFragment bugreportfragment, boolean flag)
    {
        bugreportfragment.e = flag;
        return flag;
    }

    static CharSequence[] b()
    {
        return a;
    }

    static Activity c(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.l;
    }

    static boolean c(BugReportFragment bugreportfragment, boolean flag)
    {
        bugreportfragment.d = flag;
        return flag;
    }

    static boolean d(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.e;
    }

    static boolean d(BugReportFragment bugreportfragment, boolean flag)
    {
        bugreportfragment.m = flag;
        return flag;
    }

    static ImageView e(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.c;
    }

    static EditText f(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.f;
    }

    static boolean g(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.d;
    }

    private void h()
    {
        ((TextView)d(0x7f0a0073)).setText(b(l));
        p = (TextView)d(0x7f0a0074);
        p.setText("Send this report only to yourself?");
        p.setPaintFlags(8 | p.getPaintFlags());
        p.setOnClickListener(new android.view.View.OnClickListener() {

            final BugReportFragment a;

            public void onClick(View view)
            {
                if (BugReportFragment.a(a))
                {
                    BugReportFragment.a(a, false);
                    BugReportFragment.b(a).setText("Send this report only to yourself?");
                    return;
                } else
                {
                    android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(BugReportFragment.c(a));
                    EditText edittext = new EditText(BugReportFragment.c(a));
                    builder.setTitle("Please enter your email").setView(edittext).setPositiveButton("Okay", new android.content.DialogInterface.OnClickListener(this, edittext) {

                        final EditText a;
                        final _cls1 b;

                        public void onClick(DialogInterface dialoginterface, int i1)
                        {
                            String s = a.getText().toString();
                            if (s.endsWith("@snapchat.com"))
                            {
                                BugReportFragment.b(b.a).setText(s);
                                BugReportFragment.a(b.a, true);
                                return;
                            } else
                            {
                                AlertDialogUtils.a(BugReportFragment.c(b.a), "Please enter a valid @snapchat email!!");
                                return;
                            }
                        }

            
            {
                b = _pcls1;
                a = edittext;
                super();
            }
                    }).show();
                    return;
                }
            }

            
            {
                a = BugReportFragment.this;
                super();
            }
        });
    }

    static boolean h(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.m;
    }

    static Button i(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.i;
    }

    private void i()
    {
        c = (ImageView)d(0x7f0a0076);
        Bitmap bitmap;
        ImageView imageview;
        if (!TextUtils.isEmpty(j))
        {
            bitmap = BitmapFactory.decodeFile(l.getFileStreamPath(j).getAbsolutePath());
        } else
        {
            bitmap = null;
        }
        imageview = (ImageView)d(0x7f0a0075);
        if (bitmap != null)
        {
            imageview.setImageBitmap(bitmap);
        }
        imageview.setOnClickListener(new android.view.View.OnClickListener(bitmap) {

            final Bitmap a;
            final BugReportFragment b;

            public void onClick(View view)
            {
                ImageView imageview1 = new ImageView(BugReportFragment.c(b));
                imageview1.setImageBitmap(a);
                (new android.app.AlertDialog.Builder(BugReportFragment.c(b))).setTitle("Included Screenshot").setView(imageview1).setPositiveButton("Include", new android.content.DialogInterface.OnClickListener(this) {

                    final _cls2 a;

                    public void onClick(DialogInterface dialoginterface, int i1)
                    {
                        if (!BugReportFragment.d(a.b))
                        {
                            BugReportFragment.b(a.b, true);
                            BugReportFragment.e(a.b).setVisibility(8);
                        }
                    }

            
            {
                a = _pcls2;
                super();
            }
                }).setNegativeButton("Remove", new android.content.DialogInterface.OnClickListener(this) {

                    final _cls2 a;

                    public void onClick(DialogInterface dialoginterface, int i1)
                    {
                        if (BugReportFragment.d(a.b))
                        {
                            BugReportFragment.b(a.b, false);
                            BugReportFragment.e(a.b).setVisibility(0);
                        }
                    }

            
            {
                a = _pcls2;
                super();
            }
                }).show();
            }

            
            {
                b = BugReportFragment.this;
                a = bitmap;
                super();
            }
        });
    }

    static String j(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.h;
    }

    static Button k(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.b;
    }

    private void k()
    {
        f = (EditText)d(0x7f0a007a);
        f.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final BugReportFragment a;

            public boolean onEditorAction(TextView textview, int i1, KeyEvent keyevent)
            {
                Editable editable = BugReportFragment.f(a).getText();
                int j1 = editable.toString().split("\n").length;
                if (i1 == 5 || keyevent != null && keyevent.getKeyCode() == 66 && keyevent.getAction() == 0)
                {
                    String s = (new StringBuilder()).append("\n").append(j1 + 1).append(". ").toString();
                    BugReportFragment.f(a).setText((new StringBuilder()).append(editable).append(s).toString());
                    BugReportFragment.f(a).setSelection(editable.length() + s.length());
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                a = BugReportFragment.this;
                super();
            }
        });
        f.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final BugReportFragment a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    BugReportFragment.f(a).setSelection(BugReportFragment.f(a).getText().length());
                }
            }

            
            {
                a = BugReportFragment.this;
                super();
            }
        });
    }

    static android.app.AlertDialog.Builder l(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.r;
    }

    private void l()
    {
        g = (EditText)d(0x7f0a0078);
        g.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final BugReportFragment a;

            public boolean onEditorAction(TextView textview, int i1, KeyEvent keyevent)
            {
                if (i1 == 5 || keyevent != null && keyevent.getKeyCode() == 66 && keyevent.getAction() == 0)
                {
                    if (BugReportFragment.g(a))
                    {
                        BugReportFragment.f(a).requestFocus();
                        return true;
                    }
                    BugReportFragment.c(a, true);
                    (new Thread(new Runnable(this) {

                        final _cls5 a;

                        public void run()
                        {
                            ThreadUtils.a(300L);
                            BugReportFragment.c(a.a, false);
                        }

            
            {
                a = _pcls5;
                super();
            }
                    })).start();
                }
                return false;
            }

            
            {
                a = BugReportFragment.this;
                super();
            }
        });
        g.addTextChangedListener(new TextWatcher() {

            final BugReportFragment a;

            public void afterTextChanged(Editable editable)
            {
                if (editable.length() > 2 && !BugReportFragment.h(a))
                {
                    BugReportFragment.d(a, true);
                    BugReportFragment.i(a).setEnabled(true);
                } else
                if (editable.length() <= 2 && BugReportFragment.h(a))
                {
                    BugReportFragment.d(a, false);
                    BugReportFragment.i(a).setEnabled(false);
                    return;
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            
            {
                a = BugReportFragment.this;
                super();
            }
        });
    }

    static String m(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.q;
    }

    static String n(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.j;
    }

    private void n()
    {
        n = (Button)d(0x7f0a007d);
        n.setOnClickListener(new android.view.View.OnClickListener() {

            final BugReportFragment a;

            public void onClick(View view)
            {
                BugReportFragment.l(a).show();
            }

            
            {
                a = BugReportFragment.this;
                super();
            }
        });
    }

    private void o()
    {
        i = (Button)d(0x7f0a007e);
        i.setOnClickListener(new android.view.View.OnClickListener() {

            final BugReportFragment a;

            public void onClick(View view)
            {
                if (BugReportFragment.m(a) == null)
                {
                    BugReportFragment.l(a).show();
                    return;
                }
                String s;
                StringBuilder stringbuilder;
                File file;
                File afile[];
                if (BugReportFragment.a(a))
                {
                    s = BugReportFragment.b(a).getText().toString();
                } else
                {
                    s = "null";
                }
                stringbuilder = new StringBuilder(BugReportFragment.f(a).getText().toString());
                if (BugReportFragment.d(a) && !TextUtils.isEmpty(BugReportFragment.n(a)))
                {
                    file = BugReportFragment.c(a).getFileStreamPath(BugReportFragment.n(a));
                } else
                {
                    file = null;
                }
                afile = new File[BugReportFragment.o(a).length];
                for (int i1 = 0; i1 < afile.length; i1++)
                {
                    afile[i1] = BugReportFragment.c(a).getFileStreamPath(BugReportFragment.o(a)[i1]);
                }

                (new ManiphestAdapter()).a(BugReportFragment.a(a, BugReportFragment.c(a)), s, BugReportFragment.p(a).getText().toString(), stringbuilder.toString(), BugReportFragment.j(a), BugReportFragment.m(a), file, afile);
                BugReportFragment.c(a).finish();
            }

            
            {
                a = BugReportFragment.this;
                super();
            }
        });
    }

    static String[] o(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.k;
    }

    static EditText p(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.g;
    }

    private void p()
    {
        r = (new android.app.AlertDialog.Builder(l)).setTitle("Which project?").setItems(a, new android.content.DialogInterface.OnClickListener() {

            final BugReportFragment a;

            public void onClick(DialogInterface dialoginterface, int i1)
            {
                BugReportFragment.b(a, BugReportFragment.b()[i1].toString());
                BugReportFragment.q(a).setText(BugReportFragment.b()[i1]);
            }

            
            {
                a = BugReportFragment.this;
                super();
            }
        });
    }

    static Button q(BugReportFragment bugreportfragment)
    {
        return bugreportfragment.n;
    }

    public void a(String s)
    {
        if (s != null && b != null)
        {
            h = s;
            b.setText(s);
        }
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        l = activity;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(0x7f04000b, viewgroup, false);
        e(view);
        j = H().getStringExtra("screenshots");
        k = H().getStringArrayExtra("logs");
        a(0x7f0a0071);
        return view;
    }

    public void onDetach()
    {
        super.onDetach();
        l = null;
    }

}
