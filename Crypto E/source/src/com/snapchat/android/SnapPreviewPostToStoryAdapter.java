// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.snapchat.android.database.HasSeenPostToOurStoryDialogLog;
import com.snapchat.android.model.MyPostToStory;
import com.snapchat.android.model.PostToStory;
import com.snapchat.android.ui.dialog.PostToOurStoryDialog;
import java.util.List;

// Referenced classes of package com.snapchat.android:
//            SnapchatApplication

public class SnapPreviewPostToStoryAdapter extends ArrayAdapter
{
    public static interface PostToStoryCheckedCallback
    {

        public abstract void a(PostToStory posttostory, boolean flag);

        public abstract boolean a(PostToStory posttostory);
    }


    protected HasSeenPostToOurStoryDialogLog a;
    private List b;
    private Context c;
    private LayoutInflater d;
    private PostToStoryCheckedCallback e;

    public SnapPreviewPostToStoryAdapter(Context context, int i, List list, PostToStoryCheckedCallback posttostorycheckedcallback)
    {
        super(context, i, list);
        SnapchatApplication.e().a(this);
        b = list;
        d = (LayoutInflater)context.getSystemService("layout_inflater");
        c = context;
        e = posttostorycheckedcallback;
    }

    static Context a(SnapPreviewPostToStoryAdapter snappreviewposttostoryadapter)
    {
        return snappreviewposttostoryadapter.c;
    }

    private void a(View view, PostToStory posttostory)
    {
        ((TextView)view.findViewById(0x7f0a004c)).setText(posttostory.d());
    }

    static void a(SnapPreviewPostToStoryAdapter snappreviewposttostoryadapter, View view, PostToStory posttostory)
    {
        snappreviewposttostoryadapter.c(view, posttostory);
    }

    static PostToStoryCheckedCallback b(SnapPreviewPostToStoryAdapter snappreviewposttostoryadapter)
    {
        return snappreviewposttostoryadapter.e;
    }

    private void b(View view, PostToStory posttostory)
    {
        CheckBox checkbox = (CheckBox)view.findViewById(0x7f0a0169);
        checkbox.setOnCheckedChangeListener(null);
        checkbox.setChecked(e.a(posttostory));
        checkbox.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener(posttostory, checkbox, view) {

            final PostToStory a;
            final CheckBox b;
            final View c;
            final SnapPreviewPostToStoryAdapter d;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                if (flag && !(a instanceof MyPostToStory) && !d.a.a(a.c()))
                {
                    (new PostToOurStoryDialog(SnapPreviewPostToStoryAdapter.a(d), a, new com.snapchat.android.ui.dialog.PostToOurStoryDialog.PostToStoryDialogCallback(this) {

                        final _cls1 a;

                        public void a(boolean flag)
                        {
                            a.b.setChecked(flag);
                            if (flag)
                            {
                                a.d.a.b(a.a.c());
                            }
                        }

            
            {
                a = _pcls1;
                super();
            }
                    })).show();
                }
                SnapPreviewPostToStoryAdapter.b(d).a(a, flag);
                SnapPreviewPostToStoryAdapter.a(d, c, a);
            }

            
            {
                d = SnapPreviewPostToStoryAdapter.this;
                a = posttostory;
                b = checkbox;
                c = view;
                super();
            }
        });
        view.setOnClickListener(new android.view.View.OnClickListener(checkbox) {

            final CheckBox a;
            final SnapPreviewPostToStoryAdapter b;

            public void onClick(View view1)
            {
                CheckBox checkbox1 = a;
                boolean flag;
                if (!a.isChecked())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                checkbox1.setChecked(flag);
            }

            
            {
                b = SnapPreviewPostToStoryAdapter.this;
                a = checkbox;
                super();
            }
        });
    }

    private void c(View view, PostToStory posttostory)
    {
        if (!(posttostory instanceof MyPostToStory))
        {
            view.setBackgroundColor(getContext().getResources().getColor(0x7f080044));
            return;
        }
        if (e.a(posttostory))
        {
            view.setBackgroundColor(getContext().getResources().getColor(0x7f080043));
            return;
        } else
        {
            view.setBackgroundDrawable(null);
            return;
        }
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = d.inflate(0x7f04006d, viewgroup, false);
        }
        if (view == null)
        {
            throw new NullPointerException();
        }
        PostToStory posttostory = (PostToStory)b.get(i);
        if (posttostory != null)
        {
            a(view, posttostory);
            b(view, posttostory);
            c(view, posttostory);
        }
        return view;
    }
}
