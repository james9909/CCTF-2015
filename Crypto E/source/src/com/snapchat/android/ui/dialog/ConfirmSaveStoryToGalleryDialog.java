// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.cache.SaveImageToGalleryTask;
import com.snapchat.android.util.cache.SaveStoryToGalleryTask;
import java.util.List;

public class ConfirmSaveStoryToGalleryDialog
{

    private final Context a;
    private final StoryGroup b;

    public ConfirmSaveStoryToGalleryDialog(Context context, StoryGroup storygroup)
    {
        a = context;
        b = storygroup;
    }

    private void a(StorySnap storysnap)
    {
        Bitmap bitmap = storysnap.a(a);
        if (bitmap == null)
        {
            b.a(com.snapchat.android.model.StoryGroup.ActionState.READY);
            AlertDialogUtils.a(0x7f0c016f, a);
            return;
        } else
        {
            (new SaveImageToGalleryTask(a, bitmap) {

                final ConfirmSaveStoryToGalleryDialog a;

                protected void a()
                {
                    super.a();
                    ConfirmSaveStoryToGalleryDialog.b(a).a(com.snapchat.android.model.StoryGroup.ActionState.SAVED);
                }

                protected void b()
                {
                    super.b();
                    AlertDialogUtils.a(0x7f0c016f, c);
                    ConfirmSaveStoryToGalleryDialog.b(a).a(com.snapchat.android.model.StoryGroup.ActionState.READY);
                }

                protected void onPreExecute()
                {
                    super.onPreExecute();
                    ConfirmSaveStoryToGalleryDialog.b(a).a(com.snapchat.android.model.StoryGroup.ActionState.SAVING);
                }

            
            {
                a = ConfirmSaveStoryToGalleryDialog.this;
                super(context, bitmap);
            }
            }).executeOnExecutor(ScExecutors.c, new Void[0]);
            return;
        }
    }

    static void a(ConfirmSaveStoryToGalleryDialog confirmsavestorytogallerydialog)
    {
        confirmsavestorytogallerydialog.b();
    }

    static StoryGroup b(ConfirmSaveStoryToGalleryDialog confirmsavestorytogallerydialog)
    {
        return confirmsavestorytogallerydialog.b;
    }

    private void b()
    {
        List list = b.a(false);
        if (list.size() == 1)
        {
            StorySnap storysnap = ((StorySnapLogbook)list.get(0)).e();
            if (storysnap.ao() == 0)
            {
                a(storysnap);
                return;
            }
        }
        (new SaveStoryToGalleryTask(a, b, list)).executeOnExecutor(ScExecutors.c, new Void[0]);
    }

    public void a()
    {
        Resources resources = a.getResources();
        if (UserPrefs.ap())
        {
            AlertDialogUtils.b(a, resources.getString(0x7f0c0187), resources.getString(0x7f0c0186), new com.snapchat.android.util.AlertDialogUtils.YesNoAlertListener() {

                final ConfirmSaveStoryToGalleryDialog a;

                public void a(com.snapchat.android.util.AlertDialogUtils.YesNoOption yesnooption)
                {
                    static class _cls3
                    {

                        static final int a[];

                        static 
                        {
                            a = new int[com.snapchat.android.util.AlertDialogUtils.YesNoOption.values().length];
                            try
                            {
                                a[com.snapchat.android.util.AlertDialogUtils.YesNoOption.c.ordinal()] = 1;
                            }
                            catch (NoSuchFieldError nosuchfielderror) { }
                            try
                            {
                                a[com.snapchat.android.util.AlertDialogUtils.YesNoOption.a.ordinal()] = 2;
                            }
                            catch (NoSuchFieldError nosuchfielderror1) { }
                            try
                            {
                                a[com.snapchat.android.util.AlertDialogUtils.YesNoOption.b.ordinal()] = 3;
                            }
                            catch (NoSuchFieldError nosuchfielderror2)
                            {
                                return;
                            }
                        }
                    }

                    switch (_cls3.a[yesnooption.ordinal()])
                    {
                    default:
                        throw new IllegalStateException("Illegal dialog option");

                    case 1: // '\001'
                        UserPrefs.w(false);
                        ConfirmSaveStoryToGalleryDialog.a(a);
                        // fall through

                    case 3: // '\003'
                        return;

                    case 2: // '\002'
                        ConfirmSaveStoryToGalleryDialog.a(a);
                        break;
                    }
                }

            
            {
                a = ConfirmSaveStoryToGalleryDialog.this;
                super();
            }
            });
            return;
        } else
        {
            b();
            return;
        }
    }
}
