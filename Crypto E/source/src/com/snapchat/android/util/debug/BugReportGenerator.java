// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.camera.cameraview.CameraView;
import com.snapchat.android.ui.FrivolousAnimationView;
import com.snapchat.android.util.DrawingUtils;
import com.snapchat.android.util.network.CloseableUtils;
import com.snapchat.android.util.threading.ThreadUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.snapchat.android.util.debug:
//            DebugCapturer, ShakeReporter, BugReportActivity

public class BugReportGenerator
    implements ShakeReporter.BugReporter
{

    public BugReportGenerator()
    {
    }

    private Bitmap a(View view)
    {
        TextureView textureview = (TextureView)a(((View) ((CameraView)a(view, com/snapchat/android/camera/cameraview/CameraView))), android/view/TextureView);
        if (textureview != null)
        {
            return textureview.getBitmap();
        } else
        {
            return null;
        }
    }

    static Bitmap a(BugReportGenerator bugreportgenerator, View view)
    {
        return bugreportgenerator.a(view);
    }

    private View a(View view, Class class1)
    {
        if (view == null)
        {
            view = null;
        } else
        if (view.getClass() != class1)
        {
            if (view instanceof ViewGroup)
            {
                int i = ((ViewGroup)view).getChildCount();
                for (int j = 0; j < i; j++)
                {
                    View view1 = a(((ViewGroup)view).getChildAt(j), class1);
                    if (view1 != null)
                    {
                        return view1;
                    }
                }

            }
            return null;
        }
        return view;
    }

    File a(Activity activity, Bitmap bitmap)
    {
        java.io.FileOutputStream fileoutputstream = activity.openFileOutput("snapchat_shake2report.jpeg", 0);
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 50, fileoutputstream);
        CloseableUtils.a(fileoutputstream);
        return activity.getFileStreamPath("snapchat_shake2report.jpeg");
    }

    public void a(Activity activity, ShakeReporter shakereporter)
    {
        Timber.b("BugReportGenerator", "Activated Shake To Report", new Object[0]);
        ThreadUtils.b(new Runnable(activity, shakereporter) {

            final Activity a;
            final ShakeReporter b;
            final BugReportGenerator c;

            public void run()
            {
                c.b(a, b);
            }

            
            {
                c = BugReportGenerator.this;
                a = activity;
                b = shakereporter;
                super();
            }
        });
    }

    void a(Activity activity, ShakeReporter shakereporter, Bitmap bitmap)
    {
        String s;
        if (bitmap != null)
        {
            try
            {
                a(activity, bitmap);
            }
            catch (FileNotFoundException filenotfoundexception)
            {
                Timber.a("BugReportGenerator", filenotfoundexception);
            }
        }
        try
        {
            DebugCapturer.a(activity, false);
        }
        catch (IOException ioexception)
        {
            Timber.a("BugReportGenerator", ioexception);
        }
        try
        {
            DebugCapturer.a(activity);
        }
        catch (IOException ioexception1)
        {
            Timber.a("BugReportGenerator", ioexception1);
        }
        if (bitmap != null)
        {
            s = "snapchat_shake2report.jpeg";
        } else
        {
            s = null;
        }
        ThreadUtils.a(new Runnable(activity, shakereporter, s) {

            final Activity a;
            final ShakeReporter b;
            final String c;
            final BugReportGenerator d;

            public void run()
            {
                d.a(a, b, c);
            }

            
            {
                d = BugReportGenerator.this;
                a = activity;
                b = shakereporter;
                c = s;
                super();
            }
        });
    }

    void a(Activity activity, ShakeReporter shakereporter, String s)
    {
        (new android.app.AlertDialog.Builder(activity)).setTitle("Shake To Report").setMessage("Please describe the issue in the coming pop-up screen. Every bug/request you file will help prevent a user from experiencing that pain!").setCancelable(true).setPositiveButton("Send Feedback", new android.content.DialogInterface.OnClickListener(activity, s) {

            final Activity a;
            final String b;
            final BugReportGenerator c;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                Intent intent = new Intent(a, com/snapchat/android/util/debug/BugReportActivity);
                intent.putExtra("screenshots", b);
                intent.putExtra("logs", new String[] {
                    "snapchat_shake2report.txt", "snapchat_shake2report_timber.txt"
                });
                a.startActivity(intent);
            }

            
            {
                c = BugReportGenerator.this;
                a = activity;
                b = s;
                super();
            }
        }).setNegativeButton("Cancel", new android.content.DialogInterface.OnClickListener(shakereporter) {

            final ShakeReporter a;
            final BugReportGenerator b;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                a.a(false);
            }

            
            {
                b = BugReportGenerator.this;
                a = shakereporter;
                super();
            }
        }).setOnCancelListener(new android.content.DialogInterface.OnCancelListener(shakereporter) {

            final ShakeReporter a;
            final BugReportGenerator b;

            public void onCancel(DialogInterface dialoginterface)
            {
                a.a(false);
            }

            
            {
                b = BugReportGenerator.this;
                a = shakereporter;
                super();
            }
        }).show();
    }

    void a(View view, Map map)
    {
        if (view != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (view instanceof FrivolousAnimationView)
        {
            map.put((FrivolousAnimationView)view, Boolean.valueOf(view.isDrawingCacheEnabled()));
            view.setDrawingCacheEnabled(true);
        }
        if (view instanceof ViewGroup)
        {
            int i = 0;
            while (i < ((ViewGroup)view).getChildCount()) 
            {
                a(((ViewGroup)view).getChildAt(i), map);
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    void b(Activity activity, ShakeReporter shakereporter)
    {
        View view = activity.getWindow().getDecorView();
        HashMap hashmap = new HashMap();
        a(view, hashmap);
        if ((activity instanceof LandingPageActivity) && ((LandingPageActivity)activity).i())
        {
            ThreadUtils.a(1000L);
            ThreadUtils.a(new Runnable(view, hashmap, activity, shakereporter) {

                final View a;
                final Map b;
                final Activity c;
                final ShakeReporter d;
                final BugReportGenerator e;

                public void run()
                {
                    Bitmap bitmap = BugReportGenerator.a(e, a);
                    e.b(a, b);
                    e.b(c, d, bitmap);
                }

            
            {
                e = BugReportGenerator.this;
                a = view;
                b = map;
                c = activity;
                d = shakereporter;
                super();
            }
            });
            return;
        } else
        {
            ThreadUtils.a(new Runnable(view, hashmap, activity, shakereporter) {

                final View a;
                final Map b;
                final Activity c;
                final ShakeReporter d;
                final BugReportGenerator e;

                public void run()
                {
                    int i = a.getWidth();
                    int j = a.getHeight();
                    View aview[] = new View[1];
                    aview[0] = a;
                    Bitmap bitmap = DrawingUtils.a(i, j, aview);
                    e.b(a, b);
                    e.b(c, d, bitmap);
                }

            
            {
                e = BugReportGenerator.this;
                a = view;
                b = map;
                c = activity;
                d = shakereporter;
                super();
            }
            });
            return;
        }
    }

    void b(Activity activity, ShakeReporter shakereporter, Bitmap bitmap)
    {
        if (ThreadUtils.c())
        {
            ThreadUtils.b(new Runnable(activity, shakereporter, bitmap) {

                final Activity a;
                final ShakeReporter b;
                final Bitmap c;
                final BugReportGenerator d;

                public void run()
                {
                    d.a(a, b, c);
                }

            
            {
                d = BugReportGenerator.this;
                a = activity;
                b = shakereporter;
                c = bitmap;
                super();
            }
            });
            return;
        } else
        {
            a(activity, shakereporter, bitmap);
            return;
        }
    }

    void b(View view, Map map)
    {
        if (view != null && map != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if ((view instanceof FrivolousAnimationView) && map.containsKey(view))
        {
            view.setDrawingCacheEnabled(((Boolean)map.get(view)).booleanValue());
        }
        if (view instanceof ViewGroup)
        {
            int i = 0;
            while (i < ((ViewGroup)view).getChildCount()) 
            {
                View view1 = ((ViewGroup)view).getChildAt(i);
                if (view1 != null)
                {
                    b(view1, map);
                }
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
